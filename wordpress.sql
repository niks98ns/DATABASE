-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 09, 2020 at 03:34 PM
-- Server version: 5.7.29
-- PHP Version: 7.3.15-3+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
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

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
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
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'wordpress', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'nikhilsharma.hmsadroit@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:33:"classic-editor/classic-editor.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:72:"/var/www/html/wordpress/wp-content/themes/twentyseventeenchild/style.css";i:2;s:0:"";}', 'no'),
(40, 'template', 'twentyseventeenchild', 'yes'),
(41, 'stylesheet', 'twentyseventeenchild', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:33:"classic-editor/classic-editor.php";a:2:{i:0;s:14:"Classic_Editor";i:1;s:9:"uninstall";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '5', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-1";a:0:{}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(111, 'cron', 'a:6:{i:1584414668;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1584429067;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1584429068;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1584429074;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1584429077;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(113, 'recovery_keys', 'a:0:{}', 'yes'),
(115, 'theme_mods_twentynineteen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1567408363;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(120, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1584414284;s:7:"checked";a:4:{s:14:"twentynineteen";s:3:"1.4";s:15:"twentyseventeen";s:3:"2.2";s:20:"twentyseventeenchild";s:5:"0.0.1";s:13:"twentysixteen";s:3:"2.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(126, 'can_compress_scripts', '0', 'no'),
(139, 'current_theme', 'Twenty Seventeen/Child Theme', 'yes'),
(140, 'theme_mods_twentyseventeenchild', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:8:"top-menu";i:2;}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(141, 'theme_switched', '', 'yes'),
(144, 'theme_mods_new theme', 'a:1:{s:18:"custom_css_post_id";i:-1;}', 'yes'),
(147, 'recovery_mode_email_last_sent', '1567409968', 'yes'),
(154, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(158, 'category_children', 'a:0:{}', 'yes'),
(185, 'recently_activated', 'a:0:{}', 'yes'),
(216, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:32:"nikhilsharma.hmsadroit@gmail.com";s:7:"version";s:5:"5.2.5";s:9:"timestamp";i:1578491498;}', 'no'),
(261, 'nonce_key', 'pH_2jtu+7@v&p8Q:#?S F_.&F9l7(;5s#tWuQ`w@uL)oo z7WgJ9VL43maLe0^tm', 'no'),
(262, 'nonce_salt', 'r;;U1z2Gkfo3UN,O*d /GYNw;7Y_Cxo@F,%yT&&N(=^rdE-+~ZGF(lIGUW7py>()', 'no'),
(304, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.3.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.3.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.3.2";s:7:"version";s:5:"5.3.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.3";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.3.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.3.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.3.2";s:7:"version";s:5:"5.3.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.3";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1584414280;s:15:"version_checked";s:5:"5.2.5";s:12:"translations";a:0:{}}', 'no'),
(435, '_site_transient_timeout_theme_roots', '1584416083', 'no'),
(436, '_site_transient_theme_roots', 'a:4:{s:14:"twentynineteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:20:"twentyseventeenchild";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(437, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1584414286;s:7:"checked";a:3:{s:19:"akismet/akismet.php";s:5:"4.1.2";s:33:"classic-editor/classic-editor.php";s:3:"1.5";s:9:"hello.php";s:5:"1.7.2";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":12:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.1.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.3.2";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:33:"classic-editor/classic-editor.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/classic-editor";s:4:"slug";s:14:"classic-editor";s:6:"plugin";s:33:"classic-editor/classic-editor.php";s:11:"new_version";s:3:"1.5";s:3:"url";s:45:"https://wordpress.org/plugins/classic-editor/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip";s:5:"icons";a:2:{s:2:"2x";s:67:"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671";s:2:"1x";s:67:"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671";}s:7:"banners";a:2:{s:2:"2x";s:70:"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671";s:2:"1x";s:69:"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:5:"1.7.2";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855";s:2:"1x";s:64:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855";}s:7:"banners";a:1:{s:2:"1x";s:66:"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855";}s:11:"banners_rtl";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1582884366:1'),
(4, 8, '_edit_lock', '1567485147:1'),
(5, 10, '_edit_lock', '1582783032:1'),
(7, 16, '_edit_lock', '1567429538:1'),
(8, 20, '_menu_item_type', 'post_type'),
(9, 20, '_menu_item_menu_item_parent', '0'),
(10, 20, '_menu_item_object_id', '16'),
(11, 20, '_menu_item_object', 'page'),
(12, 20, '_menu_item_target', ''),
(13, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(14, 20, '_menu_item_xfn', ''),
(15, 20, '_menu_item_url', ''),
(17, 21, '_menu_item_type', 'post_type'),
(18, 21, '_menu_item_menu_item_parent', '0'),
(19, 21, '_menu_item_object_id', '10'),
(20, 21, '_menu_item_object', 'page'),
(21, 21, '_menu_item_target', ''),
(22, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(23, 21, '_menu_item_xfn', ''),
(24, 21, '_menu_item_url', ''),
(26, 22, '_menu_item_type', 'post_type'),
(27, 22, '_menu_item_menu_item_parent', '0'),
(28, 22, '_menu_item_object_id', '8'),
(29, 22, '_menu_item_object', 'page'),
(30, 22, '_menu_item_target', ''),
(31, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(32, 22, '_menu_item_xfn', ''),
(33, 22, '_menu_item_url', ''),
(35, 23, '_menu_item_type', 'post_type'),
(36, 23, '_menu_item_menu_item_parent', '0'),
(37, 23, '_menu_item_object_id', '5'),
(38, 23, '_menu_item_object', 'page'),
(39, 23, '_menu_item_target', ''),
(40, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(41, 23, '_menu_item_xfn', ''),
(42, 23, '_menu_item_url', ''),
(48, 25, '_edit_lock', '1567417155:1'),
(50, 27, '_edit_lock', '1567417450:1'),
(52, 29, '_edit_lock', '1567428362:1'),
(57, 31, '_menu_item_type', 'taxonomy'),
(58, 31, '_menu_item_menu_item_parent', '0'),
(59, 31, '_menu_item_object_id', '3'),
(60, 31, '_menu_item_object', 'category'),
(61, 31, '_menu_item_target', ''),
(62, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(63, 31, '_menu_item_xfn', ''),
(64, 31, '_menu_item_url', ''),
(66, 33, '_wp_attached_file', '2019/09/pexels-photo-941693.jpeg'),
(67, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:432;s:4:"file";s:32:"2019/09/pexels-photo-941693.jpeg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"pexels-photo-941693-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"pexels-photo-941693-300x259.jpeg";s:5:"width";i:300;s:6:"height";i:259;s:9:"mime-type";s:10:"image/jpeg";}s:8:"smallest";a:4:{s:4:"file";s:32:"pexels-photo-941693-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(68, 35, '_wp_attached_file', '2019/09/pexels-photo-941693-1.jpeg'),
(69, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:432;s:4:"file";s:34:"2019/09/pexels-photo-941693-1.jpeg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"pexels-photo-941693-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"pexels-photo-941693-1-300x259.jpeg";s:5:"width";i:300;s:6:"height";i:259;s:9:"mime-type";s:10:"image/jpeg";}s:8:"smallest";a:4:{s:4:"file";s:34:"pexels-photo-941693-1-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(70, 37, '_wp_attached_file', '2019/09/screenshot.jpg'),
(71, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:540;s:4:"file";s:22:"2019/09/screenshot.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"screenshot-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"screenshot-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"screenshot-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:8:"smallest";a:4:{s:4:"file";s:22:"screenshot-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:7:"largest";a:4:{s:4:"file";s:22:"screenshot-800x540.jpg";s:5:"width";i:800;s:6:"height";i:540;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(72, 39, '_wp_attached_file', '2019/09/download.jpeg'),
(73, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:299;s:6:"height";i:168;s:4:"file";s:21:"2019/09/download.jpeg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"download-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(74, 42, '_wp_attached_file', '2019/09/screenshot-1.jpg'),
(75, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:540;s:4:"file";s:24:"2019/09/screenshot-1.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"screenshot-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"screenshot-1-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"screenshot-1-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:8:"smallest";a:4:{s:4:"file";s:24:"screenshot-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:7:"largest";a:4:{s:4:"file";s:24:"screenshot-1-800x540.jpg";s:5:"width";i:800;s:6:"height";i:540;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(76, 29, '_edit_last', '1'),
(77, 29, '_thumbnail_id', '37'),
(80, 45, '_edit_last', '1'),
(81, 45, '_edit_lock', '1567487402:1'),
(82, 45, '_thumbnail_id', '39'),
(85, 16, '_edit_last', '1'),
(86, 5, '_edit_last', '1'),
(87, 5, '_thumbnail_id', '35'),
(88, 50, '_wp_attached_file', '2019/09/img-03.jpg'),
(89, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:598;s:6:"height";i:750;s:4:"file";s:18:"2019/09/img-03.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"img-03-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"img-03-239x300.jpg";s:5:"width";i:239;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:8:"smallest";a:4:{s:4:"file";s:18:"img-03-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(90, 53, '_wp_attached_file', '2019/09/temp.png'),
(91, 53, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:335;s:6:"height";i:186;s:4:"file";s:16:"2019/09/temp.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"temp-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:16:"temp-300x167.png";s:5:"width";i:300;s:6:"height";i:167;s:9:"mime-type";s:9:"image/png";}s:8:"smallest";a:4:{s:4:"file";s:16:"temp-300x186.png";s:5:"width";i:300;s:6:"height";i:186;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(92, 8, '_edit_last', '1'),
(94, 57, '_wp_attached_file', '2019/09/download-1.jpeg'),
(95, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:273;s:6:"height";i:185;s:4:"file";s:23:"2019/09/download-1.jpeg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"download-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(96, 60, '_wp_attached_file', '2019/09/images.jpeg'),
(97, 60, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:225;s:6:"height";i:225;s:4:"file";s:19:"2019/09/images.jpeg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"images-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
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
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2019-09-02 07:11:06', '2019-09-02 07:11:06', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://localhost/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-09-02 07:11:06', '2019-09-02 07:11:06', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-09-02 07:11:06', '2019-09-02 07:11:06', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-09-02 07:11:06', '2019-09-02 07:11:06', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-09-02 07:23:39', '2019-09-02 07:23:39', '<!-- wp:paragraph -->\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:image {"id":37} -->\r\n<figure class="wp-block-image"><img class="wp-image-37" src="http://localhost/wordpress/wp-content/uploads/2019/09/screenshot.jpg" alt="" /></figure>\r\n<!-- /wp:image -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n<p><img class="alignnone size-medium wp-image-35 aligncenter" src="http://localhost/wordpress/wp-content/uploads/2019/09/pexels-photo-941693-1-300x259.jpeg" alt="" width="300" height="259" /><!--more--></p>\r\n<!-- /wp:paragraph -->', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-09-02 13:13:42', '2019-09-02 13:13:42', '', 0, 'http://localhost/wordpress/?page_id=5', 0, 'page', '', 0),
(6, 1, '2019-09-02 07:23:39', '2019-09-02 07:23:39', '<!-- wp:paragraph {"backgroundColor":"pale-cyan-blue"} -->\n<p class="has-background has-pale-cyan-blue-background-color"><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-09-02 07:23:39', '2019-09-02 07:23:39', '', 5, 'http://localhost/wordpress/index.php/2019/09/02/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2019-09-02 07:33:17', '2019-09-02 07:33:17', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-09-02 07:33:17', '2019-09-02 07:33:17', '', 5, 'http://localhost/wordpress/index.php/2019/09/02/5-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2019-09-02 07:34:15', '2019-09-02 07:34:15', '<!-- wp:paragraph -->\r\n<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>\r\n<p><!-- /wp:paragraph --></p>\r\n<p><!--more--></p>\r\n<p><img class="aligncenter size-full wp-image-60" src="http://localhost/wordpress/wp-content/uploads/2019/09/images.jpeg" alt="" width="225" height="225" /></p>\r\n<p>&nbsp;</p>', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2019-09-03 04:34:16', '2019-09-03 04:34:16', '', 0, 'http://localhost/wordpress/?page_id=8', 0, 'page', '', 0),
(9, 1, '2019-09-02 07:34:15', '2019-09-02 07:34:15', '<!-- wp:paragraph -->\n<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."<br></p>\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-09-02 07:34:15', '2019-09-02 07:34:15', '', 8, 'http://localhost/wordpress/index.php/2019/09/02/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2019-09-02 07:35:18', '2019-09-02 07:35:18', '<!-- wp:paragraph {"backgroundColor":"pale-cyan-blue"} -->\n<p class="has-background has-pale-cyan-blue-background-color">"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?"</p>\n<!-- /wp:paragraph -->', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2019-09-02 07:35:18', '2019-09-02 07:35:18', '', 0, 'http://localhost/wordpress/?page_id=10', 0, 'page', '', 0),
(11, 1, '2019-09-02 07:35:18', '2019-09-02 07:35:18', '<!-- wp:paragraph {"backgroundColor":"pale-cyan-blue"} -->\n<p class="has-background has-pale-cyan-blue-background-color">"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?"</p>\n<!-- /wp:paragraph -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-09-02 07:35:18', '2019-09-02 07:35:18', '', 10, 'http://localhost/wordpress/index.php/2019/09/02/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2019-09-02 07:39:11', '2019-09-02 07:39:11', '<!-- wp:paragraph {"backgroundColor":"pale-cyan-blue"} -->\n<p class="has-background has-pale-cyan-blue-background-color">"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {"ids":[]} -->\n<ul class="wp-block-gallery columns-0 is-cropped"></ul>\n<!-- /wp:gallery -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '10-autosave-v1', '', '', '2019-09-02 07:39:11', '2019-09-02 07:39:11', '', 10, 'http://localhost/wordpress/index.php/2019/09/02/10-autosave-v1/', 0, 'revision', '', 0),
(13, 1, '2019-09-03 04:32:56', '2019-09-03 04:32:56', '<!-- wp:paragraph -->\n<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>\n<p><!-- /wp:paragraph --></p>\n<p><!--more--></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', 'About Us', '', 'inherit', 'closed', 'closed', '', '8-autosave-v1', '', '', '2019-09-03 04:32:56', '2019-09-03 04:32:56', '', 8, 'http://localhost/wordpress/index.php/2019/09/02/8-autosave-v1/', 0, 'revision', '', 0),
(16, 1, '2019-09-02 09:09:19', '2019-09-02 09:09:19', '<!-- wp:paragraph {"backgroundColor":"vivid-cyan-blue","fontSize":"huge"} -->\r\n<p class="has-background has-huge-font-size has-vivid-cyan-blue-background-color">Wordpress</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:gallery {"ids":[39]} -->\r\n<ul class="wp-block-gallery columns-1 is-cropped">\r\n<li class="blocks-gallery-item">\r\n<figure><img class="wp-image-39" src="http://localhost/wordpress/wp-content/uploads/2019/09/download.jpeg" alt="" data-id="39" data-link="http://localhost/wordpress/index.php/welcome-to-my-cool-website/download/" /></figure>\r\n</li>\r\n</ul>\r\n<!-- /wp:gallery -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. gf</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:gallery {"ids":[42]} -->\r\n<ul class="wp-block-gallery columns-1 is-cropped">\r\n<li class="blocks-gallery-item">\r\n<figure><img class="wp-image-42" src="http://localhost/wordpress/wp-content/uploads/2019/09/screenshot-1.jpg" alt="" data-id="42" data-link="http://localhost/wordpress/index.php/welcome-to-my-cool-website/screenshot-1/" /></figure>\r\n</li>\r\n</ul>\r\n<!-- /wp:gallery -->', 'MY Website', '', 'publish', 'closed', 'closed', '', 'welcome-to-my-cool-website', '', '', '2019-09-02 13:02:18', '2019-09-02 13:02:18', '', 0, 'http://localhost/wordpress/?page_id=16', 0, 'page', '', 0),
(17, 1, '2019-09-02 09:09:19', '2019-09-02 09:09:19', '', 'Welcome To MY Cool Website', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-09-02 09:09:19', '2019-09-02 09:09:19', '', 16, 'http://localhost/wordpress/index.php/2019/09/02/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2019-09-02 09:14:23', '2019-09-02 09:14:23', '<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->', 'Welcome To MY Cool Website', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-09-02 09:14:23', '2019-09-02 09:14:23', '', 16, 'http://localhost/wordpress/index.php/2019/09/02/16-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2019-09-02 09:21:30', '2019-09-02 09:21:30', '<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->', 'Welcome To MY Cool Website', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-09-02 09:21:30', '2019-09-02 09:21:30', '', 16, 'http://localhost/wordpress/index.php/2019/09/02/16-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2019-09-02 09:26:06', '2019-09-02 09:26:06', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2019-09-02 09:55:47', '2019-09-02 09:55:47', '', 0, 'http://localhost/wordpress/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2019-09-02 09:26:07', '2019-09-02 09:26:07', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2019-09-02 09:55:47', '2019-09-02 09:55:47', '', 0, 'http://localhost/wordpress/?p=21', 3, 'nav_menu_item', '', 0),
(22, 1, '2019-09-02 09:26:07', '2019-09-02 09:26:07', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2019-09-02 09:55:47', '2019-09-02 09:55:47', '', 0, 'http://localhost/wordpress/?p=22', 4, 'nav_menu_item', '', 0),
(23, 1, '2019-09-02 09:26:06', '2019-09-02 09:26:06', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2019-09-02 09:55:47', '2019-09-02 09:55:47', '', 0, 'http://localhost/wordpress/?p=23', 2, 'nav_menu_item', '', 0),
(25, 1, '2019-09-02 09:31:20', '2019-09-02 09:31:20', '<!-- wp:paragraph {"backgroundColor":"pale-cyan-blue"} -->\n<p class="has-background has-pale-cyan-blue-background-color">"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {"ids":[]} -->\n<ul class="wp-block-gallery columns-0 is-cropped"></ul>\n<!-- /wp:gallery -->', 'Post One', '', 'publish', 'open', 'open', '', 'post-one', '', '', '2019-09-02 09:36:55', '2019-09-02 09:36:55', '', 0, 'http://localhost/wordpress/?p=25', 0, 'post', '', 0),
(26, 1, '2019-09-02 09:31:20', '2019-09-02 09:31:20', '<!-- wp:paragraph {"backgroundColor":"pale-cyan-blue"} -->\n<p class="has-background has-pale-cyan-blue-background-color">"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {"ids":[]} -->\n<ul class="wp-block-gallery columns-0 is-cropped"></ul>\n<!-- /wp:gallery -->', 'Post One', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2019-09-02 09:31:20', '2019-09-02 09:31:20', '', 25, 'http://localhost/wordpress/index.php/2019/09/02/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2019-09-02 09:32:00', '2019-09-02 09:32:00', '<!-- wp:paragraph {"backgroundColor":"cyan-bluish-gray"} -->\n<p class="has-background has-cyan-bluish-gray-background-color"><em>Lorem ipsum</em>, or&nbsp;<em>lipsum</em>&nbsp;as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book.</p>\n<!-- /wp:paragraph -->', 'Post Two', '', 'publish', 'open', 'open', '', 'post-two', '', '', '2019-09-02 09:36:31', '2019-09-02 09:36:31', '', 0, 'http://localhost/wordpress/?p=27', 0, 'post', '', 0),
(28, 1, '2019-09-02 09:32:00', '2019-09-02 09:32:00', '<!-- wp:paragraph {"backgroundColor":"cyan-bluish-gray"} -->\n<p class="has-background has-cyan-bluish-gray-background-color"><em>Lorem ipsum</em>, or&nbsp;<em>lipsum</em>&nbsp;as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book.</p>\n<!-- /wp:paragraph -->', 'Post Two', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2019-09-02 09:32:00', '2019-09-02 09:32:00', '', 27, 'http://localhost/wordpress/index.php/2019/09/02/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2019-09-02 09:33:12', '2019-09-02 09:33:12', '<!-- wp:paragraph {"textColor":"pale-cyan-blue"} -->\r\n<p class="has-text-color has-pale-cyan-blue-color"><em>Lorem Ipsum</em>: usage <em>Lorem ipsum</em> is a pseudo-Latin text used in web design, typography, layout, and printing in place of English to emphasise design elements over content. It\'s also called placeholder (or filler) text. It\'s a convenient tool for mock-ups</p>\r\n<!-- /wp:paragraph -->', 'Post Three', '', 'publish', 'open', 'open', '', 'post-three', '', '', '2019-09-02 12:24:22', '2019-09-02 12:24:22', '', 0, 'http://localhost/wordpress/?p=29', 0, 'post', '', 0),
(30, 1, '2019-09-02 09:33:12', '2019-09-02 09:33:12', '<!-- wp:paragraph {"textColor":"pale-cyan-blue"} -->\n<p class="has-text-color has-pale-cyan-blue-color"><em>Lorem Ipsum</em>: usage&nbsp;<em>Lorem ipsum</em>&nbsp;is a pseudo-Latin text used in web design, typography, layout, and printing in place of English to emphasise design elements over content. It\'s also called placeholder (or filler) text. It\'s a convenient tool for mock-ups</p>\n<!-- /wp:paragraph -->', 'Post Three', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2019-09-02 09:33:12', '2019-09-02 09:33:12', '', 29, 'http://localhost/wordpress/index.php/2019/09/02/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2019-09-02 09:55:47', '2019-09-02 09:55:47', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2019-09-02 09:55:47', '2019-09-02 09:55:47', '', 0, 'http://localhost/wordpress/?p=31', 5, 'nav_menu_item', '', 0),
(32, 1, '2019-09-02 10:00:26', '2019-09-02 10:00:26', '<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->', 'MY Website', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-09-02 10:00:26', '2019-09-02 10:00:26', '', 16, 'http://localhost/wordpress/index.php/2019/09/02/16-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2019-09-02 10:13:07', '2019-09-02 10:13:07', '', 'pexels-photo-941693', '', 'inherit', 'open', 'closed', '', 'pexels-photo-941693', '', '', '2019-09-02 10:13:07', '2019-09-02 10:13:07', '', 16, 'http://localhost/wordpress/wp-content/uploads/2019/09/pexels-photo-941693.jpeg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2019-09-02 10:40:10', '2019-09-02 10:40:10', '<!-- wp:gallery -->\n<ul class="wp-block-gallery columns-0 is-cropped"></ul>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->', 'MY Website', '', 'inherit', 'closed', 'closed', '', '16-autosave-v1', '', '', '2019-09-02 10:40:10', '2019-09-02 10:40:10', '', 16, 'http://localhost/wordpress/index.php/2019/09/02/16-autosave-v1/', 0, 'revision', '', 0),
(35, 1, '2019-09-02 10:37:51', '2019-09-02 10:37:51', '', 'pexels-photo-941693-1', '', 'inherit', 'open', 'closed', '', 'pexels-photo-941693-1', '', '', '2019-09-02 10:37:51', '2019-09-02 10:37:51', '', 5, 'http://localhost/wordpress/wp-content/uploads/2019/09/pexels-photo-941693-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2019-09-02 10:37:54', '2019-09-02 10:37:54', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {"ids":[35]} -->\n<ul class="wp-block-gallery columns-1 is-cropped"><li class="blocks-gallery-item"><figure><img src="http://localhost/wordpress/wp-content/uploads/2019/09/pexels-photo-941693-1.jpeg" alt="" data-id="35" data-link="http://localhost/wordpress/index.php/home/pexels-photo-941693-1/" class="wp-image-35"/></figure></li></ul>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-09-02 10:37:54', '2019-09-02 10:37:54', '', 5, 'http://localhost/wordpress/index.php/2019/09/02/5-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2019-09-02 10:38:38', '2019-09-02 10:38:38', '', 'screenshot', '', 'inherit', 'open', 'closed', '', 'screenshot', '', '', '2019-09-02 10:38:38', '2019-09-02 10:38:38', '', 5, 'http://localhost/wordpress/wp-content/uploads/2019/09/screenshot.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2019-09-02 10:38:43', '2019-09-02 10:38:43', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {"id":37} -->\n<figure class="wp-block-image"><img src="http://localhost/wordpress/wp-content/uploads/2019/09/screenshot.jpg" alt="" class="wp-image-37"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-09-02 10:38:43', '2019-09-02 10:38:43', '', 5, 'http://localhost/wordpress/index.php/2019/09/02/5-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2019-09-02 10:43:06', '2019-09-02 10:43:06', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2019-09-02 10:43:06', '2019-09-02 10:43:06', '', 16, 'http://localhost/wordpress/wp-content/uploads/2019/09/download.jpeg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2019-09-02 10:43:09', '2019-09-02 10:43:09', '<!-- wp:gallery {"ids":[39]} -->\n<ul class="wp-block-gallery columns-1 is-cropped"><li class="blocks-gallery-item"><figure><img src="http://localhost/wordpress/wp-content/uploads/2019/09/download.jpeg" alt="" data-id="39" data-link="http://localhost/wordpress/index.php/welcome-to-my-cool-website/download/" class="wp-image-39"/></figure></li></ul>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->', 'MY Website', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-09-02 10:43:09', '2019-09-02 10:43:09', '', 16, 'http://localhost/wordpress/index.php/2019/09/02/16-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2019-09-02 10:44:09', '2019-09-02 10:44:09', '<!-- wp:paragraph {"backgroundColor":"vivid-cyan-blue","fontSize":"huge"} -->\n<p class="has-background has-huge-font-size has-vivid-cyan-blue-background-color">Wordpress</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {"ids":[39]} -->\n<ul class="wp-block-gallery columns-1 is-cropped"><li class="blocks-gallery-item"><figure><img src="http://localhost/wordpress/wp-content/uploads/2019/09/download.jpeg" alt="" data-id="39" data-link="http://localhost/wordpress/index.php/welcome-to-my-cool-website/download/" class="wp-image-39"/></figure></li></ul>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->', 'MY Website', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-09-02 10:44:09', '2019-09-02 10:44:09', '', 16, 'http://localhost/wordpress/index.php/2019/09/02/16-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2019-09-02 10:44:52', '2019-09-02 10:44:52', '', 'screenshot-1', '', 'inherit', 'open', 'closed', '', 'screenshot-1', '', '', '2019-09-02 10:44:52', '2019-09-02 10:44:52', '', 16, 'http://localhost/wordpress/wp-content/uploads/2019/09/screenshot-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2019-09-02 10:44:57', '2019-09-02 10:44:57', '<!-- wp:paragraph {"backgroundColor":"vivid-cyan-blue","fontSize":"huge"} -->\n<p class="has-background has-huge-font-size has-vivid-cyan-blue-background-color">Wordpress</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {"ids":[39]} -->\n<ul class="wp-block-gallery columns-1 is-cropped"><li class="blocks-gallery-item"><figure><img src="http://localhost/wordpress/wp-content/uploads/2019/09/download.jpeg" alt="" data-id="39" data-link="http://localhost/wordpress/index.php/welcome-to-my-cool-website/download/" class="wp-image-39"/></figure></li></ul>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {"ids":[42]} -->\n<ul class="wp-block-gallery columns-1 is-cropped"><li class="blocks-gallery-item"><figure><img src="http://localhost/wordpress/wp-content/uploads/2019/09/screenshot-1.jpg" alt="" data-id="42" data-link="http://localhost/wordpress/index.php/welcome-to-my-cool-website/screenshot-1/" class="wp-image-42"/></figure></li></ul>\n<!-- /wp:gallery -->', 'MY Website', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-09-02 10:44:57', '2019-09-02 10:44:57', '', 16, 'http://localhost/wordpress/index.php/2019/09/02/16-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-09-02 12:23:58', '2019-09-02 12:23:58', '<!-- wp:paragraph {"textColor":"pale-cyan-blue"} -->\r\n<p class="has-text-color has-pale-cyan-blue-color"><em>Lorem Ipsum</em>: usage <em>Lorem ipsum</em> is a pseudo-Latin text used in web design, typography, layout, and printing in place of English to emphasise design elements over content. It\'s also called placeholder (or filler) text. It\'s a convenient tool for mock-ups</p>\r\n<!-- /wp:paragraph -->', 'Post Three', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2019-09-02 12:23:58', '2019-09-02 12:23:58', '', 29, 'http://localhost/wordpress/?p=44', 0, 'revision', '', 0),
(45, 1, '2019-09-02 12:52:25', '2019-09-02 12:52:25', 'x cbvbcvxc czbnmfnbvxcbc  cxv\r\n\r\nhfghsmfbdjgfdhdjkfhfvs mnzxchjsdds\r\n\r\ncddjhsdmdbvdnv\r\n\r\nfd,mfhdf,be\r\n\r\ndnf,dnf,fd\r\n\r\n,djfd.,fd\r\n\r\ng', 'Post Four', '', 'publish', 'open', 'open', '', 'post-four', '', '', '2019-09-02 12:54:44', '2019-09-02 12:54:44', '', 0, 'http://localhost/wordpress/?p=45', 0, 'post', '', 0),
(46, 1, '2019-09-02 12:52:25', '2019-09-02 12:52:25', 'x cbvbcvxc czbnmfnbvxcbc  cxv', 'Post Four', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-09-02 12:52:25', '2019-09-02 12:52:25', '', 45, 'http://localhost/wordpress/?p=46', 0, 'revision', '', 0),
(47, 1, '2019-09-02 12:54:44', '2019-09-02 12:54:44', 'x cbvbcvxc czbnmfnbvxcbc  cxv\r\n\r\nhfghsmfbdjgfdhdjkfhfvs mnzxchjsdds\r\n\r\ncddjhsdmdbvdnv\r\n\r\nfd,mfhdf,be\r\n\r\ndnf,dnf,fd\r\n\r\n,djfd.,fd\r\n\r\ng', 'Post Four', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-09-02 12:54:44', '2019-09-02 12:54:44', '', 45, 'http://localhost/wordpress/?p=47', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(48, 1, '2019-09-02 13:02:18', '2019-09-02 13:02:18', '<!-- wp:paragraph {"backgroundColor":"vivid-cyan-blue","fontSize":"huge"} -->\r\n<p class="has-background has-huge-font-size has-vivid-cyan-blue-background-color">Wordpress</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:gallery {"ids":[39]} -->\r\n<ul class="wp-block-gallery columns-1 is-cropped">\r\n<li class="blocks-gallery-item">\r\n<figure><img class="wp-image-39" src="http://localhost/wordpress/wp-content/uploads/2019/09/download.jpeg" alt="" data-id="39" data-link="http://localhost/wordpress/index.php/welcome-to-my-cool-website/download/" /></figure>\r\n</li>\r\n</ul>\r\n<!-- /wp:gallery -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. gf</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:gallery {"ids":[42]} -->\r\n<ul class="wp-block-gallery columns-1 is-cropped">\r\n<li class="blocks-gallery-item">\r\n<figure><img class="wp-image-42" src="http://localhost/wordpress/wp-content/uploads/2019/09/screenshot-1.jpg" alt="" data-id="42" data-link="http://localhost/wordpress/index.php/welcome-to-my-cool-website/screenshot-1/" /></figure>\r\n</li>\r\n</ul>\r\n<!-- /wp:gallery -->', 'MY Website', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-09-02 13:02:18', '2019-09-02 13:02:18', '', 16, 'http://localhost/wordpress/?p=48', 0, 'revision', '', 0),
(49, 1, '2019-09-02 13:09:21', '2019-09-02 13:09:21', '<!-- wp:paragraph -->\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:image {"id":37} -->\r\n<figure class="wp-block-image"><img class="wp-image-37" src="http://localhost/wordpress/wp-content/uploads/2019/09/screenshot.jpg" alt="" /></figure>\r\n<!-- /wp:image -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n<p>&nbsp;</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n<p><img class="alignnone size-full wp-image-39" src="http://localhost/wordpress/wp-content/uploads/2019/09/download.jpeg" alt="" width="299" height="168" /></p>\r\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-09-02 13:09:21', '2019-09-02 13:09:21', '', 5, 'http://localhost/wordpress/?p=49', 0, 'revision', '', 0),
(50, 1, '2019-09-02 13:10:06', '2019-09-02 13:10:06', '', 'img-03', '', 'inherit', 'open', 'closed', '', 'img-03', '', '', '2019-09-02 13:10:06', '2019-09-02 13:10:06', '', 5, 'http://localhost/wordpress/wp-content/uploads/2019/09/img-03.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2019-09-02 13:10:14', '2019-09-02 13:10:14', '<!-- wp:paragraph -->\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:image {"id":37} -->\r\n<figure class="wp-block-image"><img class="wp-image-37" src="http://localhost/wordpress/wp-content/uploads/2019/09/screenshot.jpg" alt="" /></figure>\r\n<!-- /wp:image -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n<p><img class="alignnone size-medium wp-image-50" src="http://localhost/wordpress/wp-content/uploads/2019/09/img-03-239x300.jpg" alt="" width="239" height="300" /></p>\r\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-09-02 13:10:14', '2019-09-02 13:10:14', '', 5, 'http://localhost/wordpress/?p=51', 0, 'revision', '', 0),
(52, 1, '2019-09-02 13:10:50', '2019-09-02 13:10:50', '<!-- wp:paragraph -->\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:image {"id":37} -->\r\n<figure class="wp-block-image"><img class="wp-image-37" src="http://localhost/wordpress/wp-content/uploads/2019/09/screenshot.jpg" alt="" /></figure>\r\n<!-- /wp:image -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n<p><img class="alignnone size-medium wp-image-35 aligncenter" src="http://localhost/wordpress/wp-content/uploads/2019/09/pexels-photo-941693-1-300x259.jpeg" alt="" width="300" height="259" /><!--more--></p>\r\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-09-02 13:10:50', '2019-09-02 13:10:50', '', 5, 'http://localhost/wordpress/?p=52', 0, 'revision', '', 0),
(53, 1, '2019-09-03 04:27:27', '2019-09-03 04:27:27', '', 'temp', '', 'inherit', 'open', 'closed', '', 'temp', '', '', '2019-09-03 04:27:27', '2019-09-03 04:27:27', '', 8, 'http://localhost/wordpress/wp-content/uploads/2019/09/temp.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2019-09-03 04:27:37', '2019-09-03 04:27:37', '<!-- wp:paragraph -->\r\n<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>\r\n<p><!-- /wp:paragraph --></p>\r\n<p><!--more--></p>\r\n<p>&nbsp;</p>', 'About Us', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-09-03 04:27:37', '2019-09-03 04:27:37', '', 8, 'http://localhost/wordpress/?p=54', 0, 'revision', '', 0),
(55, 1, '2019-09-03 04:28:10', '2019-09-03 04:28:10', '<!-- wp:paragraph -->\r\n<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>\r\n<p><!-- /wp:paragraph --></p>\r\n<p><!--more--></p>\r\n<p><img class="alignnone size-full wp-image-53" src="http://localhost/wordpress/wp-content/uploads/2019/09/temp.png" alt="" width="335" height="186" /></p>', 'About Us', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-09-03 04:28:10', '2019-09-03 04:28:10', '', 8, 'http://localhost/wordpress/?p=55', 0, 'revision', '', 0),
(56, 1, '2019-09-03 04:29:23', '2019-09-03 04:29:23', '<!-- wp:paragraph -->\r\n<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>\r\n<p><!-- /wp:paragraph --></p>\r\n<p><!--more--></p>\r\n<p><img class="aligncenter wp-image-53" src="http://localhost/wordpress/wp-content/uploads/2019/09/temp.png" alt="" width="551" height="306" /></p>', 'About Us', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-09-03 04:29:23', '2019-09-03 04:29:23', '', 8, 'http://localhost/wordpress/?p=56', 0, 'revision', '', 0),
(57, 1, '2019-09-03 04:31:05', '2019-09-03 04:31:05', '', 'download (1)', '', 'inherit', 'open', 'closed', '', 'download-1', '', '', '2019-09-03 04:31:05', '2019-09-03 04:31:05', '', 8, 'http://localhost/wordpress/wp-content/uploads/2019/09/download-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2019-09-03 04:31:25', '2019-09-03 04:31:25', '<!-- wp:paragraph -->\r\n<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>\r\n<p><!-- /wp:paragraph --></p>\r\n<p><!--more--></p>\r\n<p><img class="aligncenter size-full wp-image-57" src="http://localhost/wordpress/wp-content/uploads/2019/09/download-1.jpeg" alt="" width="273" height="185" /></p>\r\n<p>&nbsp;</p>', 'About Us', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-09-03 04:31:25', '2019-09-03 04:31:25', '', 8, 'http://localhost/wordpress/?p=58', 0, 'revision', '', 0),
(59, 1, '2019-09-03 04:31:54', '2019-09-03 04:31:54', '<!-- wp:paragraph -->\r\n<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>\r\n<p><!-- /wp:paragraph --></p>\r\n<p><!--more--></p>\r\n<p><img class="aligncenter  wp-image-57" src="http://localhost/wordpress/wp-content/uploads/2019/09/download-1.jpeg" alt="" width="708" height="480" /></p>\r\n<p>&nbsp;</p>', 'About Us', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-09-03 04:31:54', '2019-09-03 04:31:54', '', 8, 'http://localhost/wordpress/?p=59', 0, 'revision', '', 0),
(60, 1, '2019-09-03 04:33:55', '2019-09-03 04:33:55', '', 'images', '', 'inherit', 'open', 'closed', '', 'images', '', '', '2019-09-03 04:33:55', '2019-09-03 04:33:55', '', 8, 'http://localhost/wordpress/wp-content/uploads/2019/09/images.jpeg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2019-09-03 04:34:16', '2019-09-03 04:34:16', '<!-- wp:paragraph -->\r\n<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>\r\n<p><!-- /wp:paragraph --></p>\r\n<p><!--more--></p>\r\n<p><img class="aligncenter size-full wp-image-60" src="http://localhost/wordpress/wp-content/uploads/2019/09/images.jpeg" alt="" width="225" height="225" /></p>\r\n<p>&nbsp;</p>', 'About Us', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-09-03 04:34:16', '2019-09-03 04:34:16', '', 8, 'http://localhost/wordpress/?p=61', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Top Menu', 'top-menu', 0),
(3, 'Blog', 'blog', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(20, 2, 0),
(21, 2, 0),
(22, 2, 0),
(23, 2, 0),
(25, 3, 0),
(27, 3, 0),
(29, 3, 0),
(31, 2, 0),
(45, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
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
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'category', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:4:{s:64:"fb458c98e095a7ff2792008ad716fbde5d34031a12b351d6c06a463fe68fd7e3";a:4:{s:10:"expiration";i:1582877201;s:2:"ip";s:3:"::1";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36";s:5:"login";i:1582704401;}s:64:"520236d73d691ec1af01c41ab11bf89c1e4e22a360e6d2084ad1b131383382cb";a:4:{s:10:"expiration";i:1582948964;s:2:"ip";s:3:"::1";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36";s:5:"login";i:1582776164;}s:64:"c230990410adb8bd01be9662e2264cdaea55bfb5da1a944c3b343865e5d12349";a:4:{s:10:"expiration";i:1583044299;s:2:"ip";s:3:"::1";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36";s:5:"login";i:1582871499;}s:64:"8cab818fa1bf35f5873003bfac53ba6086048ddbffe0cdd7dd8e209f7947a1fa";a:4:{s:10:"expiration";i:1583044302;s:2:"ip";s:3:"::1";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36";s:5:"login";i:1582871502;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '62'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&hidetb=0&editor=tinymce&post_dfw=off&imgsize=full&align=center&mfold=o'),
(21, 1, 'wp_user-settings-time', '1582625449'),
(22, 1, 'wp_media_library_mode', 'grid'),
(23, 1, 'nav_menu_recently_edited', '2'),
(24, 1, 'closedpostboxes_page', 'a:0:{}'),
(25, 1, 'metaboxhidden_page', 'a:6:{i:0;s:12:"revisionsdiv";i:1;s:10:"postcustom";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}'),
(26, 1, 'meta-box-order_page', 'a:3:{s:4:"side";s:36:"submitdiv,pageparentdiv,postimagediv";s:6:"normal";s:70:"revisionsdiv,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(27, 1, 'screen_layout_page', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
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
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$BgHSyf29LDNj07fv.8e0RNxsXozIt.1', 'root', 'nikhilsharma.hmsadroit@gmail.com', '', '2019-09-02 07:11:04', '', 0, 'root');

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
  ADD UNIQUE KEY `option_name` (`option_name`);

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
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=438;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
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
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
