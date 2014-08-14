-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 14, 2014 at 04:21 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `agil_one4one`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'http://wordpress.org/', '', '2014-08-13 08:31:39', '2014-08-13 08:31:39', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=185 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://webo4o', 'yes'),
(2, 'blogname', 'One4One', 'yes'),
(3, 'blogdescription', 'Just another WordPress site', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'dinh.thang303@gmail.com', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '1', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'F j, Y', 'yes'),
(23, 'time_format', 'g:i a', 'yes'),
(24, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(25, 'links_recently_updated_prepend', '<em>', 'yes'),
(26, 'links_recently_updated_append', '</em>', 'yes'),
(27, 'links_recently_updated_time', '120', 'yes'),
(28, 'comment_moderation', '0', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '/%postname%/', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:0:{}', 'yes'),
(36, 'home', 'http://webo4o', 'yes'),
(37, 'category_base', '', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(39, 'advanced_edit', '0', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '0', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', '', 'no'),
(44, 'template', 'one4one', 'yes'),
(45, 'stylesheet', 'one4one', 'yes'),
(46, 'comment_whitelist', '1', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '0', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '26692', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '1', 'yes'),
(56, 'default_link_category', '2', 'yes'),
(57, 'show_on_front', 'posts', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '1', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '300', 'yes'),
(66, 'medium_size_h', '300', 'yes'),
(67, 'avatar_default', 'mystery', 'yes'),
(68, 'large_size_w', '1024', 'yes'),
(69, 'large_size_h', '1024', 'yes'),
(70, 'image_default_link_type', 'file', 'yes'),
(71, 'image_default_size', '', 'yes'),
(72, 'image_default_align', '', 'yes'),
(73, 'close_comments_for_old_posts', '0', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '1', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '0', 'yes'),
(78, 'comments_per_page', '50', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'asc', 'yes'),
(81, 'sticky_posts', 'a:0:{}', 'yes'),
(82, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(83, 'widget_text', 'a:0:{}', 'yes'),
(84, 'widget_rss', 'a:0:{}', 'yes'),
(85, 'uninstall_plugins', 'a:0:{}', 'no'),
(86, 'timezone_string', '', 'yes'),
(87, 'page_for_posts', '0', 'yes'),
(88, 'page_on_front', '0', 'yes'),
(89, 'default_post_format', '0', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '26691', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:5:{i:1408043640;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1408048305;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1408092492;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1408093392;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(101, '_transient_random_seed', 'bea8ec9aa422044f2b3ac38c2db50b80', 'yes'),
(102, 'auth_key', '-VD!/)W@St*2XR]%1bhv{AqIW(oY@dT.9.3R+r!McN*Oh^F`z$s0c:_*)0^xX%/}', 'yes'),
(104, 'auth_salt', 'fp|V0&UBW8[v#V@nKUSf;My,<VZ?nwY@+y|4WjVV/;}AD-0OJ(Cujf^4Y`AU0}~Z', 'yes'),
(105, 'logged_in_key', '@&C0Kra0{^*3;dJ 7P%VLI)7nw*S0;Yg,.p9ZPw6Qy<03fP~t}i+cWx8.2CC6~?5', 'yes'),
(106, 'logged_in_salt', 'G&vI3[y<KeOGFY%Pt>oHx1*o$IXXU6#lW(CLzm QjBH_IQqq5+?`CBsKE#-EDmv:', 'yes'),
(111, 'nonce_key', 'VbEPZ<zZ7oF!@z8;n5/vM|P]qt=] &U9|V3R{SZ{MIifa<7BMA)avaz@uuWx{;rf', 'yes'),
(112, 'nonce_salt', '<%XH)x4|c|oQ_2&?V=jYH+6YCk`98~Lf6b]L.4T)>%6]`~ySGkYO.@~3)17(N|Oe', 'yes'),
(113, '_site_transient_timeout_browser_2f26ba3f927ba9dcb88d92136c041d46', '1408523524', 'yes'),
(114, '_site_transient_browser_2f26ba3f927ba9dcb88d92136c041d46', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"36.0.1985.125";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(128, '_transient_timeout_plugin_slugs', '1408017426', 'no'),
(129, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no'),
(133, '_transient_twentyfourteen_category_count', '1', 'yes'),
(135, 'theme_mods_twentyfourteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1407919797;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(136, 'current_theme', 'One4One', 'yes'),
(137, 'theme_mods_one4one', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}}', 'yes'),
(138, 'theme_switched', '', 'yes'),
(145, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(146, 'rewrite_rules', 'a:68:{s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(154, 'category_children', 'a:0:{}', 'yes'),
(167, 'recently_activated', 'a:1:{s:42:"search-autocomplete/searchautocomplete.php";i:1407931010;}', 'yes'),
(173, 'db_upgraded', '1', 'yes'),
(174, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-3.9.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-3.9.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-3.9.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-3.9.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"3.9.2";s:7:"version";s:5:"3.9.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-3.9.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-3.9.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-3.9.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-3.9.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"3.9.2";s:7:"version";s:5:"3.9.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1408007502;s:15:"version_checked";s:5:"3.8.4";s:12:"translations";a:0:{}}', 'yes'),
(177, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:23:"dinh.thang303@gmail.com";s:7:"version";s:5:"3.8.4";s:9:"timestamp";i:1408000084;}', 'yes'),
(180, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1408000467;s:7:"checked";a:4:{s:7:"one4one";s:3:"1.0";s:14:"twentyfourteen";s:3:"1.0";s:14:"twentythirteen";s:3:"1.1";s:12:"twentytwelve";s:3:"1.3";}s:8:"response";a:3:{s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.1";s:3:"url";s:43:"https://wordpress.org/themes/twentyfourteen";s:7:"package";s:60:"https://wordpress.org/themes/download/twentyfourteen.1.1.zip";}s:14:"twentythirteen";a:4:{s:5:"theme";s:14:"twentythirteen";s:11:"new_version";s:3:"1.2";s:3:"url";s:43:"https://wordpress.org/themes/twentythirteen";s:7:"package";s:60:"https://wordpress.org/themes/download/twentythirteen.1.2.zip";}s:12:"twentytwelve";a:4:{s:5:"theme";s:12:"twentytwelve";s:11:"new_version";s:3:"1.4";s:3:"url";s:41:"https://wordpress.org/themes/twentytwelve";s:7:"package";s:58:"https://wordpress.org/themes/download/twentytwelve.1.4.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(181, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1408007502;s:7:"checked";a:2:{s:19:"akismet/akismet.php";s:5:"2.5.9";s:9:"hello.php";s:3:"1.6";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.0.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.0.1.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(183, '_site_transient_timeout_theme_roots', '1408009304', 'yes'),
(184, '_site_transient_theme_roots', 'a:4:{s:7:"one4one";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=174 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1407920526:1'),
(4, 6, '_edit_last', '1'),
(5, 6, '_edit_lock', '1407920630:1'),
(6, 8, '_edit_last', '1'),
(7, 8, '_edit_lock', '1407920982:1'),
(17, 11, '_menu_item_type', 'post_type'),
(18, 11, '_menu_item_menu_item_parent', '0'),
(19, 11, '_menu_item_object_id', '6'),
(20, 11, '_menu_item_object', 'page'),
(21, 11, '_menu_item_target', ''),
(22, 11, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(23, 11, '_menu_item_xfn', ''),
(24, 11, '_menu_item_url', ''),
(26, 12, '_menu_item_type', 'post_type'),
(27, 12, '_menu_item_menu_item_parent', '0'),
(28, 12, '_menu_item_object_id', '8'),
(29, 12, '_menu_item_object', 'page'),
(30, 12, '_menu_item_target', ''),
(31, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(32, 12, '_menu_item_xfn', ''),
(33, 12, '_menu_item_url', ''),
(53, 15, '_menu_item_type', 'taxonomy'),
(54, 15, '_menu_item_menu_item_parent', '0'),
(55, 15, '_menu_item_object_id', '3'),
(56, 15, '_menu_item_object', 'category'),
(57, 15, '_menu_item_target', ''),
(58, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(59, 15, '_menu_item_xfn', ''),
(60, 15, '_menu_item_url', ''),
(62, 16, '_menu_item_type', 'taxonomy'),
(63, 16, '_menu_item_menu_item_parent', '0'),
(64, 16, '_menu_item_object_id', '4'),
(65, 16, '_menu_item_object', 'category'),
(66, 16, '_menu_item_target', ''),
(67, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(68, 16, '_menu_item_xfn', ''),
(69, 16, '_menu_item_url', ''),
(71, 17, '_menu_item_type', 'taxonomy'),
(72, 17, '_menu_item_menu_item_parent', '0'),
(73, 17, '_menu_item_object_id', '5'),
(74, 17, '_menu_item_object', 'category'),
(75, 17, '_menu_item_target', ''),
(76, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(77, 17, '_menu_item_xfn', ''),
(78, 17, '_menu_item_url', ''),
(80, 18, '_menu_item_type', 'taxonomy'),
(81, 18, '_menu_item_menu_item_parent', '0'),
(82, 18, '_menu_item_object_id', '2'),
(83, 18, '_menu_item_object', 'category'),
(84, 18, '_menu_item_target', ''),
(85, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(86, 18, '_menu_item_xfn', ''),
(87, 18, '_menu_item_url', ''),
(89, 19, '_edit_last', '1'),
(90, 19, '_edit_lock', '1407930727:1'),
(91, 20, '_edit_last', '1'),
(92, 20, '_edit_lock', '1407922571:1'),
(93, 21, '_wp_attached_file', '2014/08/img-7.png'),
(94, 21, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:91;s:6:"height";i:34;s:4:"file";s:17:"2014/08/img-7.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(95, 20, '_thumbnail_id', '21'),
(98, 23, '_edit_last', '1'),
(99, 23, '_edit_lock', '1407922605:1'),
(100, 23, '_thumbnail_id', '21'),
(103, 25, '_edit_last', '1'),
(104, 25, '_edit_lock', '1407922639:1'),
(105, 25, '_thumbnail_id', '21'),
(108, 28, '_edit_last', '1'),
(109, 28, '_edit_lock', '1407924678:1'),
(110, 29, '_wp_attached_file', '2014/08/img-8.png'),
(111, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:91;s:6:"height";i:34;s:4:"file";s:17:"2014/08/img-8.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(112, 28, '_thumbnail_id', '29'),
(115, 31, '_edit_last', '1'),
(116, 31, '_edit_lock', '1407924765:1'),
(117, 32, '_wp_attached_file', '2014/08/img-9.png'),
(118, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:91;s:6:"height";i:34;s:4:"file";s:17:"2014/08/img-9.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(119, 31, '_thumbnail_id', '32'),
(122, 34, '_edit_last', '1'),
(123, 34, '_edit_lock', '1407924830:1'),
(124, 34, '_thumbnail_id', '32'),
(129, 37, '_edit_last', '1'),
(130, 37, '_edit_lock', '1407926387:1'),
(131, 38, '_wp_attached_file', '2014/08/img-11.png'),
(132, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:129;s:6:"height";i:84;s:4:"file";s:18:"2014/08/img-11.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(133, 37, '_thumbnail_id', '38'),
(136, 40, '_edit_last', '1'),
(137, 40, '_edit_lock', '1407926472:1'),
(138, 41, '_wp_attached_file', '2014/08/img-12.png'),
(139, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:104;s:6:"height";i:69;s:4:"file";s:18:"2014/08/img-12.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(140, 40, '_thumbnail_id', '41'),
(143, 43, '_edit_last', '1'),
(144, 43, '_edit_lock', '1407926509:1'),
(145, 44, '_wp_attached_file', '2014/08/img-13.png'),
(146, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:195;s:6:"height";i:81;s:4:"file";s:18:"2014/08/img-13.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"img-13-150x81.png";s:5:"width";i:150;s:6:"height";i:81;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(147, 43, '_thumbnail_id', '44'),
(150, 46, '_edit_last', '1'),
(151, 46, '_edit_lock', '1407926547:1'),
(152, 47, '_wp_attached_file', '2014/08/img-14.png'),
(153, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:195;s:6:"height";i:75;s:4:"file";s:18:"2014/08/img-14.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"img-14-150x75.png";s:5:"width";i:150;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(154, 46, '_thumbnail_id', '47'),
(157, 49, '_edit_last', '1'),
(158, 49, '_edit_lock', '1407926596:1'),
(159, 50, '_wp_attached_file', '2014/08/img-15.png'),
(160, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:170;s:6:"height";i:80;s:4:"file";s:18:"2014/08/img-15.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"img-15-150x80.png";s:5:"width";i:150;s:6:"height";i:80;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(161, 49, '_thumbnail_id', '50'),
(164, 52, '_edit_last', '1'),
(165, 52, '_edit_lock', '1407926630:1'),
(166, 53, '_wp_attached_file', '2014/08/img-16.png'),
(167, 53, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:72;s:6:"height";i:86;s:4:"file";s:18:"2014/08/img-16.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(168, 52, '_thumbnail_id', '53'),
(173, 19, '_thumbnail_id', '21');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2014-08-13 08:31:39', '2014-08-13 08:31:39', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2014-08-13 08:31:39', '2014-08-13 08:31:39', '', 0, 'http://webo4o/?p=1', 0, 'post', '', 1),
(2, 1, '2014-08-13 08:31:39', '2014-08-13 08:31:39', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://webo4o/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2014-08-13 08:31:39', '2014-08-13 08:31:39', '', 0, 'http://webo4o/?page_id=2', 0, 'page', '', 0),
(3, 1, '2014-08-13 08:32:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-08-13 08:32:05', '0000-00-00 00:00:00', '', 0, 'http://webo4o/?p=3', 0, 'post', '', 0),
(4, 1, '2014-08-13 09:03:37', '2014-08-13 09:03:37', '', 'TRANG CHỦ', '', 'publish', 'open', 'open', '', 'trang-chu', '', '', '2014-08-13 09:03:37', '2014-08-13 09:03:37', '', 0, 'http://webo4o/?page_id=4', 0, 'page', '', 0),
(5, 1, '2014-08-13 09:03:37', '2014-08-13 09:03:37', '', 'TRANG CHỦ', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2014-08-13 09:03:37', '2014-08-13 09:03:37', '', 4, 'http://webo4o/?p=5', 0, 'revision', '', 0),
(6, 1, '2014-08-13 09:05:29', '2014-08-13 09:05:29', '', 'GIỚI THIỆU', '', 'publish', 'open', 'open', '', 'gioi-thieu', '', '', '2014-08-13 09:05:29', '2014-08-13 09:05:29', '', 0, 'http://webo4o/?page_id=6', 0, 'page', '', 0),
(7, 1, '2014-08-13 09:05:29', '2014-08-13 09:05:29', '', 'GIỚI THIỆU', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2014-08-13 09:05:29', '2014-08-13 09:05:29', '', 6, 'http://webo4o/?p=7', 0, 'revision', '', 0),
(8, 1, '2014-08-13 09:07:45', '2014-08-13 09:07:45', '', 'LIÊN HỆ', '', 'publish', 'open', 'open', '', 'lien-he', '', '', '2014-08-13 09:07:45', '2014-08-13 09:07:45', '', 0, 'http://webo4o/?page_id=8', 0, 'page', '', 0),
(9, 1, '2014-08-13 09:07:45', '2014-08-13 09:07:45', '', 'LIÊN HỆ', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-08-13 09:07:45', '2014-08-13 09:07:45', '', 8, 'http://webo4o/?p=9', 0, 'revision', '', 0),
(11, 1, '2014-08-13 09:12:13', '2014-08-13 09:12:13', ' ', '', '', 'publish', 'open', 'open', '', '11', '', '', '2014-08-13 09:15:31', '2014-08-13 09:15:31', '', 0, 'http://webo4o/?p=11', 1, 'nav_menu_item', '', 0),
(12, 1, '2014-08-13 09:12:13', '2014-08-13 09:12:13', ' ', '', '', 'publish', 'open', 'open', '', '12', '', '', '2014-08-13 09:15:32', '2014-08-13 09:15:32', '', 0, 'http://webo4o/?p=12', 6, 'nav_menu_item', '', 0),
(15, 1, '2014-08-13 09:15:31', '2014-08-13 09:15:31', ' ', '', '', 'publish', 'open', 'open', '', '15', '', '', '2014-08-13 09:15:31', '2014-08-13 09:15:31', '', 0, 'http://webo4o/?p=15', 3, 'nav_menu_item', '', 0),
(16, 1, '2014-08-13 09:15:31', '2014-08-13 09:15:31', ' ', '', '', 'publish', 'open', 'open', '', '16', '', '', '2014-08-13 09:15:31', '2014-08-13 09:15:31', '', 0, 'http://webo4o/?p=16', 4, 'nav_menu_item', '', 0),
(17, 1, '2014-08-13 09:15:32', '2014-08-13 09:15:32', ' ', '', '', 'publish', 'open', 'open', '', '17', '', '', '2014-08-13 09:15:32', '2014-08-13 09:15:32', '', 0, 'http://webo4o/?p=17', 5, 'nav_menu_item', '', 0),
(18, 1, '2014-08-13 09:15:31', '2014-08-13 09:15:31', ' ', '', '', 'publish', 'open', 'open', '', '18', '', '', '2014-08-13 09:15:31', '2014-08-13 09:15:31', '', 0, 'http://webo4o/?p=18', 2, 'nav_menu_item', '', 0),
(19, 1, '2014-08-13 10:29:03', '2014-08-13 10:29:03', '', 'Lorem ipsum dolor sit amet  consectetuer adip', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-amet-consectetuer-adip-7', '', '', '2014-08-13 11:27:47', '2014-08-13 11:27:47', '', 0, 'http://webo4o/?p=19', 0, 'post', '', 0),
(20, 1, '2014-08-13 09:37:50', '2014-08-13 09:37:50', '', 'Lorem ipsum dolor sit amet  consectetuer adip', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-amet-consectetuer-adip', '', '', '2014-08-13 09:37:50', '2014-08-13 09:37:50', '', 0, 'http://webo4o/?p=20', 0, 'post', '', 0),
(21, 1, '2014-08-13 09:37:35', '2014-08-13 09:37:35', '', 'img-7', '', 'inherit', 'open', 'open', '', 'img-7', '', '', '2014-08-13 09:37:35', '2014-08-13 09:37:35', '', 20, 'http://webo4o/wp-content/uploads/2014/08/img-7.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2014-08-13 09:37:50', '2014-08-13 09:37:50', '', 'Lorem ipsum dolor sit amet  consectetuer adip', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2014-08-13 09:37:50', '2014-08-13 09:37:50', '', 20, 'http://webo4o/20-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2014-08-13 09:38:25', '2014-08-13 09:38:25', '', 'Lorem ipsum dolor sit amet  consectetuer adip', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-amet-consectetuer-adip-2', '', '', '2014-08-13 09:38:25', '2014-08-13 09:38:25', '', 0, 'http://webo4o/?p=23', 0, 'post', '', 0),
(24, 1, '2014-08-13 09:38:25', '2014-08-13 09:38:25', '', 'Lorem ipsum dolor sit amet  consectetuer adip', '', 'inherit', 'open', 'open', '', '23-revision-v1', '', '', '2014-08-13 09:38:25', '2014-08-13 09:38:25', '', 23, 'http://webo4o/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2014-08-13 09:39:03', '2014-08-13 09:39:03', '', 'Lorem ipsum dolor sit amet  consectetuer adip', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-amet-consectetuer-adip-3', '', '', '2014-08-13 09:39:03', '2014-08-13 09:39:03', '', 0, 'http://webo4o/?p=25', 0, 'post', '', 0),
(26, 1, '2014-08-13 09:39:03', '2014-08-13 09:39:03', '', 'Lorem ipsum dolor sit amet  consectetuer adip', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2014-08-13 09:39:03', '2014-08-13 09:39:03', '', 25, 'http://webo4o/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2014-08-13 09:39:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-08-13 09:39:12', '0000-00-00 00:00:00', '', 0, 'http://webo4o/?p=27', 0, 'post', '', 0),
(28, 1, '2014-08-13 10:12:43', '2014-08-13 10:12:43', '', 'Lorem ipsum dolor sit amet  consectetuer adip', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-amet-consectetuer-adip-4', '', '', '2014-08-13 10:12:43', '2014-08-13 10:12:43', '', 0, 'http://webo4o/?p=28', 0, 'post', '', 0),
(29, 1, '2014-08-13 10:12:27', '2014-08-13 10:12:27', '', 'img-8', '', 'inherit', 'open', 'open', '', 'img-8', '', '', '2014-08-13 10:12:27', '2014-08-13 10:12:27', '', 28, 'http://webo4o/wp-content/uploads/2014/08/img-8.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2014-08-13 10:12:43', '2014-08-13 10:12:43', '', 'Lorem ipsum dolor sit amet  consectetuer adip', '', 'inherit', 'open', 'open', '', '28-revision-v1', '', '', '2014-08-13 10:12:43', '2014-08-13 10:12:43', '', 28, 'http://webo4o/28-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2014-08-13 10:13:44', '2014-08-13 10:13:44', '', 'Lorem ipsum dolor sit amet  consectetuer adip', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-amet-consectetuer-adip-5', '', '', '2014-08-13 10:13:44', '2014-08-13 10:13:44', '', 0, 'http://webo4o/?p=31', 0, 'post', '', 0),
(32, 1, '2014-08-13 10:13:30', '2014-08-13 10:13:30', '', 'img-9', '', 'inherit', 'open', 'open', '', 'img-9', '', '', '2014-08-13 10:13:30', '2014-08-13 10:13:30', '', 31, 'http://webo4o/wp-content/uploads/2014/08/img-9.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2014-08-13 10:13:44', '2014-08-13 10:13:44', '', 'Lorem ipsum dolor sit amet  consectetuer adip', '', 'inherit', 'open', 'open', '', '31-revision-v1', '', '', '2014-08-13 10:13:44', '2014-08-13 10:13:44', '', 31, 'http://webo4o/31-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2014-08-13 10:15:08', '2014-08-13 10:15:08', '', 'Lorem ipsum dolor sit amet  consectetuer adip', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-amet-consectetuer-adip-6', '', '', '2014-08-13 10:15:08', '2014-08-13 10:15:08', '', 0, 'http://webo4o/?p=34', 0, 'post', '', 0),
(35, 1, '2014-08-13 10:15:08', '2014-08-13 10:15:08', '', 'Lorem ipsum dolor sit amet  consectetuer adip', '', 'inherit', 'open', 'open', '', '34-revision-v1', '', '', '2014-08-13 10:15:08', '2014-08-13 10:15:08', '', 34, 'http://webo4o/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2014-08-13 10:29:03', '2014-08-13 10:29:03', '', 'Lorem ipsum dolor sit amet  consectetuer adip', '', 'inherit', 'open', 'open', '', '19-revision-v1', '', '', '2014-08-13 10:29:03', '2014-08-13 10:29:03', '', 19, 'http://webo4o/19-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2014-08-13 10:41:28', '2014-08-13 10:41:28', '', 'COZY', '', 'publish', 'open', 'open', '', 'cozy', '', '', '2014-08-13 10:41:28', '2014-08-13 10:41:28', '', 0, 'http://webo4o/?p=37', 0, 'post', '', 0),
(38, 1, '2014-08-13 10:41:15', '2014-08-13 10:41:15', '', 'img-11', '', 'inherit', 'open', 'open', '', 'img-11', '', '', '2014-08-13 10:41:15', '2014-08-13 10:41:15', '', 37, 'http://webo4o/wp-content/uploads/2014/08/img-11.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2014-08-13 10:41:28', '2014-08-13 10:41:28', '', 'COZY', '', 'inherit', 'open', 'open', '', '37-revision-v1', '', '', '2014-08-13 10:41:28', '2014-08-13 10:41:28', '', 37, 'http://webo4o/37-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2014-08-13 10:42:54', '2014-08-13 10:42:54', '', 'mining', '', 'publish', 'open', 'open', '', 'mining', '', '', '2014-08-13 10:42:54', '2014-08-13 10:42:54', '', 0, 'http://webo4o/?p=40', 0, 'post', '', 0),
(41, 1, '2014-08-13 10:42:47', '2014-08-13 10:42:47', '', 'img-12', '', 'inherit', 'open', 'open', '', 'img-12', '', '', '2014-08-13 10:42:47', '2014-08-13 10:42:47', '', 40, 'http://webo4o/wp-content/uploads/2014/08/img-12.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2014-08-13 10:42:54', '2014-08-13 10:42:54', '', 'mining', '', 'inherit', 'open', 'open', '', '40-revision-v1', '', '', '2014-08-13 10:42:54', '2014-08-13 10:42:54', '', 40, 'http://webo4o/40-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2014-08-13 10:43:31', '2014-08-13 10:43:31', '', 'clerver', '', 'publish', 'open', 'open', '', 'clerver', '', '', '2014-08-13 10:43:31', '2014-08-13 10:43:31', '', 0, 'http://webo4o/?p=43', 0, 'post', '', 0),
(44, 1, '2014-08-13 10:43:25', '2014-08-13 10:43:25', '', 'img-13', '', 'inherit', 'open', 'open', '', 'img-13', '', '', '2014-08-13 10:43:25', '2014-08-13 10:43:25', '', 43, 'http://webo4o/wp-content/uploads/2014/08/img-13.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2014-08-13 10:43:31', '2014-08-13 10:43:31', '', 'clerver', '', 'inherit', 'open', 'open', '', '43-revision-v1', '', '', '2014-08-13 10:43:31', '2014-08-13 10:43:31', '', 43, 'http://webo4o/43-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2014-08-13 10:44:10', '2014-08-13 10:44:10', '', 'trust', '', 'publish', 'open', 'open', '', 'trust', '', '', '2014-08-13 10:44:10', '2014-08-13 10:44:10', '', 0, 'http://webo4o/?p=46', 0, 'post', '', 0),
(47, 1, '2014-08-13 10:44:00', '2014-08-13 10:44:00', '', 'img-14', '', 'inherit', 'open', 'open', '', 'img-14', '', '', '2014-08-13 10:44:00', '2014-08-13 10:44:00', '', 46, 'http://webo4o/wp-content/uploads/2014/08/img-14.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2014-08-13 10:44:10', '2014-08-13 10:44:10', '', 'trust', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2014-08-13 10:44:10', '2014-08-13 10:44:10', '', 46, 'http://webo4o/46-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2014-08-13 10:44:56', '2014-08-13 10:44:56', '', 'digital', '', 'publish', 'open', 'open', '', 'digital', '', '', '2014-08-13 10:44:56', '2014-08-13 10:44:56', '', 0, 'http://webo4o/?p=49', 0, 'post', '', 0),
(50, 1, '2014-08-13 10:44:41', '2014-08-13 10:44:41', '', 'img-15', '', 'inherit', 'open', 'open', '', 'img-15', '', '', '2014-08-13 10:44:41', '2014-08-13 10:44:41', '', 49, 'http://webo4o/wp-content/uploads/2014/08/img-15.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2014-08-13 10:44:56', '2014-08-13 10:44:56', '', 'digital', '', 'inherit', 'open', 'open', '', '49-revision-v1', '', '', '2014-08-13 10:44:56', '2014-08-13 10:44:56', '', 49, 'http://webo4o/49-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2014-08-13 10:45:35', '2014-08-13 10:45:35', '', 'drangon', '', 'publish', 'open', 'open', '', 'drangon', '', '', '2014-08-13 10:45:35', '2014-08-13 10:45:35', '', 0, 'http://webo4o/?p=52', 0, 'post', '', 0),
(53, 1, '2014-08-13 10:45:28', '2014-08-13 10:45:28', '', 'img-16', '', 'inherit', 'open', 'open', '', 'img-16', '', '', '2014-08-13 10:45:28', '2014-08-13 10:45:28', '', 52, 'http://webo4o/wp-content/uploads/2014/08/img-16.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2014-08-13 10:45:35', '2014-08-13 10:45:35', '', 'drangon', '', 'inherit', 'open', 'open', '', '52-revision-v1', '', '', '2014-08-13 10:45:35', '2014-08-13 10:45:35', '', 52, 'http://webo4o/52-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'TIN TỨC', 'tin-tuc', 0),
(3, 'BLOG', 'blog', 0),
(4, 'CỬA HÀNG PTBV', 'cua-hang-ptbv', 0),
(5, 'HOÀN CẢNH', 'hoan-canh', 0),
(6, 'main-menu', 'main-menu', 0),
(7, 'LIST HELPER', 'list-helper', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(11, 6, 0),
(12, 6, 0),
(15, 6, 0),
(16, 6, 0),
(17, 6, 0),
(18, 6, 0),
(19, 5, 0),
(20, 5, 0),
(23, 5, 0),
(25, 5, 0),
(28, 5, 0),
(31, 5, 0),
(34, 5, 0),
(37, 7, 0),
(40, 7, 0),
(43, 7, 0),
(46, 7, 0),
(49, 7, 0),
(52, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', '', 0, 0),
(3, 3, 'category', '', 0, 0),
(4, 4, 'category', '', 0, 0),
(5, 5, 'category', '', 0, 7),
(6, 6, 'nav_menu', '', 0, 6),
(7, 7, 'category', '', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'thangcode'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media,wp360_revisions,wp360_locks'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(15, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(16, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";}'),
(17, 1, 'nav_menu_recently_edited', '6'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1407922670');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'thangcode', '$P$BEB.Opq0Yu1.Qd0CCPTpXwLmqXO.GF0', 'thangcode', 'dinh.thang303@gmail.com', '', '2014-08-13 08:31:36', '', 0, 'thangcode');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
