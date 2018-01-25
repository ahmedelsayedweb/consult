-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2018 at 08:50 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `consult`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_album`
--

CREATE TABLE `wp_bwg_album` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `preview_image` mediumtext NOT NULL,
  `random_preview_image` mediumtext NOT NULL,
  `order` bigint(20) NOT NULL,
  `author` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_album_gallery`
--

CREATE TABLE `wp_bwg_album_gallery` (
  `id` bigint(20) NOT NULL,
  `album_id` bigint(20) NOT NULL,
  `is_album` tinyint(1) NOT NULL,
  `alb_gal_id` bigint(20) NOT NULL,
  `order` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_gallery`
--

CREATE TABLE `wp_bwg_gallery` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `page_link` mediumtext NOT NULL,
  `preview_image` mediumtext NOT NULL,
  `random_preview_image` mediumtext NOT NULL,
  `order` bigint(20) NOT NULL,
  `author` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `gallery_type` varchar(32) NOT NULL,
  `gallery_source` varchar(256) NOT NULL,
  `autogallery_image_number` int(4) NOT NULL,
  `update_flag` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_bwg_gallery`
--

INSERT INTO `wp_bwg_gallery` (`id`, `name`, `slug`, `description`, `page_link`, `preview_image`, `random_preview_image`, `order`, `author`, `published`, `gallery_type`, `gallery_source`, `autogallery_image_number`, `update_flag`) VALUES
(1, 'gallery', 'gallery', '', '', '', '/thumb/1 (6).jpg', 1, 1, 1, '', '', 12, '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_image`
--

CREATE TABLE `wp_bwg_image` (
  `id` bigint(20) NOT NULL,
  `gallery_id` bigint(20) NOT NULL,
  `slug` longtext NOT NULL,
  `filename` varchar(255) NOT NULL,
  `image_url` mediumtext NOT NULL,
  `thumb_url` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `alt` mediumtext NOT NULL,
  `date` varchar(128) NOT NULL,
  `size` varchar(128) NOT NULL,
  `filetype` varchar(128) NOT NULL,
  `resolution` varchar(128) NOT NULL,
  `author` bigint(20) NOT NULL,
  `order` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `comment_count` bigint(20) NOT NULL,
  `avg_rating` float NOT NULL,
  `rate_count` bigint(20) NOT NULL,
  `hit_count` bigint(20) NOT NULL,
  `redirect_url` varchar(255) NOT NULL,
  `pricelist_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_bwg_image`
--

INSERT INTO `wp_bwg_image` (`id`, `gallery_id`, `slug`, `filename`, `image_url`, `thumb_url`, `description`, `alt`, `date`, `size`, `filetype`, `resolution`, `author`, `order`, `published`, `comment_count`, `avg_rating`, `rate_count`, `hit_count`, `redirect_url`, `pricelist_id`) VALUES
(1, 1, '1 (6)', '1 (6)', '/1 (6).jpg', '/thumb/1 (6).jpg', '', '1 (6)', '04 January 2018, 13:10', '169 KB', 'JPG', '700 x 963 px', 1, 33, 1, 0, 0, 0, 0, '', 0),
(2, 1, '3 (4)', '3 (4)', '/3 (4).jpg', '/thumb/3 (4).jpg', '', '3 (4)', '04 January 2018, 13:10', '163 KB', 'JPG', '700 x 991 px', 1, 32, 1, 0, 0, 0, 0, '', 0),
(3, 1, '2 (5)', '2 (5)', '/2 (5).jpg', '/thumb/2 (5).jpg', '', '2 (5)', '04 January 2018, 13:10', '160 KB', 'JPG', '700 x 991 px', 1, 31, 1, 0, 0, 0, 0, '', 0),
(4, 1, '5 (2)', '5 (2)', '/5 (2).jpg', '/thumb/5 (2).jpg', '', '5 (2)', '04 January 2018, 12:33', '145 KB', 'JPG', '700 x 964 px', 1, 30, 1, 0, 0, 0, 0, '', 0),
(5, 1, '1 (5)', '1 (5)', '/1 (5).jpg', '/thumb/1 (5).jpg', '', '1 (5)', '04 January 2018, 12:33', '206 KB', 'JPG', '700 x 920 px', 1, 29, 1, 0, 0, 0, 0, '', 0),
(6, 1, '4 (2)', '4 (2)', '/4 (2).jpg', '/thumb/4 (2).jpg', '', '4 (2)', '04 January 2018, 12:33', '262 KB', 'JPG', '700 x 1022 px', 1, 28, 1, 0, 0, 0, 0, '', 0),
(7, 1, '3 (3)', '3 (3)', '/3 (3).jpg', '/thumb/3 (3).jpg', '', '3 (3)', '04 January 2018, 12:33', '143 KB', 'JPG', '700 x 957 px', 1, 27, 1, 0, 0, 0, 0, '', 0),
(8, 1, '2 (4)', '2 (4)', '/2 (4).jpg', '/thumb/2 (4).jpg', '', '2 (4)', '04 January 2018, 12:33', '121 KB', 'JPG', '700 x 809 px', 1, 26, 1, 0, 0, 0, 0, '', 0),
(9, 1, '2 (3)', '2 (3)', '/2 (3).jpg', '/thumb/2 (3).jpg', '', '2 (3)', '04 January 2018, 12:09', '147 KB', 'JPG', '700 x 1029 px', 1, 25, 1, 0, 0, 0, 0, '', 0),
(10, 1, '1 (4)', '1 (4)', '/1 (4).jpg', '/thumb/1 (4).jpg', '', '1 (4)', '04 January 2018, 12:09', '110 KB', 'JPG', '700 x 905 px', 1, 24, 1, 0, 0, 0, 0, '', 0),
(11, 1, '3 (2)', '3 (2)', '/3 (2).jpg', '/thumb/3 (2).jpg', '', '3 (2)', '04 January 2018, 12:09', '136 KB', 'JPG', '700 x 963 px', 1, 23, 1, 0, 0, 0, 0, '', 0),
(12, 1, '5 (1)', '5 (1)', '/5 (1).jpg', '/thumb/5 (1).jpg', '', '5 (1)', '04 January 2018, 11:57', '135 KB', 'JPG', '700 x 1016 px', 1, 22, 1, 0, 0, 0, 0, '', 0),
(13, 1, '4 (1)', '4 (1)', '/4 (1).jpg', '/thumb/4 (1).jpg', '', '4 (1)', '04 January 2018, 11:57', '126 KB', 'JPG', '700 x 485 px', 1, 21, 1, 0, 0, 0, 0, '', 0),
(14, 1, '3 (1)', '3 (1)', '/3 (1).jpg', '/thumb/3 (1).jpg', '', '3 (1)', '04 January 2018, 11:57', '78 KB', 'JPG', '700 x 518 px', 1, 20, 1, 0, 0, 0, 0, '', 0),
(15, 1, '2 (2)', '2 (2)', '/2 (2).jpg', '/thumb/2 (2).jpg', '', '2 (2)', '04 January 2018, 11:57', '199 KB', 'JPG', '700 x 925 px', 1, 19, 1, 0, 0, 0, 0, '', 0),
(16, 1, '1 (3)', '1 (3)', '/1 (3).jpg', '/thumb/1 (3).jpg', '', '1 (3)', '04 January 2018, 11:57', '157 KB', 'JPG', '700 x 928 px', 1, 18, 1, 0, 0, 0, 0, '', 0),
(17, 1, '1 (2)', '1 (2)', '/1 (2).jpg', '/thumb/1 (2).jpg', '', '1 (2)', '04 January 2018, 11:49', '120 KB', 'JPG', '700 x 963 px', 1, 17, 1, 0, 0, 0, 0, '', 0),
(18, 1, '2 (1)', '2 (1)', '/2 (1).jpg', '/thumb/2 (1).jpg', '', '2 (1)', '04 January 2018, 11:49', '132 KB', 'JPG', '700 x 963 px', 1, 16, 1, 0, 0, 0, 0, '', 0),
(19, 1, '1 (1)', '1 (1)', '/1 (1).jpg', '/thumb/1 (1).jpg', '', '1 (1)', '04 January 2018, 11:49', '50 KB', 'JPG', '500 x 344 px', 1, 15, 1, 0, 0, 0, 0, '', 0),
(20, 1, '14', '14', '/14.jpg', '/thumb/14.jpg', '', '14', '04 January 2018, 09:09', '74 KB', 'JPG', '500 x 338 px', 1, 14, 1, 0, 0, 0, 0, '', 0),
(21, 1, '12 (1)', '12 (1)', '/12 (1).jpg', '/thumb/12 (1).jpg', '', '12 (1)', '04 January 2018, 09:09', '99 KB', 'JPG', '500 x 688 px', 1, 13, 1, 0, 0, 0, 0, '', 0),
(22, 1, '13', '13', '/13.jpg', '/thumb/13.jpg', '', '13', '04 January 2018, 09:09', '70 KB', 'JPG', '500 x 333 px', 1, 12, 1, 0, 0, 0, 0, '', 0),
(23, 1, '9', '9', '/9.jpg', '/thumb/9.jpg', '', '9', '04 January 2018, 09:09', '57 KB', 'JPG', '500 x 316 px', 1, 11, 1, 0, 0, 0, 0, '', 0),
(24, 1, '10', '10', '/10.jpg', '/thumb/10.jpg', '', '10', '04 January 2018, 09:09', '57 KB', 'JPG', '500 x 316 px', 1, 10, 1, 0, 0, 0, 0, '', 0),
(25, 1, '8 (1)', '8 (1)', '/8 (1).jpg', '/thumb/8 (1).jpg', '', '8 (1)', '04 January 2018, 09:09', '60 KB', 'JPG', '500 x 319 px', 1, 9, 1, 0, 0, 0, 0, '', 0),
(26, 1, '11', '11', '/11.jpg', '/thumb/11.jpg', '', '11', '04 January 2018, 09:09', '51 KB', 'JPG', '500 x 316 px', 1, 8, 1, 0, 0, 0, 0, '', 0),
(27, 1, '7', '7', '/7.jpg', '/thumb/7.jpg', '', '7', '04 January 2018, 08:44', '61 KB', 'JPG', '500 x 319 px', 1, 7, 1, 0, 0, 0, 0, '', 0),
(28, 1, '6 (1)', '6 (1)', '/6 (1).jpg', '/thumb/6 (1).jpg', '', '6 (1)', '04 January 2018, 08:44', '71 KB', 'JPG', '500 x 384 px', 1, 6, 1, 0, 0, 0, 0, '', 0),
(29, 1, '5', '5', '/5.jpg', '/thumb/5.jpg', '', '5', '04 January 2018, 08:44', '54 KB', 'JPG', '500 x 319 px', 1, 5, 1, 0, 0, 0, 0, '', 0),
(30, 1, '4', '4', '/4.jpg', '/thumb/4.jpg', '', '4', '04 January 2018, 08:44', '80 KB', 'JPG', '500 x 396 px', 1, 4, 1, 0, 0, 0, 0, '', 0),
(31, 1, '1', '1', '/1.jpg', '/thumb/1.jpg', '', '1', '04 January 2018, 08:44', '60 KB', 'JPG', '500 x 363 px', 1, 3, 1, 0, 0, 0, 0, '', 0),
(32, 1, '3', '3', '/3.jpg', '/thumb/3.jpg', '', '3', '04 January 2018, 08:44', '77 KB', 'JPG', '500 x 383 px', 1, 2, 1, 0, 0, 0, 0, '', 0),
(33, 1, '2', '2', '/2.jpg', '/thumb/2.jpg', '', '2', '04 January 2018, 08:44', '49 KB', 'JPG', '500 x 329 px', 1, 1, 1, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_image_comment`
--

CREATE TABLE `wp_bwg_image_comment` (
  `id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` varchar(64) NOT NULL,
  `comment` mediumtext NOT NULL,
  `url` mediumtext NOT NULL,
  `mail` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_image_rate`
--

CREATE TABLE `wp_bwg_image_rate` (
  `id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `rate` float NOT NULL,
  `ip` varchar(64) NOT NULL,
  `date` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_image_tag`
--

CREATE TABLE `wp_bwg_image_tag` (
  `id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `gallery_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_shortcode`
--

CREATE TABLE `wp_bwg_shortcode` (
  `id` bigint(20) NOT NULL,
  `tagtext` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_bwg_shortcode`
--

INSERT INTO `wp_bwg_shortcode` (`id`, `tagtext`) VALUES
(1, ' use_option_defaults=\"1\" type=\"gallery\" theme_id=\"1\" gallery_id=\"1\" tag=\"0\" gallery_type=\"thumbnails\"'),
(2, ' gallery_type=\"thumbnails\" theme_id=\"1\" use_option_defaults=\"0\" gallery_id=\"0\" sort_by=\"order\" order_by=\"asc\" show_search_box=\"0\" show_sort_images=\"0\" search_box_width=\"180\" image_column_number=\"3\" images_per_page=\"30\" image_title=\"none\" image_enable_page=\"1\" thumb_width=\"380\" thumb_height=\"290\" load_more_image_count=\"30\" show_tag_box=\"0\" tag=\"0\" show_gallery_description=\"0\" showthumbs_name=\"0\" thumb_click_action=\"open_lightbox\" thumb_link_target=\"1\" popup_fullscreen=\"0\" popup_autoplay=\"0\" popup_width=\"1200\" popup_height=\"500\" popup_effect=\"fade\" popup_interval=\"5\" popup_enable_filmstrip=\"0\" popup_filmstrip_height=\"70\" popup_enable_ctrl_btn=\"1\" popup_enable_fullscreen=\"1\" popup_enable_info=\"1\" popup_info_always_show=\"0\" popup_info_full_width=\"0\" popup_enable_rate=\"0\" popup_enable_comment=\"1\" popup_hit_counter=\"0\" popup_enable_facebook=\"1\" popup_enable_twitter=\"1\" popup_enable_google=\"1\" popup_enable_pinterest=\"0\" popup_enable_tumblr=\"0\" show_tag_box=\"0\" popup_effect_duration=\"1\" watermark_type=\"none\" watermark_link=\"https://web-dorado.com\"');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_theme`
--

CREATE TABLE `wp_bwg_theme` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `options` longtext NOT NULL,
  `default_theme` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_bwg_theme`
--

INSERT INTO `wp_bwg_theme` (`id`, `name`, `options`, `default_theme`) VALUES
(1, 'Theme 1', '{\"thumb_margin\":4,\"thumb_padding\":0,\"thumb_border_radius\":\"0\",\"thumb_border_width\":0,\"thumb_border_style\":\"none\",\"thumb_border_color\":\"CCCCCC\",\"thumb_bg_color\":\"FFFFFF\",\"thumbs_bg_color\":\"FFFFFF\",\"thumb_bg_transparent\":0,\"thumb_box_shadow\":\"0px 0px 0px #888888\",\"thumb_transparent\":100,\"thumb_align\":\"center\",\"thumb_hover_effect\":\"scale\",\"thumb_hover_effect_value\":\"1.1\",\"thumb_transition\":1,\"thumb_title_font_color\":\"CCCCCC\",\"thumb_title_font_style\":\"segoe ui\",\"thumb_title_pos\":\"bottom\",\"thumb_title_font_size\":16,\"thumb_title_font_weight\":\"bold\",\"thumb_title_margin\":\"2px\",\"thumb_title_shadow\":\"0px 0px 0px #888888\",\"thumb_gal_title_font_color\":\"CCCCCC\",\"thumb_gal_title_font_style\":\"segoe ui\",\"thumb_gal_title_font_size\":16,\"thumb_gal_title_font_weight\":\"bold\",\"thumb_gal_title_margin\":\"2px\",\"thumb_gal_title_shadow\":\"0px 0px 0px #888888\",\"thumb_gal_title_align\":\"center\",\"page_nav_position\":\"bottom\",\"page_nav_align\":\"center\",\"page_nav_number\":0,\"page_nav_font_size\":12,\"page_nav_font_style\":\"segoe ui\",\"page_nav_font_color\":\"666666\",\"page_nav_font_weight\":\"bold\",\"page_nav_border_width\":1,\"page_nav_border_style\":\"solid\",\"page_nav_border_color\":\"E3E3E3\",\"page_nav_border_radius\":\"0\",\"page_nav_margin\":\"0\",\"page_nav_padding\":\"3px 6px\",\"page_nav_button_bg_color\":\"FFFFFF\",\"page_nav_button_bg_transparent\":100,\"page_nav_box_shadow\":\"0\",\"page_nav_button_transition\":1,\"page_nav_button_text\":0,\"lightbox_overlay_bg_color\":\"000000\",\"lightbox_overlay_bg_transparent\":70,\"lightbox_bg_color\":\"000000\",\"lightbox_ctrl_btn_pos\":\"bottom\",\"lightbox_ctrl_btn_align\":\"center\",\"lightbox_ctrl_btn_height\":20,\"lightbox_ctrl_btn_margin_top\":10,\"lightbox_ctrl_btn_margin_left\":7,\"lightbox_ctrl_btn_transparent\":100,\"lightbox_ctrl_btn_color\":\"FFFFFF\",\"lightbox_toggle_btn_height\":14,\"lightbox_toggle_btn_width\":100,\"lightbox_ctrl_cont_bg_color\":\"000000\",\"lightbox_ctrl_cont_transparent\":65,\"lightbox_ctrl_cont_border_radius\":4,\"lightbox_close_btn_transparent\":100,\"lightbox_close_btn_bg_color\":\"000000\",\"lightbox_close_btn_border_width\":2,\"lightbox_close_btn_border_radius\":\"16px\",\"lightbox_close_btn_border_style\":\"none\",\"lightbox_close_btn_border_color\":\"FFFFFF\",\"lightbox_close_btn_box_shadow\":\"0\",\"lightbox_close_btn_color\":\"FFFFFF\",\"lightbox_close_btn_size\":10,\"lightbox_close_btn_width\":20,\"lightbox_close_btn_height\":20,\"lightbox_close_btn_top\":\"-10\",\"lightbox_close_btn_right\":\"-10\",\"lightbox_close_btn_full_color\":\"FFFFFF\",\"lightbox_rl_btn_bg_color\":\"000000\",\"lightbox_rl_btn_border_radius\":\"20px\",\"lightbox_rl_btn_border_width\":0,\"lightbox_rl_btn_border_style\":\"none\",\"lightbox_rl_btn_border_color\":\"FFFFFF\",\"lightbox_rl_btn_box_shadow\":\"\",\"lightbox_rl_btn_color\":\"FFFFFF\",\"lightbox_rl_btn_height\":40,\"lightbox_rl_btn_width\":40,\"lightbox_rl_btn_size\":20,\"lightbox_close_rl_btn_hover_color\":\"CCCCCC\",\"lightbox_comment_pos\":\"left\",\"lightbox_comment_width\":400,\"lightbox_comment_bg_color\":\"000000\",\"lightbox_comment_font_color\":\"CCCCCC\",\"lightbox_comment_font_style\":\"segoe ui\",\"lightbox_comment_font_size\":12,\"lightbox_comment_button_bg_color\":\"616161\",\"lightbox_comment_button_border_color\":\"666666\",\"lightbox_comment_button_border_width\":1,\"lightbox_comment_button_border_style\":\"none\",\"lightbox_comment_button_border_radius\":\"3px\",\"lightbox_comment_button_padding\":\"3px 10px\",\"lightbox_comment_input_bg_color\":\"333333\",\"lightbox_comment_input_border_color\":\"666666\",\"lightbox_comment_input_border_width\":1,\"lightbox_comment_input_border_style\":\"none\",\"lightbox_comment_input_border_radius\":\"0\",\"lightbox_comment_input_padding\":\"2px\",\"lightbox_comment_separator_width\":1,\"lightbox_comment_separator_style\":\"solid\",\"lightbox_comment_separator_color\":\"383838\",\"lightbox_comment_author_font_size\":14,\"lightbox_comment_date_font_size\":10,\"lightbox_comment_body_font_size\":12,\"lightbox_comment_share_button_color\":\"CCCCCC\",\"lightbox_filmstrip_pos\":\"top\",\"lightbox_filmstrip_rl_bg_color\":\"3B3B3B\",\"lightbox_filmstrip_rl_btn_size\":20,\"lightbox_filmstrip_rl_btn_color\":\"FFFFFF\",\"lightbox_filmstrip_thumb_margin\":\"0 1px\",\"lightbox_filmstrip_thumb_border_width\":1,\"lightbox_filmstrip_thumb_border_style\":\"solid\",\"lightbox_filmstrip_thumb_border_color\":\"000000\",\"lightbox_filmstrip_thumb_border_radius\":\"0\",\"lightbox_filmstrip_thumb_deactive_transparent\":80,\"lightbox_filmstrip_thumb_active_border_width\":0,\"lightbox_filmstrip_thumb_active_border_color\":\"FFFFFF\",\"lightbox_rl_btn_style\":\"fa-chevron\",\"lightbox_rl_btn_transparent\":80,\"lightbox_bg_transparent\":100,\"album_compact_back_font_color\":\"000000\",\"album_compact_back_font_style\":\"segoe ui\",\"album_compact_back_font_size\":16,\"album_compact_back_font_weight\":\"bold\",\"album_compact_back_padding\":\"0\",\"album_compact_title_font_color\":\"CCCCCC\",\"album_compact_title_font_style\":\"segoe ui\",\"album_compact_thumb_title_pos\":\"bottom\",\"album_compact_title_font_size\":16,\"album_compact_title_font_weight\":\"bold\",\"album_compact_title_margin\":\"2px\",\"album_compact_title_shadow\":\"0px 0px 0px #888888\",\"album_compact_thumb_margin\":4,\"album_compact_thumb_padding\":0,\"album_compact_thumb_border_radius\":\"0\",\"album_compact_thumb_border_width\":0,\"album_compact_thumb_border_style\":\"none\",\"album_compact_thumb_border_color\":\"CCCCCC\",\"album_compact_thumb_bg_color\":\"FFFFFF\",\"album_compact_thumbs_bg_color\":\"FFFFFF\",\"album_compact_thumb_bg_transparent\":0,\"album_compact_thumb_box_shadow\":\"0px 0px 0px #888888\",\"album_compact_thumb_transparent\":100,\"album_compact_thumb_align\":\"center\",\"album_compact_thumb_hover_effect\":\"scale\",\"album_compact_thumb_hover_effect_value\":\"1.1\",\"album_compact_thumb_transition\":0,\"album_compact_gal_title_font_color\":\"CCCCCC\",\"album_compact_gal_title_font_style\":\"segoe ui\",\"album_compact_gal_title_font_size\":16,\"album_compact_gal_title_font_weight\":\"bold\",\"album_compact_gal_title_margin\":\"2px\",\"album_compact_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_compact_gal_title_align\":\"center\",\"album_extended_thumb_margin\":2,\"album_extended_thumb_padding\":0,\"album_extended_thumb_border_radius\":\"0\",\"album_extended_thumb_border_width\":0,\"album_extended_thumb_border_style\":\"none\",\"album_extended_thumb_border_color\":\"CCCCCC\",\"album_extended_thumb_bg_color\":\"FFFFFF\",\"album_extended_thumbs_bg_color\":\"FFFFFF\",\"album_extended_thumb_bg_transparent\":0,\"album_extended_thumb_box_shadow\":\"\",\"album_extended_thumb_transparent\":100,\"album_extended_thumb_align\":\"left\",\"album_extended_thumb_hover_effect\":\"scale\",\"album_extended_thumb_hover_effect_value\":\"1.1\",\"album_extended_thumb_transition\":0,\"album_extended_back_font_color\":\"000000\",\"album_extended_back_font_style\":\"segoe ui\",\"album_extended_back_font_size\":20,\"album_extended_back_font_weight\":\"bold\",\"album_extended_back_padding\":\"0\",\"album_extended_div_bg_color\":\"FFFFFF\",\"album_extended_div_bg_transparent\":0,\"album_extended_div_border_radius\":\"0 0 0 0\",\"album_extended_div_margin\":\"0 0 5px 0\",\"album_extended_div_padding\":10,\"album_extended_div_separator_width\":1,\"album_extended_div_separator_style\":\"solid\",\"album_extended_div_separator_color\":\"E0E0E0\",\"album_extended_thumb_div_bg_color\":\"FFFFFF\",\"album_extended_thumb_div_border_radius\":\"0\",\"album_extended_thumb_div_border_width\":1,\"album_extended_thumb_div_border_style\":\"solid\",\"album_extended_thumb_div_border_color\":\"E8E8E8\",\"album_extended_thumb_div_padding\":\"5px\",\"album_extended_text_div_bg_color\":\"FFFFFF\",\"album_extended_text_div_border_radius\":\"0\",\"album_extended_text_div_border_width\":1,\"album_extended_text_div_border_style\":\"solid\",\"album_extended_text_div_border_color\":\"E8E8E8\",\"album_extended_text_div_padding\":\"5px\",\"album_extended_title_span_border_width\":1,\"album_extended_title_span_border_style\":\"none\",\"album_extended_title_span_border_color\":\"CCCCCC\",\"album_extended_title_font_color\":\"000000\",\"album_extended_title_font_style\":\"segoe ui\",\"album_extended_title_font_size\":16,\"album_extended_title_font_weight\":\"bold\",\"album_extended_title_margin_bottom\":2,\"album_extended_title_padding\":\"2px\",\"album_extended_desc_span_border_width\":1,\"album_extended_desc_span_border_style\":\"none\",\"album_extended_desc_span_border_color\":\"CCCCCC\",\"album_extended_desc_font_color\":\"000000\",\"album_extended_desc_font_style\":\"segoe ui\",\"album_extended_desc_font_size\":14,\"album_extended_desc_font_weight\":\"normal\",\"album_extended_desc_padding\":\"2px\",\"album_extended_desc_more_color\":\"F2D22E\",\"album_extended_desc_more_size\":12,\"album_extended_gal_title_font_color\":\"CCCCCC\",\"album_extended_gal_title_font_style\":\"segoe ui\",\"album_extended_gal_title_font_size\":16,\"album_extended_gal_title_font_weight\":\"bold\",\"album_extended_gal_title_margin\":\"2px\",\"album_extended_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_extended_gal_title_align\":\"center\",\"masonry_thumb_padding\":4,\"masonry_thumb_border_radius\":\"0\",\"masonry_thumb_border_width\":0,\"masonry_thumb_border_style\":\"none\",\"masonry_thumb_border_color\":\"CCCCCC\",\"masonry_thumbs_bg_color\":\"FFFFFF\",\"masonry_thumb_bg_transparent\":0,\"masonry_thumb_transparent\":100,\"masonry_thumb_align\":\"center\",\"masonry_thumb_hover_effect\":\"scale\",\"masonry_thumb_hover_effect_value\":\"1.1\",\"masonry_thumb_transition\":0,\"masonry_thumb_gal_title_font_color\":\"CCCCCC\",\"masonry_thumb_gal_title_font_style\":\"segoe ui\",\"masonry_thumb_gal_title_font_size\":16,\"masonry_thumb_gal_title_font_weight\":\"bold\",\"masonry_thumb_gal_title_margin\":\"2px\",\"masonry_thumb_gal_title_shadow\":\"0px 0px 0px #888888\",\"masonry_thumb_gal_title_align\":\"center\",\"slideshow_cont_bg_color\":\"000000\",\"slideshow_close_btn_transparent\":100,\"slideshow_rl_btn_bg_color\":\"000000\",\"slideshow_rl_btn_border_radius\":\"20px\",\"slideshow_rl_btn_border_width\":0,\"slideshow_rl_btn_border_style\":\"none\",\"slideshow_rl_btn_border_color\":\"FFFFFF\",\"slideshow_rl_btn_box_shadow\":\"0px 0px 0px #000000\",\"slideshow_rl_btn_color\":\"FFFFFF\",\"slideshow_rl_btn_height\":40,\"slideshow_rl_btn_size\":20,\"slideshow_rl_btn_width\":40,\"slideshow_close_rl_btn_hover_color\":\"CCCCCC\",\"slideshow_filmstrip_pos\":\"top\",\"slideshow_filmstrip_thumb_border_width\":1,\"slideshow_filmstrip_thumb_border_style\":\"solid\",\"slideshow_filmstrip_thumb_border_color\":\"000000\",\"slideshow_filmstrip_thumb_border_radius\":\"0\",\"slideshow_filmstrip_thumb_margin\":\"0 1px\",\"slideshow_filmstrip_thumb_active_border_width\":0,\"slideshow_filmstrip_thumb_active_border_color\":\"FFFFFF\",\"slideshow_filmstrip_thumb_deactive_transparent\":80,\"slideshow_filmstrip_rl_bg_color\":\"3B3B3B\",\"slideshow_filmstrip_rl_btn_color\":\"FFFFFF\",\"slideshow_filmstrip_rl_btn_size\":20,\"slideshow_title_font_size\":16,\"slideshow_title_font\":\"segoe ui\",\"slideshow_title_color\":\"FFFFFF\",\"slideshow_title_opacity\":70,\"slideshow_title_border_radius\":\"5px\",\"slideshow_title_background_color\":\"000000\",\"slideshow_title_padding\":\"0 0 0 0\",\"slideshow_description_font_size\":14,\"slideshow_description_font\":\"segoe ui\",\"slideshow_description_color\":\"FFFFFF\",\"slideshow_description_opacity\":70,\"slideshow_description_border_radius\":\"0\",\"slideshow_description_background_color\":\"000000\",\"slideshow_description_padding\":\"5px 10px 5px 10px\",\"slideshow_dots_width\":12,\"slideshow_dots_height\":12,\"slideshow_dots_border_radius\":\"5px\",\"slideshow_dots_background_color\":\"F2D22E\",\"slideshow_dots_margin\":3,\"slideshow_dots_active_background_color\":\"FFFFFF\",\"slideshow_dots_active_border_width\":1,\"slideshow_dots_active_border_color\":\"000000\",\"slideshow_play_pause_btn_size\":60,\"slideshow_rl_btn_style\":\"fa-chevron\",\"blog_style_margin\":\"2px\",\"blog_style_padding\":\"0\",\"blog_style_border_radius\":\"0\",\"blog_style_border_width\":1,\"blog_style_border_style\":\"solid\",\"blog_style_border_color\":\"F5F5F5\",\"blog_style_bg_color\":\"FFFFFF\",\"blog_style_transparent\":80,\"blog_style_box_shadow\":\"\",\"blog_style_align\":\"center\",\"blog_style_share_buttons_margin\":\"5px auto 10px auto\",\"blog_style_share_buttons_border_radius\":\"0\",\"blog_style_share_buttons_border_width\":0,\"blog_style_share_buttons_border_style\":\"none\",\"blog_style_share_buttons_border_color\":\"000000\",\"blog_style_share_buttons_bg_color\":\"FFFFFF\",\"blog_style_share_buttons_align\":\"right\",\"blog_style_img_font_size\":16,\"blog_style_img_font_family\":\"segoe ui\",\"blog_style_img_font_color\":\"000000\",\"blog_style_share_buttons_color\":\"B3AFAF\",\"blog_style_share_buttons_bg_transparent\":0,\"blog_style_share_buttons_font_size\":20,\"blog_style_gal_title_font_color\":\"CCCCCC\",\"blog_style_gal_title_font_style\":\"segoe ui\",\"blog_style_gal_title_font_size\":16,\"blog_style_gal_title_font_weight\":\"bold\",\"blog_style_gal_title_margin\":\"2px\",\"blog_style_gal_title_shadow\":\"0px 0px 0px #888888\",\"blog_style_gal_title_align\":\"center\",\"image_browser_margin\":\"2px auto\",\"image_browser_padding\":\"4px\",\"image_browser_border_radius\":\"0\",\"image_browser_border_width\":1,\"image_browser_border_style\":\"none\",\"image_browser_border_color\":\"F5F5F5\",\"image_browser_bg_color\":\"EBEBEB\",\"image_browser_box_shadow\":\"\",\"image_browser_transparent\":80,\"image_browser_align\":\"center\",\"image_browser_image_description_margin\":\"0px 5px 0px 5px\",\"image_browser_image_description_padding\":\"8px 8px 8px 8px\",\"image_browser_image_description_border_radius\":\"0\",\"image_browser_image_description_border_width\":1,\"image_browser_image_description_border_style\":\"none\",\"image_browser_image_description_border_color\":\"FFFFFF\",\"image_browser_image_description_bg_color\":\"EBEBEB\",\"image_browser_image_description_align\":\"center\",\"image_browser_img_font_size\":15,\"image_browser_img_font_family\":\"segoe ui\",\"image_browser_img_font_color\":\"000000\",\"image_browser_full_padding\":\"4px\",\"image_browser_full_border_radius\":\"0\",\"image_browser_full_border_width\":2,\"image_browser_full_border_style\":\"none\",\"image_browser_full_border_color\":\"F7F7F7\",\"image_browser_full_bg_color\":\"F5F5F5\",\"image_browser_full_transparent\":90,\"image_browser_image_title_align\":\"top\",\"image_browser_gal_title_font_color\":\"CCCCCC\",\"image_browser_gal_title_font_style\":\"segoe ui\",\"image_browser_gal_title_font_size\":16,\"image_browser_gal_title_font_weight\":\"bold\",\"image_browser_gal_title_margin\":\"2px\",\"image_browser_gal_title_shadow\":\"0px 0px 0px #888888\",\"image_browser_gal_title_align\":\"center\",\"lightbox_info_pos\":\"top\",\"lightbox_info_align\":\"right\",\"lightbox_info_bg_color\":\"000000\",\"lightbox_info_bg_transparent\":70,\"lightbox_info_border_width\":1,\"lightbox_info_border_style\":\"none\",\"lightbox_info_border_color\":\"000000\",\"lightbox_info_border_radius\":\"5px\",\"lightbox_info_padding\":\"5px\",\"lightbox_info_margin\":\"15px\",\"lightbox_title_color\":\"FFFFFF\",\"lightbox_title_font_style\":\"segoe ui\",\"lightbox_title_font_weight\":\"bold\",\"lightbox_title_font_size\":18,\"lightbox_description_color\":\"FFFFFF\",\"lightbox_description_font_style\":\"segoe ui\",\"lightbox_description_font_weight\":\"normal\",\"lightbox_description_font_size\":14,\"lightbox_rate_pos\":\"bottom\",\"lightbox_rate_align\":\"right\",\"lightbox_rate_icon\":\"star\",\"lightbox_rate_color\":\"F9D062\",\"lightbox_rate_size\":20,\"lightbox_rate_stars_count\":5,\"lightbox_rate_padding\":\"15px\",\"lightbox_rate_hover_color\":\"F7B50E\",\"lightbox_hit_pos\":\"bottom\",\"lightbox_hit_align\":\"left\",\"lightbox_hit_bg_color\":\"000000\",\"lightbox_hit_bg_transparent\":70,\"lightbox_hit_border_width\":1,\"lightbox_hit_border_style\":\"none\",\"lightbox_hit_border_color\":\"000000\",\"lightbox_hit_border_radius\":\"5px\",\"lightbox_hit_padding\":\"5px\",\"lightbox_hit_margin\":\"0 5px\",\"lightbox_hit_color\":\"FFFFFF\",\"lightbox_hit_font_style\":\"segoe ui\",\"lightbox_hit_font_weight\":\"normal\",\"lightbox_hit_font_size\":14,\"masonry_description_font_size\":12,\"masonry_description_color\":\"CCCCCC\",\"masonry_description_font_style\":\"segoe ui\",\"album_masonry_back_font_color\":\"000000\",\"album_masonry_back_font_style\":\"segoe ui\",\"album_masonry_back_font_size\":16,\"album_masonry_back_font_weight\":\"bold\",\"album_masonry_back_padding\":\"0\",\"album_masonry_title_font_color\":\"CCCCCC\",\"album_masonry_title_font_style\":\"segoe ui\",\"album_masonry_thumb_title_pos\":\"bottom\",\"album_masonry_title_font_size\":16,\"album_masonry_title_font_weight\":\"bold\",\"album_masonry_title_margin\":\"2px\",\"album_masonry_title_shadow\":\"0px 0px 0px #888888\",\"album_masonry_thumb_margin\":4,\"album_masonry_thumb_padding\":0,\"album_masonry_thumb_border_radius\":\"0\",\"album_masonry_thumb_border_width\":0,\"album_masonry_thumb_border_style\":\"none\",\"album_masonry_thumb_border_color\":\"CCCCCC\",\"album_masonry_thumb_bg_color\":\"FFFFFF\",\"album_masonry_thumbs_bg_color\":\"FFFFFF\",\"album_masonry_thumb_bg_transparent\":0,\"album_masonry_thumb_box_shadow\":\"0px 0px 0px #888888\",\"album_masonry_thumb_transparent\":100,\"album_masonry_thumb_align\":\"center\",\"album_masonry_thumb_hover_effect\":\"scale\",\"album_masonry_thumb_hover_effect_value\":\"1.1\",\"album_masonry_thumb_transition\":0,\"album_masonry_gal_title_font_color\":\"CCCCCC\",\"album_masonry_gal_title_font_style\":\"segoe ui\",\"album_masonry_gal_title_font_size\":16,\"album_masonry_gal_title_font_weight\":\"bold\",\"album_masonry_gal_title_margin\":\"2px\",\"album_masonry_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_masonry_gal_title_align\":\"center\",\"mosaic_thumb_padding\":4,\"mosaic_thumb_border_radius\":\"0\",\"mosaic_thumb_border_width\":0,\"mosaic_thumb_border_style\":\"none\",\"mosaic_thumb_border_color\":\"CCCCCC\",\"mosaic_thumbs_bg_color\":\"FFFFFF\",\"mosaic_thumb_bg_transparent\":0,\"mosaic_thumb_transparent\":100,\"mosaic_thumb_align\":\"center\",\"mosaic_thumb_hover_effect\":\"scale\",\"mosaic_thumb_hover_effect_value\":\"1.1\",\"mosaic_thumb_title_font_color\":\"CCCCCC\",\"mosaic_thumb_title_font_style\":\"segoe ui\",\"mosaic_thumb_title_font_weight\":\"bold\",\"mosaic_thumb_title_margin\":\"2px\",\"mosaic_thumb_title_shadow\":\"0px 0px 0px #888888\",\"mosaic_thumb_title_font_size\":16,\"mosaic_thumb_gal_title_font_color\":\"CCCCCC\",\"mosaic_thumb_gal_title_font_style\":\"segoe ui\",\"mosaic_thumb_gal_title_font_size\":16,\"mosaic_thumb_gal_title_font_weight\":\"bold\",\"mosaic_thumb_gal_title_margin\":\"2px\",\"mosaic_thumb_gal_title_shadow\":\"0px 0px 0px #888888\",\"mosaic_thumb_gal_title_align\":\"center\",\"carousel_cont_bg_color\":\"000000\",\"carousel_cont_btn_transparent\":0,\"carousel_close_btn_transparent\":100,\"carousel_rl_btn_bg_color\":\"000000\",\"carousel_rl_btn_border_radius\":\"20px\",\"carousel_rl_btn_border_width\":0,\"carousel_rl_btn_border_style\":\"none\",\"carousel_rl_btn_border_color\":\"FFFFFF\",\"carousel_rl_btn_color\":\"FFFFFF\",\"carousel_rl_btn_height\":40,\"carousel_rl_btn_size\":20,\"carousel_play_pause_btn_size\":20,\"carousel_rl_btn_width\":40,\"carousel_close_rl_btn_hover_color\":\"CCCCCC\",\"carousel_rl_btn_style\":\"fa-chevron\",\"carousel_mergin_bottom\":\"0.5\",\"carousel_font_family\":\"segoe ui\",\"carousel_feature_border_width\":2,\"carousel_feature_border_style\":\"solid\",\"carousel_feature_border_color\":\"5D204F\",\"carousel_caption_background_color\":\"000000\",\"carousel_caption_bottom\":0,\"carousel_caption_p_mergin\":0,\"carousel_caption_p_pedding\":5,\"carousel_caption_p_font_weight\":\"bold\",\"carousel_caption_p_font_size\":14,\"carousel_caption_p_color\":\"white\",\"carousel_title_opacity\":100,\"carousel_title_border_radius\":\"5px\",\"mosaic_thumb_transition\":1}', 1),
(2, 'Theme 2', '{\"thumb_margin\":4,\"thumb_padding\":4,\"thumb_border_radius\":\"0\",\"thumb_border_width\":5,\"thumb_border_style\":\"none\",\"thumb_border_color\":\"FFFFFF\",\"thumb_bg_color\":\"E8E8E8\",\"thumbs_bg_color\":\"FFFFFF\",\"thumb_bg_transparent\":0,\"thumb_box_shadow\":\"0px 0px 0px #888888\",\"thumb_transparent\":100,\"thumb_align\":\"center\",\"thumb_hover_effect\":\"rotate\",\"thumb_hover_effect_value\":\"2deg\",\"thumb_transition\":1,\"thumb_title_font_color\":\"CCCCCC\",\"thumb_title_font_style\":\"segoe ui\",\"thumb_title_pos\":\"bottom\",\"thumb_title_font_size\":16,\"thumb_title_font_weight\":\"bold\",\"thumb_title_margin\":\"5px\",\"thumb_title_shadow\":\"\",\"thumb_gal_title_font_color\":\"CCCCCC\",\"thumb_gal_title_font_style\":\"segoe ui\",\"thumb_gal_title_font_size\":16,\"thumb_gal_title_font_weight\":\"bold\",\"thumb_gal_title_margin\":\"2px\",\"thumb_gal_title_shadow\":\"0px 0px 0px #888888\",\"thumb_gal_title_align\":\"center\",\"page_nav_position\":\"bottom\",\"page_nav_align\":\"center\",\"page_nav_number\":0,\"page_nav_font_size\":12,\"page_nav_font_style\":\"segoe ui\",\"page_nav_font_color\":\"666666\",\"page_nav_font_weight\":\"bold\",\"page_nav_border_width\":1,\"page_nav_border_style\":\"none\",\"page_nav_border_color\":\"E3E3E3\",\"page_nav_border_radius\":\"0\",\"page_nav_margin\":\"0\",\"page_nav_padding\":\"3px 6px\",\"page_nav_button_bg_color\":\"FCFCFC\",\"page_nav_button_bg_transparent\":100,\"page_nav_box_shadow\":\"0\",\"page_nav_button_transition\":1,\"page_nav_button_text\":0,\"lightbox_overlay_bg_color\":\"000000\",\"lightbox_overlay_bg_transparent\":70,\"lightbox_bg_color\":\"000000\",\"lightbox_ctrl_btn_pos\":\"bottom\",\"lightbox_ctrl_btn_align\":\"center\",\"lightbox_ctrl_btn_height\":20,\"lightbox_ctrl_btn_margin_top\":10,\"lightbox_ctrl_btn_margin_left\":7,\"lightbox_ctrl_btn_transparent\":80,\"lightbox_ctrl_btn_color\":\"FFFFFF\",\"lightbox_toggle_btn_height\":14,\"lightbox_toggle_btn_width\":100,\"lightbox_ctrl_cont_bg_color\":\"000000\",\"lightbox_ctrl_cont_transparent\":80,\"lightbox_ctrl_cont_border_radius\":4,\"lightbox_close_btn_transparent\":95,\"lightbox_close_btn_bg_color\":\"000000\",\"lightbox_close_btn_border_width\":0,\"lightbox_close_btn_border_radius\":\"16px\",\"lightbox_close_btn_border_style\":\"none\",\"lightbox_close_btn_border_color\":\"FFFFFF\",\"lightbox_close_btn_box_shadow\":\"\",\"lightbox_close_btn_color\":\"FFFFFF\",\"lightbox_close_btn_size\":10,\"lightbox_close_btn_width\":20,\"lightbox_close_btn_height\":20,\"lightbox_close_btn_top\":\"-10\",\"lightbox_close_btn_right\":\"-10\",\"lightbox_close_btn_full_color\":\"FFFFFF\",\"lightbox_rl_btn_bg_color\":\"000000\",\"lightbox_rl_btn_border_radius\":\"20px\",\"lightbox_rl_btn_border_width\":2,\"lightbox_rl_btn_border_style\":\"none\",\"lightbox_rl_btn_border_color\":\"FFFFFF\",\"lightbox_rl_btn_box_shadow\":\"\",\"lightbox_rl_btn_color\":\"FFFFFF\",\"lightbox_rl_btn_height\":40,\"lightbox_rl_btn_width\":40,\"lightbox_rl_btn_size\":20,\"lightbox_close_rl_btn_hover_color\":\"FFFFFF\",\"lightbox_comment_pos\":\"left\",\"lightbox_comment_width\":400,\"lightbox_comment_bg_color\":\"000000\",\"lightbox_comment_font_color\":\"CCCCCC\",\"lightbox_comment_font_style\":\"segoe ui\",\"lightbox_comment_font_size\":12,\"lightbox_comment_button_bg_color\":\"333333\",\"lightbox_comment_button_border_color\":\"666666\",\"lightbox_comment_button_border_width\":1,\"lightbox_comment_button_border_style\":\"none\",\"lightbox_comment_button_border_radius\":\"3px\",\"lightbox_comment_button_padding\":\"3px 10px\",\"lightbox_comment_input_bg_color\":\"333333\",\"lightbox_comment_input_border_color\":\"666666\",\"lightbox_comment_input_border_width\":1,\"lightbox_comment_input_border_style\":\"none\",\"lightbox_comment_input_border_radius\":\"0\",\"lightbox_comment_input_padding\":\"3px\",\"lightbox_comment_separator_width\":1,\"lightbox_comment_separator_style\":\"solid\",\"lightbox_comment_separator_color\":\"2B2B2B\",\"lightbox_comment_author_font_size\":14,\"lightbox_comment_date_font_size\":10,\"lightbox_comment_body_font_size\":12,\"lightbox_comment_share_button_color\":\"FFFFFF\",\"lightbox_filmstrip_pos\":\"top\",\"lightbox_filmstrip_rl_bg_color\":\"2B2B2B\",\"lightbox_filmstrip_rl_btn_size\":20,\"lightbox_filmstrip_rl_btn_color\":\"FFFFFF\",\"lightbox_filmstrip_thumb_margin\":\"0 1px\",\"lightbox_filmstrip_thumb_border_width\":1,\"lightbox_filmstrip_thumb_border_style\":\"none\",\"lightbox_filmstrip_thumb_border_color\":\"000000\",\"lightbox_filmstrip_thumb_border_radius\":\"0\",\"lightbox_filmstrip_thumb_deactive_transparent\":80,\"lightbox_filmstrip_thumb_active_border_width\":0,\"lightbox_filmstrip_thumb_active_border_color\":\"FFFFFF\",\"lightbox_rl_btn_style\":\"fa-chevron\",\"lightbox_rl_btn_transparent\":80,\"lightbox_bg_transparent\":100,\"album_compact_back_font_color\":\"000000\",\"album_compact_back_font_style\":\"segoe ui\",\"album_compact_back_font_size\":14,\"album_compact_back_font_weight\":\"normal\",\"album_compact_back_padding\":\"0\",\"album_compact_title_font_color\":\"CCCCCC\",\"album_compact_title_font_style\":\"segoe ui\",\"album_compact_thumb_title_pos\":\"bottom\",\"album_compact_title_font_size\":16,\"album_compact_title_font_weight\":\"bold\",\"album_compact_title_margin\":\"5px\",\"album_compact_title_shadow\":\"\",\"album_compact_thumb_margin\":4,\"album_compact_thumb_padding\":4,\"album_compact_thumb_border_radius\":\"0\",\"album_compact_thumb_border_width\":1,\"album_compact_thumb_border_style\":\"none\",\"album_compact_thumb_border_color\":\"000000\",\"album_compact_thumb_bg_color\":\"E8E8E8\",\"album_compact_thumbs_bg_color\":\"FFFFFF\",\"album_compact_thumb_bg_transparent\":100,\"album_compact_thumb_box_shadow\":\"\",\"album_compact_thumb_transparent\":100,\"album_compact_thumb_align\":\"center\",\"album_compact_thumb_hover_effect\":\"rotate\",\"album_compact_thumb_hover_effect_value\":\"2deg\",\"album_compact_thumb_transition\":1,\"album_compact_gal_title_font_color\":\"CCCCCC\",\"album_compact_gal_title_font_style\":\"segoe ui\",\"album_compact_gal_title_font_size\":16,\"album_compact_gal_title_font_weight\":\"bold\",\"album_compact_gal_title_margin\":\"2px\",\"album_compact_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_compact_gal_title_align\":\"center\",\"album_extended_thumb_margin\":2,\"album_extended_thumb_padding\":4,\"album_extended_thumb_border_radius\":\"0\",\"album_extended_thumb_border_width\":4,\"album_extended_thumb_border_style\":\"none\",\"album_extended_thumb_border_color\":\"E8E8E8\",\"album_extended_thumb_bg_color\":\"E8E8E8\",\"album_extended_thumbs_bg_color\":\"FFFFFF\",\"album_extended_thumb_bg_transparent\":100,\"album_extended_thumb_box_shadow\":\"\",\"album_extended_thumb_transparent\":100,\"album_extended_thumb_align\":\"left\",\"album_extended_thumb_hover_effect\":\"rotate\",\"album_extended_thumb_hover_effect_value\":\"2deg\",\"album_extended_thumb_transition\":0,\"album_extended_back_font_color\":\"000000\",\"album_extended_back_font_style\":\"segoe ui\",\"album_extended_back_font_size\":16,\"album_extended_back_font_weight\":\"bold\",\"album_extended_back_padding\":\"0\",\"album_extended_div_bg_color\":\"FFFFFF\",\"album_extended_div_bg_transparent\":0,\"album_extended_div_border_radius\":\"0\",\"album_extended_div_margin\":\"0 0 5px 0\",\"album_extended_div_padding\":10,\"album_extended_div_separator_width\":1,\"album_extended_div_separator_style\":\"none\",\"album_extended_div_separator_color\":\"CCCCCC\",\"album_extended_thumb_div_bg_color\":\"FFFFFF\",\"album_extended_thumb_div_border_radius\":\"0\",\"album_extended_thumb_div_border_width\":0,\"album_extended_thumb_div_border_style\":\"none\",\"album_extended_thumb_div_border_color\":\"CCCCCC\",\"album_extended_thumb_div_padding\":\"0\",\"album_extended_text_div_bg_color\":\"FFFFFF\",\"album_extended_text_div_border_radius\":\"0\",\"album_extended_text_div_border_width\":1,\"album_extended_text_div_border_style\":\"none\",\"album_extended_text_div_border_color\":\"CCCCCC\",\"album_extended_text_div_padding\":\"5px\",\"album_extended_title_span_border_width\":1,\"album_extended_title_span_border_style\":\"none\",\"album_extended_title_span_border_color\":\"CCCCCC\",\"album_extended_title_font_color\":\"000000\",\"album_extended_title_font_style\":\"segoe ui\",\"album_extended_title_font_size\":16,\"album_extended_title_font_weight\":\"bold\",\"album_extended_title_margin_bottom\":2,\"album_extended_title_padding\":\"2px\",\"album_extended_desc_span_border_width\":1,\"album_extended_desc_span_border_style\":\"none\",\"album_extended_desc_span_border_color\":\"CCCCCC\",\"album_extended_desc_font_color\":\"000000\",\"album_extended_desc_font_style\":\"segoe ui\",\"album_extended_desc_font_size\":14,\"album_extended_desc_font_weight\":\"normal\",\"album_extended_desc_padding\":\"2px\",\"album_extended_desc_more_color\":\"FFC933\",\"album_extended_desc_more_size\":12,\"album_extended_gal_title_font_color\":\"CCCCCC\",\"album_extended_gal_title_font_style\":\"segoe ui\",\"album_extended_gal_title_font_size\":16,\"album_extended_gal_title_font_weight\":\"bold\",\"album_extended_gal_title_margin\":\"2px\",\"album_extended_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_extended_gal_title_align\":\"center\",\"masonry_thumb_padding\":4,\"masonry_thumb_border_radius\":\"2px\",\"masonry_thumb_border_width\":1,\"masonry_thumb_border_style\":\"none\",\"masonry_thumb_border_color\":\"CCCCCC\",\"masonry_thumbs_bg_color\":\"FFFFFF\",\"masonry_thumb_bg_transparent\":0,\"masonry_thumb_transparent\":80,\"masonry_thumb_align\":\"center\",\"masonry_thumb_hover_effect\":\"rotate\",\"masonry_thumb_hover_effect_value\":\"2deg\",\"masonry_thumb_transition\":0,\"masonry_thumb_gal_title_font_color\":\"CCCCCC\",\"masonry_thumb_gal_title_font_style\":\"segoe ui\",\"masonry_thumb_gal_title_font_size\":16,\"masonry_thumb_gal_title_font_weight\":\"bold\",\"masonry_thumb_gal_title_margin\":\"2px\",\"masonry_thumb_gal_title_shadow\":\"0px 0px 0px #888888\",\"masonry_thumb_gal_title_align\":\"center\",\"slideshow_cont_bg_color\":\"000000\",\"slideshow_close_btn_transparent\":100,\"slideshow_rl_btn_bg_color\":\"000000\",\"slideshow_rl_btn_border_radius\":\"20px\",\"slideshow_rl_btn_border_width\":0,\"slideshow_rl_btn_border_style\":\"none\",\"slideshow_rl_btn_border_color\":\"FFFFFF\",\"slideshow_rl_btn_box_shadow\":\"\",\"slideshow_rl_btn_color\":\"FFFFFF\",\"slideshow_rl_btn_height\":40,\"slideshow_rl_btn_size\":20,\"slideshow_rl_btn_width\":40,\"slideshow_close_rl_btn_hover_color\":\"DBDBDB\",\"slideshow_filmstrip_pos\":\"bottom\",\"slideshow_filmstrip_thumb_border_width\":1,\"slideshow_filmstrip_thumb_border_style\":\"none\",\"slideshow_filmstrip_thumb_border_color\":\"000000\",\"slideshow_filmstrip_thumb_border_radius\":\"0\",\"slideshow_filmstrip_thumb_margin\":\"0 1px\",\"slideshow_filmstrip_thumb_active_border_width\":0,\"slideshow_filmstrip_thumb_active_border_color\":\"FFFFFF\",\"slideshow_filmstrip_thumb_deactive_transparent\":80,\"slideshow_filmstrip_rl_bg_color\":\"303030\",\"slideshow_filmstrip_rl_btn_color\":\"FFFFFF\",\"slideshow_filmstrip_rl_btn_size\":20,\"slideshow_title_font_size\":16,\"slideshow_title_font\":\"segoe ui\",\"slideshow_title_color\":\"FFFFFF\",\"slideshow_title_opacity\":70,\"slideshow_title_border_radius\":\"5px\",\"slideshow_title_background_color\":\"000000\",\"slideshow_title_padding\":\"5px 10px 5px 10px\",\"slideshow_description_font_size\":14,\"slideshow_description_font\":\"segoe ui\",\"slideshow_description_color\":\"FFFFFF\",\"slideshow_description_opacity\":70,\"slideshow_description_border_radius\":\"0\",\"slideshow_description_background_color\":\"000000\",\"slideshow_description_padding\":\"5px 10px 5px 10px\",\"slideshow_dots_width\":10,\"slideshow_dots_height\":10,\"slideshow_dots_border_radius\":\"10px\",\"slideshow_dots_background_color\":\"292929\",\"slideshow_dots_margin\":1,\"slideshow_dots_active_background_color\":\"292929\",\"slideshow_dots_active_border_width\":2,\"slideshow_dots_active_border_color\":\"FFC933\",\"slideshow_play_pause_btn_size\":60,\"slideshow_rl_btn_style\":\"fa-chevron\",\"blog_style_margin\":\"2px\",\"blog_style_padding\":\"4px\",\"blog_style_border_radius\":\"0\",\"blog_style_border_width\":1,\"blog_style_border_style\":\"none\",\"blog_style_border_color\":\"CCCCCC\",\"blog_style_bg_color\":\"E8E8E8\",\"blog_style_transparent\":70,\"blog_style_box_shadow\":\"\",\"blog_style_align\":\"center\",\"blog_style_share_buttons_margin\":\"5px auto 10px auto\",\"blog_style_share_buttons_border_radius\":\"0\",\"blog_style_share_buttons_border_width\":0,\"blog_style_share_buttons_border_style\":\"none\",\"blog_style_share_buttons_border_color\":\"000000\",\"blog_style_share_buttons_bg_color\":\"FFFFFF\",\"blog_style_share_buttons_align\":\"right\",\"blog_style_img_font_size\":16,\"blog_style_img_font_family\":\"segoe ui\",\"blog_style_img_font_color\":\"000000\",\"blog_style_share_buttons_color\":\"A1A1A1\",\"blog_style_share_buttons_bg_transparent\":0,\"blog_style_share_buttons_font_size\":20,\"blog_style_image_title_align\":\"top\",\"blog_style_gal_title_font_color\":\"CCCCCC\",\"blog_style_gal_title_font_style\":\"segoe ui\",\"blog_style_gal_title_font_size\":16,\"blog_style_gal_title_font_weight\":\"bold\",\"blog_style_gal_title_margin\":\"2px\",\"blog_style_gal_title_shadow\":\"0px 0px 0px #888888\",\"blog_style_gal_title_align\":\"center\",\"image_browser_margin\":\"2px auto\",\"image_browser_padding\":\"4px\",\"image_browser_border_radius\":\"2px\",\"image_browser_border_width\":1,\"image_browser_border_style\":\"none\",\"image_browser_border_color\":\"E8E8E8\",\"image_browser_bg_color\":\"E8E8E8\",\"image_browser_box_shadow\":\"\",\"image_browser_transparent\":80,\"image_browser_align\":\"center\",\"image_browser_image_description_margin\":\"24px 0px 0px 0px\",\"image_browser_image_description_padding\":\"8px 8px 8px 8px\",\"image_browser_image_description_border_radius\":\"0\",\"image_browser_image_description_border_width\":1,\"image_browser_image_description_border_style\":\"none\",\"image_browser_image_description_border_color\":\"FFFFFF\",\"image_browser_image_description_bg_color\":\"E8E8E8\",\"image_browser_image_description_align\":\"center\",\"image_browser_img_font_size\":14,\"image_browser_img_font_family\":\"segoe ui\",\"image_browser_img_font_color\":\"000000\",\"image_browser_full_padding\":\"4px\",\"image_browser_full_border_radius\":\"0\",\"image_browser_full_border_width\":1,\"image_browser_full_border_style\":\"solid\",\"image_browser_full_border_color\":\"EDEDED\",\"image_browser_full_bg_color\":\"FFFFFF\",\"image_browser_full_transparent\":90,\"image_browser_image_title_align\":\"top\",\"image_browser_gal_title_font_color\":\"CCCCCC\",\"image_browser_gal_title_font_style\":\"segoe ui\",\"image_browser_gal_title_font_size\":16,\"image_browser_gal_title_font_weight\":\"bold\",\"image_browser_gal_title_margin\":\"2px\",\"image_browser_gal_title_shadow\":\"0px 0px 0px #888888\",\"image_browser_gal_title_align\":\"center\",\"lightbox_info_pos\":\"top\",\"lightbox_info_align\":\"right\",\"lightbox_info_bg_color\":\"000000\",\"lightbox_info_bg_transparent\":70,\"lightbox_info_border_width\":1,\"lightbox_info_border_style\":\"none\",\"lightbox_info_border_color\":\"000000\",\"lightbox_info_border_radius\":\"5px\",\"lightbox_info_padding\":\"5px\",\"lightbox_info_margin\":\"15px\",\"lightbox_title_color\":\"FFFFFF\",\"lightbox_title_font_style\":\"segoe ui\",\"lightbox_title_font_weight\":\"bold\",\"lightbox_title_font_size\":18,\"lightbox_description_color\":\"FFFFFF\",\"lightbox_description_font_style\":\"segoe ui\",\"lightbox_description_font_weight\":\"normal\",\"lightbox_description_font_size\":14,\"lightbox_rate_pos\":\"bottom\",\"lightbox_rate_align\":\"right\",\"lightbox_rate_icon\":\"star\",\"lightbox_rate_color\":\"F9D062\",\"lightbox_rate_size\":20,\"lightbox_rate_stars_count\":5,\"lightbox_rate_padding\":\"15px\",\"lightbox_rate_hover_color\":\"F7B50E\",\"lightbox_hit_pos\":\"bottom\",\"lightbox_hit_align\":\"left\",\"lightbox_hit_bg_color\":\"000000\",\"lightbox_hit_bg_transparent\":70,\"lightbox_hit_border_width\":1,\"lightbox_hit_border_style\":\"none\",\"lightbox_hit_border_color\":\"000000\",\"lightbox_hit_border_radius\":\"5px\",\"lightbox_hit_padding\":\"5px\",\"lightbox_hit_margin\":\"0 5px\",\"lightbox_hit_color\":\"FFFFFF\",\"lightbox_hit_font_style\":\"segoe ui\",\"lightbox_hit_font_weight\":\"normal\",\"lightbox_hit_font_size\":14,\"masonry_description_font_size\":12,\"masonry_description_color\":\"CCCCCC\",\"masonry_description_font_style\":\"segoe ui\",\"album_masonry_back_font_color\":\"000000\",\"album_masonry_back_font_style\":\"segoe ui\",\"album_masonry_back_font_size\":14,\"album_masonry_back_font_weight\":\"normal\",\"album_masonry_back_padding\":\"0\",\"album_masonry_title_font_color\":\"CCCCCC\",\"album_masonry_title_font_style\":\"segoe ui\",\"album_masonry_thumb_title_pos\":\"bottom\",\"album_masonry_title_font_size\":16,\"album_masonry_title_font_weight\":\"bold\",\"album_masonry_title_margin\":\"5px\",\"album_masonry_title_shadow\":\"\",\"album_masonry_thumb_margin\":4,\"album_masonry_thumb_padding\":4,\"album_masonry_thumb_border_radius\":\"0\",\"album_masonry_thumb_border_width\":1,\"album_masonry_thumb_border_style\":\"none\",\"album_masonry_thumb_border_color\":\"000000\",\"album_masonry_thumb_bg_color\":\"E8E8E8\",\"album_masonry_thumbs_bg_color\":\"FFFFFF\",\"album_masonry_thumb_bg_transparent\":100,\"album_masonry_thumb_box_shadow\":\"\",\"album_masonry_thumb_transparent\":100,\"album_masonry_thumb_align\":\"center\",\"album_masonry_thumb_hover_effect\":\"rotate\",\"album_masonry_thumb_hover_effect_value\":\"2deg\",\"album_masonry_thumb_transition\":1,\"album_masonry_gal_title_font_color\":\"CCCCCC\",\"album_masonry_gal_title_font_style\":\"segoe ui\",\"album_masonry_gal_title_font_size\":16,\"album_masonry_gal_title_font_weight\":\"bold\",\"album_masonry_gal_title_margin\":\"2px\",\"album_masonry_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_masonry_gal_title_align\":\"center\",\"mosaic_thumb_padding\":4,\"mosaic_thumb_border_radius\":\"2px\",\"mosaic_thumb_border_width\":1,\"mosaic_thumb_border_style\":\"none\",\"mosaic_thumb_border_color\":\"CCCCCC\",\"mosaic_thumbs_bg_color\":\"FFFFFF\",\"mosaic_thumb_bg_transparent\":0,\"mosaic_thumb_transparent\":80,\"mosaic_thumb_align\":\"center\",\"mosaic_thumb_hover_effect\":\"rotate\",\"mosaic_thumb_hover_effect_value\":\"2deg\",\"mosaic_thumb_title_font_color\":\"CCCCCC\",\"mosaic_thumb_title_font_style\":\"segoe ui\",\"mosaic_thumb_title_font_weight\":\"bold\",\"mosaic_thumb_title_margin\":\"2px\",\"mosaic_thumb_title_shadow\":\"0px 0px 0px #888888\",\"mosaic_thumb_title_font_size\":16,\"mosaic_thumb_gal_title_font_color\":\"CCCCCC\",\"mosaic_thumb_gal_title_font_style\":\"segoe ui\",\"mosaic_thumb_gal_title_font_size\":16,\"mosaic_thumb_gal_title_font_weight\":\"bold\",\"mosaic_thumb_gal_title_margin\":\"2px\",\"mosaic_thumb_gal_title_shadow\":\"0px 0px 0px #888888\",\"mosaic_thumb_gal_title_align\":\"center\",\"carousel_cont_bg_color\":\"000000\",\"carousel_cont_btn_transparent\":0,\"carousel_close_btn_transparent\":100,\"carousel_rl_btn_bg_color\":\"000000\",\"carousel_rl_btn_border_radius\":\"20px\",\"carousel_rl_btn_border_width\":0,\"carousel_rl_btn_border_style\":\"none\",\"carousel_rl_btn_border_color\":\"FFFFFF\",\"carousel_rl_btn_color\":\"FFFFFF\",\"carousel_rl_btn_height\":40,\"carousel_rl_btn_size\":20,\"carousel_play_pause_btn_size\":20,\"carousel_rl_btn_width\":40,\"carousel_close_rl_btn_hover_color\":\"CCCCCC\",\"carousel_rl_btn_style\":\"fa-chevron\",\"carousel_mergin_bottom\":\"0.5\",\"carousel_font_family\":\"segoe ui\",\"carousel_feature_border_width\":2,\"carousel_feature_border_style\":\"solid\",\"carousel_feature_border_color\":\"5D204F\",\"carousel_caption_background_color\":\"000000\",\"carousel_caption_bottom\":0,\"carousel_caption_p_mergin\":0,\"carousel_caption_p_pedding\":5,\"carousel_caption_p_font_weight\":\"bold\",\"carousel_caption_p_font_size\":14,\"carousel_caption_p_color\":\"white\",\"carousel_title_opacity\":100,\"carousel_title_border_radius\":\"5px\",\"mosaic_thumb_transition\":1}', 0);

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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-01-08 09:50:00', '2018-01-08 09:50:00', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_iowd_images`
--

CREATE TABLE `wp_iowd_images` (
  `id` int(16) NOT NULL,
  `post_id` varchar(256) NOT NULL,
  `size` varchar(256) NOT NULL,
  `path` varchar(256) NOT NULL,
  `image_size` int(16) NOT NULL,
  `image_orig_size` int(16) NOT NULL,
  `updated_date` datetime NOT NULL,
  `status` varchar(256) NOT NULL,
  `media` int(16) NOT NULL,
  `already_optimized` varchar(256) NOT NULL,
  `converted` int(16) NOT NULL,
  `resized` int(16) NOT NULL,
  `deleted` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(1, 'siteurl', 'http://localhost/psolvingegypt/consult', 'yes'),
(2, 'home', 'http://localhost/psolvingegypt/consult', 'yes'),
(3, 'blogname', 'consult', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'me@ahmedelsayed.me', 'yes'),
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
(18, 'default_category', '7', 'yes'),
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
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:9:{i:0;s:21:\"polylang/polylang.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:4;s:53:\"custom-post-type-widgets/custom-post-type-widgets.php\";i:5;s:28:\"image-optimizer-wd/io-wd.php\";i:6;s:33:\"logo-slider-wp/logo-slider-wp.php\";i:7;s:31:\"photo-gallery/photo-gallery.php\";i:8;s:52:\"polylang-theme-strings/mw-polylang-theme-strings.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'consult', 'yes'),
(41, 'stylesheet', 'consult', 'yes'),
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
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:2:{s:52:\"polylang-theme-strings/mw-polylang-theme-strings.php\";a:2:{i:0;s:25:\"MW_Polylang_Theme_Strings\";i:1;s:9:\"Uninstall\";}s:53:\"custom-post-type-widgets/custom-post-type-widgets.php\";a:2:{i:0;s:24:\"Custom_Post_Type_Widgets\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:16:\"footer-sidebar-1\";a:0:{}s:16:\"footer-sidebar-2\";a:0:{}s:6:\"header\";a:1:{i:0;s:10:\"polylang-2\";}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:5:{i:1516009877;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1516009878;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1516009949;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1516017028;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.1\";s:7:\"version\";s:5:\"4.9.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1516002470;s:15:\"version_checked\";s:5:\"4.9.1\";s:12:\"translations\";a:0:{}}', 'no'),
(117, '_site_transient_timeout_browser_c89882595a0b6fb065599d15013dcdb5', '1516009886', 'no'),
(118, '_site_transient_browser_c89882595a0b6fb065599d15013dcdb5', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"63.0.3239.132\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(120, 'can_compress_scripts', '1', 'no'),
(135, 'recently_activated', 'a:1:{s:19:\"akismet/akismet.php\";i:1515405303;}', 'yes'),
(137, 'acf_version', '4.4.12', 'yes'),
(138, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"4.9.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1515405164;s:7:\"version\";s:5:\"4.9.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(141, 'cptui_new_install', 'false', 'yes'),
(142, 'polylang', 'a:13:{s:7:\"browser\";i:1;s:7:\"rewrite\";i:1;s:12:\"hide_default\";i:1;s:10:\"force_lang\";i:1;s:13:\"redirect_lang\";i:0;s:13:\"media_support\";i:1;s:9:\"uninstall\";i:0;s:4:\"sync\";a:0:{}s:10:\"post_types\";a:5:{i:0;s:8:\"services\";i:1;s:12:\"logosliderwp\";i:2;s:11:\"bwg_gallery\";i:3;s:9:\"bwg_album\";i:4;s:7:\"bwg_tag\";}s:10:\"taxonomies\";a:2:{i:0;s:7:\"bwg_tag\";i:1;s:15:\"logosliderwpcat\";}s:7:\"domains\";a:0:{}s:7:\"version\";s:5:\"2.2.7\";s:12:\"default_lang\";s:2:\"en\";}', 'yes'),
(143, 'polylang_wpml_strings', 'a:13:{i:0;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:8:\"facebook\";s:6:\"string\";s:40:\"https://www.facebook.com/MedicoLegal.eg/\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:1;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:8:\"linkedin\";s:6:\"string\";s:52:\"https://www.linkedin.com/in/amr-el-ghazali-ab319b63/\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:2;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:5:\"phone\";s:6:\"string\";s:11:\"01004792158\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:3;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:5:\"email\";s:6:\"string\";s:16:\" info@domain.com\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:4;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:9:\"instagram\";s:6:\"string\";s:42:\"https://www.instagram.com/estsharat.eg123/\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:5;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:7:\"twitter\";s:6:\"string\";s:30:\"https://twitter.com/estsharat2\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:6;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:11:\"title_about\";s:6:\"string\";s:8:\"About us\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:7;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:17:\"description_about\";s:6:\"string\";s:644:\"<p>ConsultPress over 20 years of experience we’ll ensure you always get the best guidance. We serve clients at every level of their organization, in whatever capacity we can be most useful, whether as a trusted advisor to top management or as a hands-on coach for front line employees. For every engagement, we assemble a team with the most appropriate experience and expertise. Our goal is to optimise your business relationships by tailoring our services to your individual requirements We strive to build a relationship of trust with every client, for the long-term.70% of our work is for clients that we have served for over 10 years.</p>\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:8;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:14:\"flaticon_clock\";s:6:\"string\";s:45:\"Week Days : 07:30 – 19:00  Sunday : Holiday\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:9;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:7:\"address\";s:6:\"string\";s:25:\"4 Maher Pasha Street <br>\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:10;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:11:\"text_slider\";s:6:\"string\";s:89:\"ConsultPress over 20 years of experience we’ll ensure you always get the best guidance.\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:11;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:13:\"title_contact\";s:6:\"string\";s:11:\"Contact  Us\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:12;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:19:\"description_contact\";s:6:\"string\";s:385:\"If you would like to contact someone by phone, fax or post and you don\'t know the address, please consult our world wide branch If you would like to contact someone by phone, fax or post and you don\'t know the address, please consult our world wide branch If you would like to contact someone by phone, fax or post and you don\'t know the address, please consult our world wide branch\r\n\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}}', 'yes'),
(144, 'widget_polylang', 'a:2:{i:2;a:7:{s:5:\"title\";s:0:\"\";s:8:\"dropdown\";i:1;s:10:\"show_names\";i:1;s:10:\"show_flags\";i:0;s:10:\"force_home\";i:0;s:12:\"hide_current\";i:0;s:22:\"hide_if_no_translation\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(145, 'mw_polylang_strings_consult_data', 'a:2:{s:4:\"name\";s:0:\"\";s:7:\"strings\";a:0:{}}', 'yes'),
(146, 'wd_bwg_version', '1.3.67', 'no'),
(147, 'wd_bwg_theme_version', '1.0.0', 'no'),
(148, 'widget_bwp_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(149, 'widget_bwp_gallery_slideshow', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(150, 'bwg_admin_notice', 'a:1:{s:15:\"two_week_review\";a:2:{s:5:\"start\";s:9:\"1/22/2018\";s:3:\"int\";i:14;}}', 'yes'),
(151, 'logosliderwp_basic', '', 'yes'),
(152, 'logosliderwp_responsive', '', 'yes'),
(153, 'logosliderwp_config', '', 'yes'),
(154, 'logosliderwp_style', '', 'yes'),
(156, 'widget_custom-post-type-archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(157, 'widget_custom-post-type-categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(158, 'widget_custom-post-type-calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(159, 'widget_custom-post-type-tag-cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(160, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(163, 'theme_mods_twentyseventeen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1515411306;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(164, 'current_theme', '', 'yes'),
(165, 'theme_mods_consult', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:19:\"ot_set_google_fonts\";a:0:{}}', 'yes'),
(166, 'theme_switched', '', 'yes'),
(168, 'option_tree_settings', 'a:3:{s:8:\"sections\";a:4:{i:0;a:2:{s:5:\"title\";s:7:\"General\";s:2:\"id\";s:7:\"general\";}i:1;a:2:{s:5:\"title\";s:7:\"contont\";s:2:\"id\";s:7:\"contont\";}i:2;a:2:{s:5:\"title\";s:6:\"Footer\";s:2:\"id\";s:6:\"footer\";}i:3;a:2:{s:5:\"title\";s:6:\"Slider\";s:2:\"id\";s:6:\"slider\";}}s:8:\"settings\";a:16:{i:0;a:13:{s:5:\"label\";s:4:\"logo\";s:2:\"id\";s:4:\"logo\";s:4:\"type\";s:6:\"upload\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:7:\"general\";}i:1;a:13:{s:5:\"label\";s:8:\"facebook\";s:2:\"id\";s:8:\"facebook\";s:4:\"type\";s:4:\"text\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:7:\"general\";}i:2;a:13:{s:5:\"label\";s:9:\"instagram\";s:2:\"id\";s:9:\"instagram\";s:4:\"type\";s:4:\"text\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:7:\"general\";}i:3;a:13:{s:5:\"label\";s:7:\"twitter\";s:2:\"id\";s:7:\"twitter\";s:4:\"type\";s:4:\"text\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:7:\"general\";}i:4;a:13:{s:5:\"label\";s:8:\"linkedin\";s:2:\"id\";s:8:\"linkedin\";s:4:\"type\";s:4:\"text\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:7:\"general\";}i:5;a:13:{s:5:\"label\";s:5:\"phone\";s:2:\"id\";s:5:\"phone\";s:4:\"type\";s:4:\"text\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:7:\"general\";}i:6;a:13:{s:5:\"label\";s:6:\"E-mail\";s:2:\"id\";s:5:\"email\";s:4:\"type\";s:4:\"text\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:7:\"general\";}i:7;a:13:{s:5:\"label\";s:7:\"phone 2\";s:2:\"id\";s:6:\"phone2\";s:4:\"type\";s:4:\"text\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:7:\"general\";}i:8;a:13:{s:5:\"label\";s:11:\"text slider\";s:2:\"id\";s:11:\"text_slider\";s:4:\"type\";s:4:\"text\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:7:\"contont\";}i:9;a:13:{s:5:\"label\";s:13:\"title contact\";s:2:\"id\";s:13:\"title_contact\";s:4:\"type\";s:4:\"text\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:7:\"contont\";}i:10;a:13:{s:5:\"label\";s:19:\"Description Contact\";s:2:\"id\";s:19:\"description_contact\";s:4:\"type\";s:8:\"textarea\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:7:\"contont\";}i:11;a:13:{s:5:\"label\";s:5:\"Title\";s:2:\"id\";s:11:\"title_about\";s:4:\"type\";s:4:\"text\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:6:\"footer\";}i:12;a:13:{s:5:\"label\";s:11:\"Description\";s:2:\"id\";s:17:\"description_about\";s:4:\"type\";s:8:\"textarea\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:6:\"footer\";}i:13;a:13:{s:5:\"label\";s:14:\"Flaticon Clock\";s:2:\"id\";s:14:\"flaticon_clock\";s:4:\"type\";s:4:\"text\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:6:\"footer\";}i:14;a:13:{s:5:\"label\";s:7:\"Address\";s:2:\"id\";s:7:\"address\";s:4:\"type\";s:4:\"text\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:6:\"footer\";}i:15;a:13:{s:5:\"label\";s:6:\"banner\";s:2:\"id\";s:6:\"banner\";s:4:\"type\";s:6:\"slider\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:6:\"slider\";}}s:15:\"contextual_help\";a:1:{s:7:\"sidebar\";s:0:\"\";}}', 'yes'),
(169, 'option_tree', 'a:16:{s:4:\"logo\";s:74:\"http://localhost/psolvingegypt/consult/wp-content/uploads/2018/01/logo.png\";s:8:\"facebook\";s:40:\"https://www.facebook.com/MedicoLegal.eg/\";s:9:\"instagram\";s:42:\"https://www.instagram.com/estsharat.eg123/\";s:7:\"twitter\";s:30:\"https://twitter.com/estsharat2\";s:8:\"linkedin\";s:52:\"https://www.linkedin.com/in/amr-el-ghazali-ab319b63/\";s:5:\"phone\";s:11:\"01004792158\";s:5:\"email\";s:16:\" info@domain.com\";s:6:\"phone2\";s:0:\"\";s:11:\"text_slider\";s:89:\"ConsultPress over 20 years of experience we’ll ensure you always get the best guidance.\";s:13:\"title_contact\";s:11:\"Contact  Us\";s:19:\"description_contact\";s:385:\"If you would like to contact someone by phone, fax or post and you don\'t know the address, please consult our world wide branch If you would like to contact someone by phone, fax or post and you don\'t know the address, please consult our world wide branch If you would like to contact someone by phone, fax or post and you don\'t know the address, please consult our world wide branch\r\n\";s:11:\"title_about\";s:8:\"About us\";s:17:\"description_about\";s:644:\"<p>ConsultPress over 20 years of experience we’ll ensure you always get the best guidance. We serve clients at every level of their organization, in whatever capacity we can be most useful, whether as a trusted advisor to top management or as a hands-on coach for front line employees. For every engagement, we assemble a team with the most appropriate experience and expertise. Our goal is to optimise your business relationships by tailoring our services to your individual requirements We strive to build a relationship of trust with every client, for the long-term.70% of our work is for clients that we have served for over 10 years.</p>\";s:14:\"flaticon_clock\";s:45:\"Week Days : 07:30 – 19:00  Sunday : Holiday\";s:7:\"address\";s:25:\"4 Maher Pasha Street <br>\";s:6:\"banner\";a:3:{i:0;a:4:{s:5:\"title\";s:0:\"\";s:5:\"image\";s:77:\"http://localhost/psolvingegypt/consult/wp-content/uploads/2018/01/slide-3.jpg\";s:4:\"link\";s:0:\"\";s:11:\"description\";s:0:\"\";}i:1;a:4:{s:5:\"title\";s:0:\"\";s:5:\"image\";s:77:\"http://localhost/psolvingegypt/consult/wp-content/uploads/2018/01/slide-2.jpg\";s:4:\"link\";s:0:\"\";s:11:\"description\";s:0:\"\";}i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"image\";s:77:\"http://localhost/psolvingegypt/consult/wp-content/uploads/2018/01/slide-1.jpg\";s:4:\"link\";s:0:\"\";s:11:\"description\";s:0:\"\";}}}', 'yes'),
(170, 'ot_media_post_ID', '5', 'yes'),
(176, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1516002477;s:7:\"checked\";a:1:{s:7:\"consult\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(178, 'category_children', 'a:0:{}', 'yes'),
(180, 'cptui_post_types', 'a:1:{s:8:\"services\";a:28:{s:4:\"name\";s:8:\"services\";s:5:\"label\";s:8:\"Services\";s:14:\"singular_label\";s:8:\"Services\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:8:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:7:\"excerpt\";i:4;s:9:\"revisions\";i:5;s:6:\"author\";i:6;s:15:\"page-attributes\";i:7;s:12:\"post-formats\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(202, 'rewrite_rules', 'a:346:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:52:\"(ar)/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:47:\"(ar)/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:28:\"(ar)/category/(.+?)/embed/?$\";s:63:\"index.php?lang=$matches[1]&category_name=$matches[2]&embed=true\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:40:\"(ar)/category/(.+?)/page/?([0-9]{1,})/?$\";s:70:\"index.php?lang=$matches[1]&category_name=$matches[2]&paged=$matches[3]\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:22:\"(ar)/category/(.+?)/?$\";s:52:\"index.php?lang=$matches[1]&category_name=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:49:\"(ar)/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:44:\"(ar)/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:25:\"(ar)/tag/([^/]+)/embed/?$\";s:53:\"index.php?lang=$matches[1]&tag=$matches[2]&embed=true\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:37:\"(ar)/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:60:\"index.php?lang=$matches[1]&tag=$matches[2]&paged=$matches[3]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:19:\"(ar)/tag/([^/]+)/?$\";s:42:\"index.php?lang=$matches[1]&tag=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:50:\"(ar)/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=en&post_format=$matches[1]&feed=$matches[2]\";s:45:\"(ar)/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=en&post_format=$matches[1]&feed=$matches[2]\";s:26:\"(ar)/type/([^/]+)/embed/?$\";s:61:\"index.php?lang=$matches[1]&post_format=$matches[2]&embed=true\";s:21:\"type/([^/]+)/embed/?$\";s:52:\"index.php?lang=en&post_format=$matches[1]&embed=true\";s:38:\"(ar)/type/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&post_format=$matches[2]&paged=$matches[3]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?lang=en&post_format=$matches[1]&paged=$matches[2]\";s:20:\"(ar)/type/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&post_format=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:41:\"index.php?lang=en&post_format=$matches[1]\";s:40:\"(ar)/bwg_tag/[^/]+/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:35:\"bwg_tag/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"(ar)/bwg_tag/[^/]+/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:45:\"bwg_tag/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"(ar)/bwg_tag/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:65:\"bwg_tag/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"(ar)/bwg_tag/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:60:\"bwg_tag/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"(ar)/bwg_tag/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:60:\"bwg_tag/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"(ar)/bwg_tag/[^/]+/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:41:\"bwg_tag/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"(ar)/bwg_tag/([^/]+)/embed/?$\";s:57:\"index.php?lang=$matches[1]&bwg_tag=$matches[2]&embed=true\";s:24:\"bwg_tag/([^/]+)/embed/?$\";s:40:\"index.php?bwg_tag=$matches[1]&embed=true\";s:33:\"(ar)/bwg_tag/([^/]+)/trackback/?$\";s:51:\"index.php?lang=$matches[1]&bwg_tag=$matches[2]&tb=1\";s:28:\"bwg_tag/([^/]+)/trackback/?$\";s:34:\"index.php?bwg_tag=$matches[1]&tb=1\";s:41:\"(ar)/bwg_tag/([^/]+)/page/?([0-9]{1,})/?$\";s:64:\"index.php?lang=$matches[1]&bwg_tag=$matches[2]&paged=$matches[3]\";s:36:\"bwg_tag/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?bwg_tag=$matches[1]&paged=$matches[2]\";s:48:\"(ar)/bwg_tag/([^/]+)/comment-page-([0-9]{1,})/?$\";s:64:\"index.php?lang=$matches[1]&bwg_tag=$matches[2]&cpage=$matches[3]\";s:43:\"bwg_tag/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?bwg_tag=$matches[1]&cpage=$matches[2]\";s:37:\"(ar)/bwg_tag/([^/]+)(?:/([0-9]+))?/?$\";s:63:\"index.php?lang=$matches[1]&bwg_tag=$matches[2]&page=$matches[3]\";s:32:\"bwg_tag/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?bwg_tag=$matches[1]&page=$matches[2]\";s:29:\"(ar)/bwg_tag/[^/]+/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:24:\"bwg_tag/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"(ar)/bwg_tag/[^/]+/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:34:\"bwg_tag/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"(ar)/bwg_tag/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:54:\"bwg_tag/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"(ar)/bwg_tag/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:49:\"bwg_tag/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"(ar)/bwg_tag/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:49:\"bwg_tag/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"(ar)/bwg_tag/[^/]+/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:30:\"bwg_tag/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:41:\"(ar)/services/[^/]+/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:36:\"services/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"(ar)/services/[^/]+/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:46:\"services/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"(ar)/services/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:66:\"services/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"(ar)/services/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:61:\"services/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"(ar)/services/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:61:\"services/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"(ar)/services/[^/]+/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:42:\"services/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"(ar)/services/([^/]+)/embed/?$\";s:58:\"index.php?lang=$matches[1]&services=$matches[2]&embed=true\";s:25:\"services/([^/]+)/embed/?$\";s:41:\"index.php?services=$matches[1]&embed=true\";s:34:\"(ar)/services/([^/]+)/trackback/?$\";s:52:\"index.php?lang=$matches[1]&services=$matches[2]&tb=1\";s:29:\"services/([^/]+)/trackback/?$\";s:35:\"index.php?services=$matches[1]&tb=1\";s:42:\"(ar)/services/([^/]+)/page/?([0-9]{1,})/?$\";s:65:\"index.php?lang=$matches[1]&services=$matches[2]&paged=$matches[3]\";s:37:\"services/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&paged=$matches[2]\";s:49:\"(ar)/services/([^/]+)/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?lang=$matches[1]&services=$matches[2]&cpage=$matches[3]\";s:44:\"services/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&cpage=$matches[2]\";s:38:\"(ar)/services/([^/]+)(?:/([0-9]+))?/?$\";s:64:\"index.php?lang=$matches[1]&services=$matches[2]&page=$matches[3]\";s:33:\"services/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?services=$matches[1]&page=$matches[2]\";s:30:\"(ar)/services/[^/]+/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:25:\"services/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"(ar)/services/[^/]+/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:35:\"services/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"(ar)/services/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:55:\"services/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"(ar)/services/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:50:\"services/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"(ar)/services/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:50:\"services/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"(ar)/services/[^/]+/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:31:\"services/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:45:\"(ar)/logosliderwp/[^/]+/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:40:\"logosliderwp/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"(ar)/logosliderwp/[^/]+/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:50:\"logosliderwp/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"(ar)/logosliderwp/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:70:\"logosliderwp/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"(ar)/logosliderwp/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:65:\"logosliderwp/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"(ar)/logosliderwp/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:65:\"logosliderwp/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"(ar)/logosliderwp/[^/]+/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:46:\"logosliderwp/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"(ar)/logosliderwp/([^/]+)/embed/?$\";s:62:\"index.php?lang=$matches[1]&logosliderwp=$matches[2]&embed=true\";s:29:\"logosliderwp/([^/]+)/embed/?$\";s:45:\"index.php?logosliderwp=$matches[1]&embed=true\";s:38:\"(ar)/logosliderwp/([^/]+)/trackback/?$\";s:56:\"index.php?lang=$matches[1]&logosliderwp=$matches[2]&tb=1\";s:33:\"logosliderwp/([^/]+)/trackback/?$\";s:39:\"index.php?logosliderwp=$matches[1]&tb=1\";s:46:\"(ar)/logosliderwp/([^/]+)/page/?([0-9]{1,})/?$\";s:69:\"index.php?lang=$matches[1]&logosliderwp=$matches[2]&paged=$matches[3]\";s:41:\"logosliderwp/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?logosliderwp=$matches[1]&paged=$matches[2]\";s:53:\"(ar)/logosliderwp/([^/]+)/comment-page-([0-9]{1,})/?$\";s:69:\"index.php?lang=$matches[1]&logosliderwp=$matches[2]&cpage=$matches[3]\";s:48:\"logosliderwp/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?logosliderwp=$matches[1]&cpage=$matches[2]\";s:42:\"(ar)/logosliderwp/([^/]+)(?:/([0-9]+))?/?$\";s:68:\"index.php?lang=$matches[1]&logosliderwp=$matches[2]&page=$matches[3]\";s:37:\"logosliderwp/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?logosliderwp=$matches[1]&page=$matches[2]\";s:34:\"(ar)/logosliderwp/[^/]+/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:29:\"logosliderwp/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"(ar)/logosliderwp/[^/]+/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:39:\"logosliderwp/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"(ar)/logosliderwp/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:59:\"logosliderwp/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"(ar)/logosliderwp/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:54:\"logosliderwp/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"(ar)/logosliderwp/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:54:\"logosliderwp/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"(ar)/logosliderwp/[^/]+/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:35:\"logosliderwp/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:61:\"(ar)/logosliderwpcat/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:71:\"index.php?lang=$matches[1]&logosliderwpcat=$matches[2]&feed=$matches[3]\";s:56:\"logosliderwpcat/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?logosliderwpcat=$matches[1]&feed=$matches[2]\";s:56:\"(ar)/logosliderwpcat/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:71:\"index.php?lang=$matches[1]&logosliderwpcat=$matches[2]&feed=$matches[3]\";s:51:\"logosliderwpcat/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?logosliderwpcat=$matches[1]&feed=$matches[2]\";s:37:\"(ar)/logosliderwpcat/([^/]+)/embed/?$\";s:65:\"index.php?lang=$matches[1]&logosliderwpcat=$matches[2]&embed=true\";s:32:\"logosliderwpcat/([^/]+)/embed/?$\";s:48:\"index.php?logosliderwpcat=$matches[1]&embed=true\";s:49:\"(ar)/logosliderwpcat/([^/]+)/page/?([0-9]{1,})/?$\";s:72:\"index.php?lang=$matches[1]&logosliderwpcat=$matches[2]&paged=$matches[3]\";s:44:\"logosliderwpcat/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?logosliderwpcat=$matches[1]&paged=$matches[2]\";s:31:\"(ar)/logosliderwpcat/([^/]+)/?$\";s:54:\"index.php?lang=$matches[1]&logosliderwpcat=$matches[2]\";s:26:\"logosliderwpcat/([^/]+)/?$\";s:37:\"index.php?logosliderwpcat=$matches[1]\";s:44:\"(ar)/bwg_gallery/[^/]+/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:39:\"bwg_gallery/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"(ar)/bwg_gallery/[^/]+/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:49:\"bwg_gallery/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"(ar)/bwg_gallery/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:69:\"bwg_gallery/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"(ar)/bwg_gallery/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:64:\"bwg_gallery/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"(ar)/bwg_gallery/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:64:\"bwg_gallery/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"(ar)/bwg_gallery/[^/]+/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:45:\"bwg_gallery/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"(ar)/bwg_gallery/([^/]+)/embed/?$\";s:61:\"index.php?lang=$matches[1]&bwg_gallery=$matches[2]&embed=true\";s:28:\"bwg_gallery/([^/]+)/embed/?$\";s:44:\"index.php?bwg_gallery=$matches[1]&embed=true\";s:37:\"(ar)/bwg_gallery/([^/]+)/trackback/?$\";s:55:\"index.php?lang=$matches[1]&bwg_gallery=$matches[2]&tb=1\";s:32:\"bwg_gallery/([^/]+)/trackback/?$\";s:38:\"index.php?bwg_gallery=$matches[1]&tb=1\";s:45:\"(ar)/bwg_gallery/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&bwg_gallery=$matches[2]&paged=$matches[3]\";s:40:\"bwg_gallery/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?bwg_gallery=$matches[1]&paged=$matches[2]\";s:52:\"(ar)/bwg_gallery/([^/]+)/comment-page-([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&bwg_gallery=$matches[2]&cpage=$matches[3]\";s:47:\"bwg_gallery/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?bwg_gallery=$matches[1]&cpage=$matches[2]\";s:41:\"(ar)/bwg_gallery/([^/]+)(?:/([0-9]+))?/?$\";s:67:\"index.php?lang=$matches[1]&bwg_gallery=$matches[2]&page=$matches[3]\";s:36:\"bwg_gallery/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?bwg_gallery=$matches[1]&page=$matches[2]\";s:33:\"(ar)/bwg_gallery/[^/]+/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:28:\"bwg_gallery/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"(ar)/bwg_gallery/[^/]+/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:38:\"bwg_gallery/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"(ar)/bwg_gallery/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:58:\"bwg_gallery/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"(ar)/bwg_gallery/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:53:\"bwg_gallery/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"(ar)/bwg_gallery/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:53:\"bwg_gallery/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"(ar)/bwg_gallery/[^/]+/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:34:\"bwg_gallery/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:42:\"(ar)/bwg_album/[^/]+/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:37:\"bwg_album/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"(ar)/bwg_album/[^/]+/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:47:\"bwg_album/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"(ar)/bwg_album/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:67:\"bwg_album/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"(ar)/bwg_album/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:62:\"bwg_album/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"(ar)/bwg_album/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:62:\"bwg_album/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"(ar)/bwg_album/[^/]+/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:43:\"bwg_album/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"(ar)/bwg_album/([^/]+)/embed/?$\";s:59:\"index.php?lang=$matches[1]&bwg_album=$matches[2]&embed=true\";s:26:\"bwg_album/([^/]+)/embed/?$\";s:42:\"index.php?bwg_album=$matches[1]&embed=true\";s:35:\"(ar)/bwg_album/([^/]+)/trackback/?$\";s:53:\"index.php?lang=$matches[1]&bwg_album=$matches[2]&tb=1\";s:30:\"bwg_album/([^/]+)/trackback/?$\";s:36:\"index.php?bwg_album=$matches[1]&tb=1\";s:43:\"(ar)/bwg_album/([^/]+)/page/?([0-9]{1,})/?$\";s:66:\"index.php?lang=$matches[1]&bwg_album=$matches[2]&paged=$matches[3]\";s:38:\"bwg_album/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?bwg_album=$matches[1]&paged=$matches[2]\";s:50:\"(ar)/bwg_album/([^/]+)/comment-page-([0-9]{1,})/?$\";s:66:\"index.php?lang=$matches[1]&bwg_album=$matches[2]&cpage=$matches[3]\";s:45:\"bwg_album/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?bwg_album=$matches[1]&cpage=$matches[2]\";s:39:\"(ar)/bwg_album/([^/]+)(?:/([0-9]+))?/?$\";s:65:\"index.php?lang=$matches[1]&bwg_album=$matches[2]&page=$matches[3]\";s:34:\"bwg_album/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?bwg_album=$matches[1]&page=$matches[2]\";s:31:\"(ar)/bwg_album/[^/]+/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:26:\"bwg_album/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"(ar)/bwg_album/[^/]+/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:36:\"bwg_album/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"(ar)/bwg_album/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:56:\"bwg_album/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"(ar)/bwg_album/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:51:\"bwg_album/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"(ar)/bwg_album/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:51:\"bwg_album/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"(ar)/bwg_album/[^/]+/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:32:\"bwg_album/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:37:\"(ar)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:35:\"index.php?lang=en&&feed=$matches[1]\";s:32:\"(ar)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:35:\"index.php?lang=en&&feed=$matches[1]\";s:13:\"(ar)/embed/?$\";s:38:\"index.php?lang=$matches[1]&&embed=true\";s:8:\"embed/?$\";s:29:\"index.php?lang=en&&embed=true\";s:25:\"(ar)/page/?([0-9]{1,})/?$\";s:45:\"index.php?lang=$matches[1]&&paged=$matches[2]\";s:20:\"page/?([0-9]{1,})/?$\";s:36:\"index.php?lang=en&&paged=$matches[1]\";s:7:\"(ar)/?$\";s:26:\"index.php?lang=$matches[1]\";s:46:\"(ar)/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=en&&feed=$matches[1]&withcomments=1\";s:41:\"(ar)/comments/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=en&&feed=$matches[1]&withcomments=1\";s:22:\"(ar)/comments/embed/?$\";s:38:\"index.php?lang=$matches[1]&&embed=true\";s:17:\"comments/embed/?$\";s:29:\"index.php?lang=en&&embed=true\";s:49:\"(ar)/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?lang=en&s=$matches[1]&feed=$matches[2]\";s:44:\"(ar)/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?lang=en&s=$matches[1]&feed=$matches[2]\";s:25:\"(ar)/search/(.+)/embed/?$\";s:51:\"index.php?lang=$matches[1]&s=$matches[2]&embed=true\";s:20:\"search/(.+)/embed/?$\";s:42:\"index.php?lang=en&s=$matches[1]&embed=true\";s:37:\"(ar)/search/(.+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?lang=$matches[1]&s=$matches[2]&paged=$matches[3]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?lang=en&s=$matches[1]&paged=$matches[2]\";s:19:\"(ar)/search/(.+)/?$\";s:40:\"index.php?lang=$matches[1]&s=$matches[2]\";s:14:\"search/(.+)/?$\";s:31:\"index.php?lang=en&s=$matches[1]\";s:52:\"(ar)/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=en&author_name=$matches[1]&feed=$matches[2]\";s:47:\"(ar)/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=en&author_name=$matches[1]&feed=$matches[2]\";s:28:\"(ar)/author/([^/]+)/embed/?$\";s:61:\"index.php?lang=$matches[1]&author_name=$matches[2]&embed=true\";s:23:\"author/([^/]+)/embed/?$\";s:52:\"index.php?lang=en&author_name=$matches[1]&embed=true\";s:40:\"(ar)/author/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&author_name=$matches[2]&paged=$matches[3]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?lang=en&author_name=$matches[1]&paged=$matches[2]\";s:22:\"(ar)/author/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&author_name=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:41:\"index.php?lang=en&author_name=$matches[1]\";s:74:\"(ar)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:88:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:69:\"(ar)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:88:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:50:\"(ar)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:91:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&embed=true\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:82:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:62:\"(ar)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:98:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&paged=$matches[5]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:89:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:44:\"(ar)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:80:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:71:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:61:\"(ar)/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:72:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:56:\"(ar)/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:72:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:37:\"(ar)/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:75:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&embed=true\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:66:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&embed=true\";s:49:\"(ar)/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:82:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&paged=$matches[4]\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:73:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:31:\"(ar)/([0-9]{4})/([0-9]{1,2})/?$\";s:64:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:55:\"index.php?lang=en&year=$matches[1]&monthnum=$matches[2]\";s:48:\"(ar)/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?lang=en&year=$matches[1]&feed=$matches[2]\";s:43:\"(ar)/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?lang=en&year=$matches[1]&feed=$matches[2]\";s:24:\"(ar)/([0-9]{4})/embed/?$\";s:54:\"index.php?lang=$matches[1]&year=$matches[2]&embed=true\";s:19:\"([0-9]{4})/embed/?$\";s:45:\"index.php?lang=en&year=$matches[1]&embed=true\";s:36:\"(ar)/([0-9]{4})/page/?([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&year=$matches[2]&paged=$matches[3]\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:52:\"index.php?lang=en&year=$matches[1]&paged=$matches[2]\";s:18:\"(ar)/([0-9]{4})/?$\";s:43:\"index.php?lang=$matches[1]&year=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:34:\"index.php?lang=en&year=$matches[1]\";s:32:\"(ar)/.?.+?/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"(ar)/.?.+?/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"(ar)/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"(ar)/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"(ar)/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"(ar)/.?.+?/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"(ar)/(.?.+?)/embed/?$\";s:58:\"index.php?lang=$matches[1]&pagename=$matches[2]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:25:\"(ar)/(.?.+?)/trackback/?$\";s:52:\"index.php?lang=$matches[1]&pagename=$matches[2]&tb=1\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:45:\"(ar)/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:40:\"(ar)/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:33:\"(ar)/(.?.+?)/page/?([0-9]{1,})/?$\";s:65:\"index.php?lang=$matches[1]&pagename=$matches[2]&paged=$matches[3]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:40:\"(ar)/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?lang=$matches[1]&pagename=$matches[2]&cpage=$matches[3]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:29:\"(ar)/(.?.+?)(?:/([0-9]+))?/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&page=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:32:\"(ar)/[^/]+/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"(ar)/[^/]+/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"(ar)/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"(ar)/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"(ar)/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"(ar)/[^/]+/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"(ar)/([^/]+)/embed/?$\";s:54:\"index.php?lang=$matches[1]&name=$matches[2]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:25:\"(ar)/([^/]+)/trackback/?$\";s:48:\"index.php?lang=$matches[1]&name=$matches[2]&tb=1\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:45:\"(ar)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:40:\"(ar)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:33:\"(ar)/([^/]+)/page/?([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:40:\"(ar)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:29:\"(ar)/([^/]+)(?:/([0-9]+))?/?$\";s:60:\"index.php?lang=$matches[1]&name=$matches[2]&page=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:21:\"(ar)/[^/]+/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"(ar)/[^/]+/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"(ar)/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"(ar)/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"(ar)/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"(ar)/[^/]+/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(276, 'WPLANG', '', 'yes'),
(277, 'new_admin_email', 'me@ahmedelsayed.me', 'yes'),
(280, 'bwg_subscribe_done', '1', 'yes'),
(292, '_transient_pll_languages_list', 'a:2:{i:0;a:24:{s:7:\"term_id\";i:2;s:4:\"name\";s:14:\"العربية\";s:4:\"slug\";s:2:\"ar\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:2;s:8:\"taxonomy\";s:8:\"language\";s:11:\"description\";s:2:\"ar\";s:6:\"parent\";i:0;s:5:\"count\";i:8;s:10:\"tl_term_id\";i:3;s:19:\"tl_term_taxonomy_id\";i:3;s:8:\"tl_count\";i:1;s:6:\"locale\";R:9;s:6:\"is_rtl\";i:1;s:8:\"flag_url\";s:79:\"http://localhost/psolvingegypt/consult/wp-content/plugins/polylang/flags/eg.png\";s:4:\"flag\";s:700:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAFjSURBVHjaYnzLwPCPAQr+oZJw9AdJECAAx2FuAwAIA7EUlGycrRiKJe4jorBlr2F3z8QuO1KoiCGLDDDh7wLuOU8AsYCUMvz/++QpA1Dp379AUZAeIPn7N0jdLyDj179fv4DiTLKyQKsAAoiFzdSUSVOLQVQMajxQz9+/v3/+Zrb9xrSf9d/vX0Czmf6ALGQUFWXbvh0ggBj//v3LyMgIsuf/fwYw/Pfv74/X8xh+P2GVqGD4z/IfBoDKPn36BBBATBDvQsXA9K+XXX9+fvr39+evZy3/kQHQ0//+AQQQE5pqMPjz+8//H7/5//3/jaL+P9DyfwABxKivr19YWPj69Wug2/6Awe/ff1ICXwG1TVrKD+QCXQgkgbLi4uJtbW0AAQRyfVpa2r17936DwS8wgDBAJJgFNASoRUVF5eLFiwABBApWoJGSkpJAKaAoyAIwAFv1G2LnXxgAKgYIIJIRQIABAP7XTmNIudjEAAAAAElFTkSuQmCC\" title=\"العربية\" alt=\"العربية\" />\";s:8:\"home_url\";s:42:\"http://localhost/psolvingegypt/consult/ar/\";s:10:\"search_url\";s:42:\"http://localhost/psolvingegypt/consult/ar/\";s:4:\"host\";N;s:5:\"mo_id\";s:1:\"6\";s:13:\"page_on_front\";N;s:14:\"page_for_posts\";N;s:6:\"filter\";s:3:\"raw\";s:9:\"flag_code\";s:2:\"eg\";}i:1;a:24:{s:7:\"term_id\";i:5;s:4:\"name\";s:7:\"English\";s:4:\"slug\";s:2:\"en\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:5;s:8:\"taxonomy\";s:8:\"language\";s:11:\"description\";s:5:\"en_US\";s:6:\"parent\";i:0;s:5:\"count\";i:7;s:10:\"tl_term_id\";i:6;s:19:\"tl_term_taxonomy_id\";i:6;s:8:\"tl_count\";i:1;s:6:\"locale\";R:33;s:6:\"is_rtl\";i:0;s:8:\"flag_url\";s:79:\"http://localhost/psolvingegypt/consult/wp-content/plugins/polylang/flags/us.png\";s:4:\"flag\";s:878:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAHzSURBVHjaYkxOP8IAB//+Mfz7w8Dwi4HhP5CcJb/n/7evb16/APL/gRFQDiAAw3JuAgAIBEDQ/iswEERjGzBQLEru97ll0g0+3HvqMn1SpqlqGsZMsZsIe0SICA5gt5a/AGIEarCPtFh+6N/ffwxA9OvP/7//QYwff/6fZahmePeB4dNHhi+fGb59Y4zyvHHmCEAAAW3YDzQYaJJ93a+vX79aVf58//69fvEPlpIfnz59+vDhw7t37968efP3b/SXL59OnjwIEEAsDP+YgY53b2b89++/awvLn98MDi2cVxl+/vl6mituCtBghi9f/v/48e/XL86krj9XzwEEEENy8g6gu22rfn78+NGs5Ofr16+ZC58+fvyYwX8rxOxXr169fPny+fPn1//93bJlBUAAsQADZMEBxj9/GBxb2P/9+S/R8u3vzxuyaX8ZHv3j8/YGms3w8ycQARmi2eE37t4ACCDGR4/uSkrKAS35B3TT////wADOgLOBIaXIyjBlwxKAAGKRXjCB0SOEaeu+/y9fMnz4AHQxCP348R/o+l+//sMZQBNLEvif3AcIIMZbty7Ly6t9ZmXl+fXj/38GoHH/UcGfP79//BBiYHjy9+8/oUkNAAHEwt1V/vI/KBY/QSISFqM/GBg+MzB8A6PfYC5EFiDAABqgW776MP0rAAAAAElFTkSuQmCC\" title=\"English\" alt=\"English\" />\";s:8:\"home_url\";s:39:\"http://localhost/psolvingegypt/consult/\";s:10:\"search_url\";s:39:\"http://localhost/psolvingegypt/consult/\";s:4:\"host\";N;s:5:\"mo_id\";s:1:\"7\";s:13:\"page_on_front\";N;s:14:\"page_for_posts\";N;s:6:\"filter\";s:3:\"raw\";s:9:\"flag_code\";s:2:\"us\";}}', 'yes'),
(295, 'iowd_pro', 'yes', 'no'),
(296, 'iowd_version', '1.0.8', 'no'),
(297, 'iowd_mode', 'standart', 'no'),
(298, 'iowd_standart_setting', 'conservative', 'no'),
(299, '_transient_iowd_overview_visited', '1', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(300, 'iowd_options', '{\"api_key\":\"\",\"automatically_optimize\":\"0\",\"keep_exif_data\":\"1\",\"keep_originals\":\"0\",\"jpg_optimization_levels\":\"lossy40\",\"png_optimization_levels\":\"lossy40\",\"gif_optimization_levels\":\"lossless\",\"pdf_optimization_levels\":\"0\",\"scheduled_optimization\":\"0\",\"scheduled_optimization_recurrence\":\"\",\"other_folders\":\"{\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\\\&quot;:[\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/1 (1).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/1 (2).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/1 (3).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/1 (4).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/1 (5).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/1 (6).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/1.jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/10.jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/11.jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/12 (1).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/12.jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/13.jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/14.jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/2 (1).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/2 (2).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/2 (3).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/2 (4).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/2 (5).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/2.jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/3 (1).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/3 (2).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/3 (3).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/3 (4).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/3.jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/4 (1).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/4 (2).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/4.jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/5 (1).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/5 (2).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/5.jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/6 (1).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/6.jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/7.jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/8 (1).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/8.jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/9.jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/cart1.jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/cart2.jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/cart3.jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/1 (1).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/1 (2).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/1 (3).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/1 (4).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/1 (5).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/1 (6).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/1.jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/10.jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/11.jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/12 (1).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/12.jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/13.jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/14.jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/2 (1).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/2 (2).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/2 (3).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/2 (4).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/2 (5).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/2.jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/3 (1).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/3 (2).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/3 (3).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/3 (4).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/3.jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/4 (1).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/4 (2).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/4.jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/5 (1).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/5 (2).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/5.jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/6 (1).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/6.jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/7.jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/8 (1).jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/8.jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/9.jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/cart1.jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/cart2.jpg\\\\&quot;,\\\\&quot;D:\\\\\\\\\\\\\\\\xampp\\\\\\\\\\\\\\\\htdocs\\\\\\\\\\\\\\\\psolvingegypt\\\\\\\\\\\\\\\\consult\\/\\/wp-content\\/uploads\\/photo-gallery\\/thumb\\/cart3.jpg\\\\&quot;]}\",\"resize_media_images_width\":\"\",\"resize_media_images_height\":\"\",\"enable_resizing\":\"\",\"enable_resizing_other\":\"\",\"resize_other_images_width\":\"\",\"resize_other_images_height\":\"\",\"optimize_thumbs\":\"thumbnail,medium,medium_large,large\",\"skip_small_images\":\"\",\"skip_large_images\":\"\",\"exclude_full_size\":\"1\",\"exclude_full_size_metadata_removal\":\"0\",\"optimize_once_more\":\"1\",\"enable_conversion\":\"0\",\"jpg_to_png\":\"0\",\"png_to_jpg\":\"0\",\"gif_to_png\":\"0\",\"jpg_to_webp\":\"0\",\"png_to_webp\":\"0\",\"optimize_gallery\":1}', 'no'),
(301, 'iowd_admin_notice', 'a:1:{s:15:\"two_week_review\";a:2:{s:5:\"start\";s:9:\"1/23/2018\";s:3:\"int\";i:14;}}', 'yes'),
(302, 'iowd_subscribe_done', '1', 'yes'),
(309, '_site_transient_timeout_iowd_already_optimized', '1516045657', 'no'),
(310, '_site_transient_iowd_already_optimized', '0', 'no'),
(312, '_site_transient_timeout_theme_roots', '1516004264', 'no'),
(313, '_site_transient_theme_roots', 'a:1:{s:7:\"consult\";s:7:\"/themes\";}', 'no'),
(316, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1516002477;s:8:\"response\";a:1:{s:21:\"polylang/polylang.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:22:\"w.org/plugins/polylang\";s:4:\"slug\";s:8:\"polylang\";s:6:\"plugin\";s:21:\"polylang/polylang.php\";s:11:\"new_version\";s:5:\"2.2.8\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/polylang/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/polylang.2.2.8.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:61:\"https://ps.w.org/polylang/assets/icon-128x128.png?rev=1331499\";s:2:\"2x\";s:61:\"https://ps.w.org/polylang/assets/icon-256x256.png?rev=1331499\";s:7:\"default\";s:61:\"https://ps.w.org/polylang/assets/icon-256x256.png?rev=1331499\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:64:\"https://ps.w.org/polylang/assets/banner-1544x500.png?rev=1405299\";s:2:\"1x\";s:63:\"https://ps.w.org/polylang/assets/banner-772x250.png?rev=1405299\";s:7:\"default\";s:64:\"https://ps.w.org/polylang/assets/banner-1544x500.png?rev=1405299\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.1\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:10:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:7:\"default\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:7:\"default\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.2.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"4.9.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.4.9.2.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:7:\"default\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";s:7:\"default\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.5.6\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.5.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:7:\"default\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";s:7:\"default\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"custom-post-type-widgets/custom-post-type-widgets.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/custom-post-type-widgets\";s:4:\"slug\";s:24:\"custom-post-type-widgets\";s:6:\"plugin\";s:53:\"custom-post-type-widgets/custom-post-type-widgets.php\";s:11:\"new_version\";s:5:\"1.1.3\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/custom-post-type-widgets/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/custom-post-type-widgets.1.1.3.zip\";s:5:\"icons\";a:0:{}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:28:\"image-optimizer-wd/io-wd.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/image-optimizer-wd\";s:4:\"slug\";s:18:\"image-optimizer-wd\";s:6:\"plugin\";s:28:\"image-optimizer-wd/io-wd.php\";s:11:\"new_version\";s:5:\"1.0.8\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/image-optimizer-wd/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/image-optimizer-wd.1.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:71:\"https://ps.w.org/image-optimizer-wd/assets/icon-128x128.png?rev=1736250\";s:7:\"default\";s:71:\"https://ps.w.org/image-optimizer-wd/assets/icon-128x128.png?rev=1736250\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:73:\"https://ps.w.org/image-optimizer-wd/assets/banner-772x250.png?rev=1736250\";s:7:\"default\";s:73:\"https://ps.w.org/image-optimizer-wd/assets/banner-772x250.png?rev=1736250\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"logo-slider-wp/logo-slider-wp.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/logo-slider-wp\";s:4:\"slug\";s:14:\"logo-slider-wp\";s:6:\"plugin\";s:33:\"logo-slider-wp/logo-slider-wp.php\";s:11:\"new_version\";s:5:\"1.3.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/logo-slider-wp/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/logo-slider-wp.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:67:\"https://ps.w.org/logo-slider-wp/assets/icon-128x128.png?rev=1488003\";s:2:\"2x\";s:67:\"https://ps.w.org/logo-slider-wp/assets/icon-256x256.png?rev=1488003\";s:7:\"default\";s:67:\"https://ps.w.org/logo-slider-wp/assets/icon-256x256.png?rev=1488003\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:69:\"https://ps.w.org/logo-slider-wp/assets/banner-772x250.png?rev=1488003\";s:7:\"default\";s:69:\"https://ps.w.org/logo-slider-wp/assets/banner-772x250.png?rev=1488003\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"photo-gallery/photo-gallery.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/photo-gallery\";s:4:\"slug\";s:13:\"photo-gallery\";s:6:\"plugin\";s:31:\"photo-gallery/photo-gallery.php\";s:11:\"new_version\";s:6:\"1.3.67\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/photo-gallery/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/photo-gallery.1.3.67.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:66:\"https://ps.w.org/photo-gallery/assets/icon-128x128.png?rev=1508783\";s:7:\"default\";s:66:\"https://ps.w.org/photo-gallery/assets/icon-128x128.png?rev=1508783\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:68:\"https://ps.w.org/photo-gallery/assets/banner-772x250.jpg?rev=1505235\";s:7:\"default\";s:68:\"https://ps.w.org/photo-gallery/assets/banner-772x250.jpg?rev=1505235\";}s:11:\"banners_rtl\";a:0:{}}s:52:\"polylang-theme-strings/mw-polylang-theme-strings.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/polylang-theme-strings\";s:4:\"slug\";s:22:\"polylang-theme-strings\";s:6:\"plugin\";s:52:\"polylang-theme-strings/mw-polylang-theme-strings.php\";s:11:\"new_version\";s:3:\"3.5\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/polylang-theme-strings/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/polylang-theme-strings.3.5.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:75:\"https://ps.w.org/polylang-theme-strings/assets/icon-128x128.png?rev=1428148\";s:2:\"2x\";s:75:\"https://ps.w.org/polylang-theme-strings/assets/icon-256x256.png?rev=1428148\";s:7:\"default\";s:75:\"https://ps.w.org/polylang-theme-strings/assets/icon-256x256.png?rev=1428148\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

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
(2, 4, '_form', '<div class=\"input_group\">\n<label> Your Name  </label>\n    [text* your-name]\n</div>\n<div class=\"input_group\">\n<label> Your Email </label>\n    [email* your-email] \n</div>\n<div class=\"input_group\">\n<label> Subject </label>\n    [text your-subject] \n</div>\n<div class=\"input_group\">\n<label> Your Message </label>\n    [textarea your-message] \n\n[submit class:s_color_bg class:tran3s class:font_fix\" \"Send\"]'),
(3, 4, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:27:\"primestore \"[your-subject]\"\";s:6:\"sender\";s:32:\"[your-name] <me@ahmedelsayed.me>\";s:9:\"recipient\";s:18:\"me@ahmedelsayed.me\";s:4:\"body\";s:54:\"[your-name]\n[your-email]\n[your-subject]\n[your-message]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(4, 4, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:27:\"primestore \"[your-subject]\"\";s:6:\"sender\";s:31:\"primestore <me@ahmedelsayed.me>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:129:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on primestore (http://localhost/psolvingegypt/consult)\";s:18:\"additional_headers\";s:28:\"Reply-To: me@ahmedelsayed.me\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(5, 4, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(6, 4, '_additional_settings', ''),
(7, 4, '_locale', 'en_US'),
(8, 6, '_pll_strings_translations', 'a:17:{i:0;a:2:{i:0;s:10:\"primestore\";i:1;s:7:\"consult\";}i:1;a:2:{i:0;s:27:\"Just another WordPress site\";i:1;s:7:\"consult\";}i:2;a:2:{i:0;s:6:\"F j, Y\";i:1;s:6:\"F j, Y\";}i:3;a:2:{i:0;s:5:\"g:i a\";i:1;s:5:\"g:i a\";}i:4;a:2:{i:0;s:40:\"https://www.facebook.com/MedicoLegal.eg/\";i:1;s:40:\"https://www.facebook.com/MedicoLegal.eg/\";}i:5;a:2:{i:0;s:52:\"https://www.linkedin.com/in/amr-el-ghazali-ab319b63/\";i:1;s:52:\"https://www.linkedin.com/in/amr-el-ghazali-ab319b63/\";}i:6;a:2:{i:0;s:11:\"01004792158\";i:1;s:11:\"01004792158\";}i:7;a:2:{i:0;s:16:\" info@domain.com\";i:1;s:15:\"info@domain.com\";}i:8;a:2:{i:0;s:42:\"https://www.instagram.com/estsharat.eg123/\";i:1;s:42:\"https://www.instagram.com/estsharat.eg123/\";}i:9;a:2:{i:0;s:30:\"https://twitter.com/estsharat2\";i:1;s:30:\"https://twitter.com/estsharat2\";}i:10;a:2:{i:0;s:8:\"About us\";i:1;s:11:\"من نحن\";}i:11;a:2:{i:0;s:644:\"<p>ConsultPress over 20 years of experience we’ll ensure you always get the best guidance. We serve clients at every level of their organization, in whatever capacity we can be most useful, whether as a trusted advisor to top management or as a hands-on coach for front line employees. For every engagement, we assemble a team with the most appropriate experience and expertise. Our goal is to optimise your business relationships by tailoring our services to your individual requirements We strive to build a relationship of trust with every client, for the long-term.70% of our work is for clients that we have served for over 10 years.</p>\";i:1;s:644:\"<p>ConsultPress over 20 years of experience we’ll ensure you always get the best guidance. We serve clients at every level of their organization, in whatever capacity we can be most useful, whether as a trusted advisor to top management or as a hands-on coach for front line employees. For every engagement, we assemble a team with the most appropriate experience and expertise. Our goal is to optimise your business relationships by tailoring our services to your individual requirements We strive to build a relationship of trust with every client, for the long-term.70% of our work is for clients that we have served for over 10 years.</p>\";}i:12;a:2:{i:0;s:45:\"Week Days : 07:30 – 19:00  Sunday : Holiday\";i:1;s:45:\"Week Days : 07:30 – 19:00  Sunday : Holiday\";}i:13;a:2:{i:0;s:25:\"4 Maher Pasha Street <br>\";i:1;s:50:\"4 شارع ماهر باشا العباسية <br>\";}i:14;a:2:{i:0;s:89:\"ConsultPress over 20 years of experience we’ll ensure you always get the best guidance.\";i:1;s:89:\"ConsultPress over 20 years of experience we’ll ensure you always get the best guidance.\";}i:15;a:2:{i:0;s:11:\"Contact  Us\";i:1;s:15:\"اتصل بنا\";}i:16;a:2:{i:0;s:385:\"If you would like to contact someone by phone, fax or post and you don\'t know the address, please consult our world wide branch If you would like to contact someone by phone, fax or post and you don\'t know the address, please consult our world wide branch If you would like to contact someone by phone, fax or post and you don\'t know the address, please consult our world wide branch\r\n\";i:1;s:383:\"If you would like to contact someone by phone, fax or post and you don\'t know the address, please consult our world wide branch If you would like to contact someone by phone, fax or post and you don\'t know the address, please consult our world wide branch If you would like to contact someone by phone, fax or post and you don\'t know the address, please consult our world wide branch\";}}'),
(9, 8, '_edit_last', '1'),
(10, 8, '_edit_lock', '1515412183:1'),
(11, 9, '_wp_attached_file', '2018/01/slide-3-1024x418.jpg'),
(12, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:418;s:4:\"file\";s:28:\"2018/01/slide-3-1024x418.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"slide-3-1024x418-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"slide-3-1024x418-300x122.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:122;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"slide-3-1024x418-768x314.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:314;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"slide-3-1024x418-1024x418.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:418;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 8, '_thumbnail_id', '9'),
(14, 12, '_thumbnail_id', '9'),
(15, 12, '_edit_last', '1'),
(16, 12, '_edit_lock', '1515412227:1'),
(17, 14, '_edit_last', '1'),
(18, 14, '_edit_lock', '1515414664:1'),
(19, 15, '_wp_attached_file', '2018/01/logo.png'),
(20, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:161;s:4:\"file\";s:16:\"2018/01/logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 14, '_thumbnail_id', '15'),
(22, 14, '_logosliderwpmeta', 'a:2:{s:11:\"company_url\";s:0:\"\";s:12:\"company_name\";s:4:\"Logo\";}'),
(23, 16, '_thumbnail_id', '15'),
(24, 16, '_edit_last', '1'),
(25, 16, '_logosliderwpmeta', 'a:2:{s:11:\"company_url\";s:0:\"\";s:12:\"company_name\";s:0:\"\";}'),
(26, 16, '_edit_lock', '1515414902:1'),
(27, 2, '_wp_trash_meta_status', 'publish'),
(28, 2, '_wp_trash_meta_time', '1515415074'),
(29, 2, '_wp_desired_post_slug', 'sample-page'),
(30, 19, '_edit_last', '1'),
(31, 19, '_edit_lock', '1515415199:1'),
(32, 19, '_wp_page_template', 'tempales/page-services.php'),
(33, 21, '_wp_page_template', 'tempales/page-services.php'),
(34, 21, '_edit_last', '1'),
(35, 21, '_edit_lock', '1515415341:1'),
(36, 23, '_edit_last', '1'),
(37, 23, '_edit_lock', '1515415337:1'),
(38, 23, '_wp_page_template', 'tempales/page-about.php'),
(39, 26, '_wp_page_template', 'tempales/page-about.php'),
(40, 26, '_edit_last', '1'),
(41, 26, '_edit_lock', '1515415872:1'),
(42, 27, '_edit_last', '1'),
(43, 27, '_edit_lock', '1515498407:1'),
(44, 27, '_wp_page_template', 'tempales/page-gallery.php'),
(45, 32, '_wp_page_template', 'tempales/page-gallery.php'),
(46, 32, '_edit_last', '1'),
(47, 32, '_edit_lock', '1515415548:1'),
(48, 31, '_edit_last', '1'),
(49, 31, '_edit_lock', '1515415677:1'),
(50, 31, '_wp_page_template', 'tempales/page-contact.php'),
(51, 26, '_thumbnail_id', '9'),
(52, 35, '_wp_page_template', 'tempales/page-contact.php'),
(53, 35, '_edit_last', '1'),
(54, 35, '_edit_lock', '1515416707:1'),
(55, 38, '_form', '<div class=\"input_group\">\n<label> الاسم  </label>\n    [text* your-name]\n</div>\n<div class=\"input_group\">\n<label>  البريد الالكتروني</label>\n    [email* your-email] \n</div>\n<div class=\"input_group\">\n<label> الموضوع </label>\n    [text your-subject] \n</div>\n<div class=\"input_group\">\n<label> الرسالة </label>\n    [textarea your-message] \n\n[submit class:s_color_bg class:tran3s class:font_fix\" \"ارسال\"]'),
(56, 38, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:27:\"primestore \"[your-subject]\"\";s:6:\"sender\";s:32:\"[your-name] <me@ahmedelsayed.me>\";s:9:\"recipient\";s:18:\"me@ahmedelsayed.me\";s:4:\"body\";s:187:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on primestore (http://localhost/psolvingegypt/consult)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(57, 38, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:27:\"primestore \"[your-subject]\"\";s:6:\"sender\";s:31:\"primestore <me@ahmedelsayed.me>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:129:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on primestore (http://localhost/psolvingegypt/consult)\";s:18:\"additional_headers\";s:28:\"Reply-To: me@ahmedelsayed.me\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(58, 38, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(59, 38, '_additional_settings', ''),
(60, 38, '_locale', 'en_US'),
(61, 39, '_wp_attached_file', '2018/01/slide-1.jpg'),
(62, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:783;s:4:\"file\";s:19:\"2018/01/slide-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slide-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slide-1-300x122.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:122;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slide-1-768x313.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:313;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slide-1-1024x418.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:418;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(63, 40, '_wp_attached_file', '2018/01/slide-2.jpg'),
(64, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:783;s:4:\"file\";s:19:\"2018/01/slide-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slide-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slide-2-300x122.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:122;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slide-2-768x313.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:313;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slide-2-1024x418.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:418;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(65, 41, '_wp_attached_file', '2018/01/slide-3.jpg'),
(66, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:783;s:4:\"file\";s:19:\"2018/01/slide-3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slide-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slide-3-300x122.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:122;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slide-3-768x313.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:313;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slide-3-1024x418.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:418;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(67, 7, '_pll_strings_translations', 'a:17:{i:0;a:2:{i:0;s:10:\"primestore\";i:1;s:7:\"consult\";}i:1;a:2:{i:0;s:27:\"Just another WordPress site\";i:1;s:7:\"consult\";}i:2;a:2:{i:0;s:6:\"F j, Y\";i:1;s:6:\"F j, Y\";}i:3;a:2:{i:0;s:5:\"g:i a\";i:1;s:5:\"g:i a\";}i:4;a:2:{i:0;s:40:\"https://www.facebook.com/MedicoLegal.eg/\";i:1;s:40:\"https://www.facebook.com/MedicoLegal.eg/\";}i:5;a:2:{i:0;s:52:\"https://www.linkedin.com/in/amr-el-ghazali-ab319b63/\";i:1;s:52:\"https://www.linkedin.com/in/amr-el-ghazali-ab319b63/\";}i:6;a:2:{i:0;s:11:\"01004792158\";i:1;s:11:\"01004792158\";}i:7;a:2:{i:0;s:16:\" info@domain.com\";i:1;s:15:\"info@domain.com\";}i:8;a:2:{i:0;s:42:\"https://www.instagram.com/estsharat.eg123/\";i:1;s:42:\"https://www.instagram.com/estsharat.eg123/\";}i:9;a:2:{i:0;s:30:\"https://twitter.com/estsharat2\";i:1;s:30:\"https://twitter.com/estsharat2\";}i:10;a:2:{i:0;s:8:\"About us\";i:1;s:8:\"About us\";}i:11;a:2:{i:0;s:644:\"<p>ConsultPress over 20 years of experience we’ll ensure you always get the best guidance. We serve clients at every level of their organization, in whatever capacity we can be most useful, whether as a trusted advisor to top management or as a hands-on coach for front line employees. For every engagement, we assemble a team with the most appropriate experience and expertise. Our goal is to optimise your business relationships by tailoring our services to your individual requirements We strive to build a relationship of trust with every client, for the long-term.70% of our work is for clients that we have served for over 10 years.</p>\";i:1;s:644:\"<p>ConsultPress over 20 years of experience we’ll ensure you always get the best guidance. We serve clients at every level of their organization, in whatever capacity we can be most useful, whether as a trusted advisor to top management or as a hands-on coach for front line employees. For every engagement, we assemble a team with the most appropriate experience and expertise. Our goal is to optimise your business relationships by tailoring our services to your individual requirements We strive to build a relationship of trust with every client, for the long-term.70% of our work is for clients that we have served for over 10 years.</p>\";}i:12;a:2:{i:0;s:45:\"Week Days : 07:30 – 19:00  Sunday : Holiday\";i:1;s:45:\"Week Days : 07:30 – 19:00  Sunday : Holiday\";}i:13;a:2:{i:0;s:25:\"4 Maher Pasha Street <br>\";i:1;s:25:\"4 Maher Pasha Street <br>\";}i:14;a:2:{i:0;s:89:\"ConsultPress over 20 years of experience we’ll ensure you always get the best guidance.\";i:1;s:89:\"ConsultPress over 20 years of experience we’ll ensure you always get the best guidance.\";}i:15;a:2:{i:0;s:11:\"Contact  Us\";i:1;s:11:\"Contact  Us\";}i:16;a:2:{i:0;s:385:\"If you would like to contact someone by phone, fax or post and you don\'t know the address, please consult our world wide branch If you would like to contact someone by phone, fax or post and you don\'t know the address, please consult our world wide branch If you would like to contact someone by phone, fax or post and you don\'t know the address, please consult our world wide branch\r\n\";i:1;s:383:\"If you would like to contact someone by phone, fax or post and you don\'t know the address, please consult our world wide branch If you would like to contact someone by phone, fax or post and you don\'t know the address, please consult our world wide branch If you would like to contact someone by phone, fax or post and you don\'t know the address, please consult our world wide branch\";}}');

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
(1, 1, '2018-01-08 09:50:00', '2018-01-08 09:50:00', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-01-08 09:50:00', '2018-01-08 09:50:00', '', 0, 'http://localhost/psolvingegypt/consult/?p=1', 0, 'post', '', 1),
(2, 1, '2018-01-08 09:50:00', '2018-01-08 09:50:00', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/psolvingegypt/consult/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-01-08 12:37:55', '2018-01-08 12:37:55', '', 0, 'http://localhost/psolvingegypt/consult/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-01-08 09:51:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-01-08 09:51:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/psolvingegypt/consult/?p=3', 0, 'post', '', 0),
(4, 1, '2018-01-08 09:52:43', '2018-01-08 09:52:43', '<div class=\"input_group\">\r\n<label> Your Name  </label>\r\n    [text* your-name]\r\n</div>\r\n<div class=\"input_group\">\r\n<label> Your Email </label>\r\n    [email* your-email] \r\n</div>\r\n<div class=\"input_group\">\r\n<label> Subject </label>\r\n    [text your-subject] \r\n</div>\r\n<div class=\"input_group\">\r\n<label> Your Message </label>\r\n    [textarea your-message] \r\n\r\n[submit class:s_color_bg class:tran3s class:font_fix\" \"Send\"]\n1\nprimestore \"[your-subject]\"\n[your-name] <me@ahmedelsayed.me>\nme@ahmedelsayed.me\n[your-name]\r\n[your-email]\r\n[your-subject]\r\n[your-message]\nReply-To: [your-email]\n\n\n\n\nprimestore \"[your-subject]\"\nprimestore <me@ahmedelsayed.me>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on primestore (http://localhost/psolvingegypt/consult)\nReply-To: me@ahmedelsayed.me\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-01-08 13:14:11', '2018-01-08 13:14:11', '', 0, 'http://localhost/psolvingegypt/consult/?post_type=wpcf7_contact_form&#038;p=4', 0, 'wpcf7_contact_form', '', 0),
(5, 1, '2018-01-08 11:35:08', '2018-01-08 11:35:08', '', 'Media', '', 'private', 'closed', 'closed', '', 'media', '', '', '2018-01-08 11:35:08', '2018-01-08 11:35:08', '', 0, 'http://localhost/psolvingegypt/consult/?option-tree=media', 0, 'option-tree', '', 0),
(6, 1, '2018-01-08 11:45:42', '2018-01-08 11:45:42', '', 'polylang_mo_2', '', 'private', 'closed', 'closed', '', 'polylang_mo_2', '', '', '2018-01-08 11:45:42', '2018-01-08 11:45:42', '', 0, 'http://localhost/psolvingegypt/consult/?post_type=polylang_mo&p=6', 0, 'polylang_mo', '', 0),
(7, 1, '2018-01-08 11:46:46', '2018-01-08 11:46:46', '', 'polylang_mo_5', '', 'private', 'closed', 'closed', '', 'polylang_mo_5', '', '', '2018-01-08 11:46:46', '2018-01-08 11:46:46', '', 0, 'http://localhost/psolvingegypt/consult/?post_type=polylang_mo&p=7', 0, 'polylang_mo', '', 0),
(8, 1, '2018-01-08 11:51:57', '2018-01-08 11:51:57', '', 'Services', 'Services Services Services', 'publish', 'closed', 'closed', '', 'services', '', '', '2018-01-08 11:51:57', '2018-01-08 11:51:57', '', 0, 'http://localhost/psolvingegypt/consult/?post_type=services&#038;p=8', 0, 'services', '', 0),
(9, 1, '2018-01-08 11:51:38', '2018-01-08 11:51:38', '', 'slide-3-1024x418', '', 'inherit', 'open', 'closed', '', 'slide-3-1024x418', '', '', '2018-01-08 11:51:38', '2018-01-08 11:51:38', '', 8, 'http://localhost/psolvingegypt/consult/wp-content/uploads/2018/01/slide-3-1024x418.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2018-01-08 11:51:57', '2018-01-08 11:51:57', '', 'Services', 'Services Services Services', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-01-08 11:51:57', '2018-01-08 11:51:57', '', 8, 'http://localhost/psolvingegypt/consult/?p=10', 0, 'revision', '', 0),
(11, 1, '2018-01-08 11:52:01', '2018-01-08 11:52:01', '', 'Services', 'Services Services Services', 'inherit', 'closed', 'closed', '', '8-autosave-v1', '', '', '2018-01-08 11:52:01', '2018-01-08 11:52:01', '', 8, 'http://localhost/psolvingegypt/consult/?p=11', 0, 'revision', '', 0),
(12, 1, '2018-01-08 11:52:28', '2018-01-08 11:52:28', 'Services Services Services Services Services  Services Services Services Services Services  Services Services Services Services Services  Services Services Services Services Services', 'Services', '  Services Services Services Services Services  Services Services Services Services Services  Services Services Services Services Services', 'publish', 'closed', 'closed', '', 'services-2', '', '', '2018-01-08 11:52:28', '2018-01-08 11:52:28', '', 0, 'http://localhost/psolvingegypt/consult/?post_type=services&#038;p=12', 0, 'services', '', 0),
(13, 1, '2018-01-08 11:52:28', '2018-01-08 11:52:28', 'Services Services Services Services Services  Services Services Services Services Services  Services Services Services Services Services  Services Services Services Services Services', 'Services', '  Services Services Services Services Services  Services Services Services Services Services  Services Services Services Services Services', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-01-08 11:52:28', '2018-01-08 11:52:28', '', 12, 'http://localhost/psolvingegypt/consult/?p=13', 0, 'revision', '', 0),
(14, 1, '2018-01-08 11:54:10', '2018-01-08 11:54:10', '', 'Logo', '', 'publish', 'closed', 'closed', '', 'logo', '', '', '2018-01-08 11:54:10', '2018-01-08 11:54:10', '', 0, 'http://localhost/psolvingegypt/consult/?post_type=logosliderwp&#038;p=14', 0, 'logosliderwp', '', 0),
(15, 1, '2018-01-08 11:53:50', '2018-01-08 11:53:50', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-01-08 11:53:50', '2018-01-08 11:53:50', '', 14, 'http://localhost/psolvingegypt/consult/wp-content/uploads/2018/01/logo.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2018-01-08 12:33:44', '2018-01-08 12:33:44', '', 'Logo', '', 'publish', 'closed', 'closed', '', 'logo-2', '', '', '2018-01-08 12:33:44', '2018-01-08 12:33:44', '', 0, 'http://localhost/psolvingegypt/consult/?post_type=logosliderwp&#038;p=16', 0, 'logosliderwp', '', 0),
(17, 1, '2018-01-08 12:37:55', '2018-01-08 12:37:55', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/psolvingegypt/consult/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-01-08 12:37:55', '2018-01-08 12:37:55', '', 2, 'http://localhost/psolvingegypt/consult/?p=17', 0, 'revision', '', 0),
(18, 1, '2018-01-08 12:38:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-01-08 12:38:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/psolvingegypt/consult/?page_id=18', 0, 'page', '', 0),
(19, 1, '2018-01-08 12:39:57', '2018-01-08 12:39:57', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2018-01-08 12:39:57', '2018-01-08 12:39:57', '', 0, 'http://localhost/psolvingegypt/consult/?page_id=19', 0, 'page', '', 0),
(20, 1, '2018-01-08 12:39:57', '2018-01-08 12:39:57', '', 'Services', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-01-08 12:39:57', '2018-01-08 12:39:57', '', 19, 'http://localhost/psolvingegypt/consult/?p=20', 0, 'revision', '', 0),
(21, 1, '2018-01-08 12:42:39', '2018-01-08 12:42:39', '', 'الخدمات', '', 'publish', 'closed', 'closed', '', 'services-2', '', '', '2018-01-08 12:43:24', '2018-01-08 12:43:24', '', 0, 'http://localhost/psolvingegypt/consult/?page_id=21', 0, 'page', '', 0),
(22, 1, '2018-01-08 12:42:39', '2018-01-08 12:42:39', '', 'الخدمات', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-01-08 12:42:39', '2018-01-08 12:42:39', '', 21, 'http://localhost/psolvingegypt/consult/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-01-08 12:44:16', '2018-01-08 12:44:16', '&nbsp;\r\n\r\nAbout Us  About Us  About Us About Us About Us\r\n\r\nAbout Us  About Us  About Us About Us About Us\r\n\r\nAbout Us  About Us  About Us About Us About Us\r\n\r\nAbout Us  About Us  About Us About Us About Us\r\n\r\nAbout Us  About Us  About Us About Us About Us', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2018-01-08 12:44:16', '2018-01-08 12:44:16', '', 0, 'http://localhost/psolvingegypt/consult/?page_id=23', 0, 'page', '', 0),
(24, 1, '2018-01-08 12:43:37', '2018-01-08 12:43:37', '', 'الخدمات', '', 'inherit', 'closed', 'closed', '', '21-autosave-v1', '', '', '2018-01-08 12:43:37', '2018-01-08 12:43:37', '', 21, 'http://localhost/psolvingegypt/consult/21-autosave-v1/', 0, 'revision', '', 0),
(25, 1, '2018-01-08 12:44:16', '2018-01-08 12:44:16', '&nbsp;\r\n\r\nAbout Us  About Us  About Us About Us About Us\r\n\r\nAbout Us  About Us  About Us About Us About Us\r\n\r\nAbout Us  About Us  About Us About Us About Us\r\n\r\nAbout Us  About Us  About Us About Us About Us\r\n\r\nAbout Us  About Us  About Us About Us About Us', 'About Us', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-01-08 12:44:16', '2018-01-08 12:44:16', '', 23, 'http://localhost/psolvingegypt/consult/23-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2018-01-08 12:45:04', '2018-01-08 12:45:04', 'عن الشركة ر عن الشركة', 'عن الشركة', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-01-08 12:49:49', '2018-01-08 12:49:49', '', 0, 'http://localhost/psolvingegypt/consult/?page_id=26', 0, 'page', '', 0),
(27, 1, '2018-01-08 12:45:46', '2018-01-08 12:45:46', '[Best_Wordpress_Gallery id=\"2\" gal_title=\"All Galleries\"]', 'Gallery', '', 'publish', 'closed', 'closed', '', 'gallery', '', '', '2018-01-09 10:43:30', '2018-01-09 10:43:30', '', 0, 'http://localhost/psolvingegypt/consult/?page_id=27', 0, 'page', '', 0),
(28, 1, '2018-01-08 12:45:04', '2018-01-08 12:45:04', 'عن الشركة ر عن الشركة', 'عن الشركة', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-01-08 12:45:04', '2018-01-08 12:45:04', '', 26, 'http://localhost/psolvingegypt/consult/26-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-01-08 12:45:46', '2018-01-08 12:45:46', '', 'Gallery', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-01-08 12:45:46', '2018-01-08 12:45:46', '', 27, 'http://localhost/psolvingegypt/consult/27-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-01-08 12:46:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-01-08 12:46:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/psolvingegypt/consult/?page_id=30', 0, 'page', '', 0),
(31, 1, '2018-01-08 12:48:45', '2018-01-08 12:48:45', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2018-01-08 12:49:59', '2018-01-08 12:49:59', '', 0, 'http://localhost/psolvingegypt/consult/?page_id=31', 0, 'page', '', 0),
(32, 1, '2018-01-08 12:47:34', '2018-01-08 12:47:34', '', 'معرض الصور', '', 'publish', 'closed', 'closed', '', 'gallery-2', '', '', '2018-01-08 12:48:06', '2018-01-08 12:48:06', '', 0, 'http://localhost/psolvingegypt/consult/?page_id=32', 0, 'page', '', 0),
(33, 1, '2018-01-08 12:47:34', '2018-01-08 12:47:34', '', 'معرض الصور', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2018-01-08 12:47:34', '2018-01-08 12:47:34', '', 32, 'http://localhost/psolvingegypt/consult/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-01-08 12:48:45', '2018-01-08 12:48:45', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-01-08 12:48:45', '2018-01-08 12:48:45', '', 31, 'http://localhost/psolvingegypt/consult/31-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-01-08 12:53:28', '2018-01-08 12:53:28', '', 'اتصل بنا', '', 'publish', 'closed', 'closed', '', 'contact-us-2', '', '', '2018-01-08 12:53:51', '2018-01-08 12:53:51', '', 0, 'http://localhost/psolvingegypt/consult/?page_id=35', 0, 'page', '', 0),
(36, 1, '2018-01-08 12:50:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-01-08 12:50:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/psolvingegypt/consult/?page_id=36', 0, 'page', '', 0),
(37, 1, '2018-01-08 12:53:28', '2018-01-08 12:53:28', '', 'اتصل بنا', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-01-08 12:53:28', '2018-01-08 12:53:28', '', 35, 'http://localhost/psolvingegypt/consult/35-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-01-08 13:15:26', '2018-01-08 13:15:26', '<div class=\"input_group\">\r\n<label> الاسم  </label>\r\n    [text* your-name]\r\n</div>\r\n<div class=\"input_group\">\r\n<label>  البريد الالكتروني</label>\r\n    [email* your-email] \r\n</div>\r\n<div class=\"input_group\">\r\n<label> الموضوع </label>\r\n    [text your-subject] \r\n</div>\r\n<div class=\"input_group\">\r\n<label> الرسالة </label>\r\n    [textarea your-message] \r\n\r\n[submit class:s_color_bg class:tran3s class:font_fix\" \"ارسال\"]\n1\nprimestore \"[your-subject]\"\n[your-name] <me@ahmedelsayed.me>\nme@ahmedelsayed.me\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on primestore (http://localhost/psolvingegypt/consult)\nReply-To: [your-email]\n\n\n\n\nprimestore \"[your-subject]\"\nprimestore <me@ahmedelsayed.me>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on primestore (http://localhost/psolvingegypt/consult)\nReply-To: me@ahmedelsayed.me\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'contact ar', '', 'publish', 'closed', 'closed', '', 'untitled', '', '', '2018-01-08 13:15:46', '2018-01-08 13:15:46', '', 0, 'http://localhost/psolvingegypt/consult/?post_type=wpcf7_contact_form&#038;p=38', 0, 'wpcf7_contact_form', '', 0),
(39, 1, '2018-01-08 13:53:40', '2018-01-08 13:53:40', '', 'slide-1', '', 'inherit', 'open', 'closed', '', 'slide-1', '', '', '2018-01-08 13:53:40', '2018-01-08 13:53:40', '', 5, 'http://localhost/psolvingegypt/consult/wp-content/uploads/2018/01/slide-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2018-01-08 13:53:57', '2018-01-08 13:53:57', '', 'slide-2', '', 'inherit', 'open', 'closed', '', 'slide-2', '', '', '2018-01-08 13:53:57', '2018-01-08 13:53:57', '', 5, 'http://localhost/psolvingegypt/consult/wp-content/uploads/2018/01/slide-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2018-01-08 13:54:08', '2018-01-08 13:54:08', '', 'slide-3', '', 'inherit', 'open', 'closed', '', 'slide-3', '', '', '2018-01-08 13:54:08', '2018-01-08 13:54:08', '', 5, 'http://localhost/psolvingegypt/consult/wp-content/uploads/2018/01/slide-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2018-01-09 09:12:01', '2018-01-09 09:12:01', '[Best_Wordpress_Gallery id=\"1\" gal_title=\"gallery\"]', 'gallery', '', 'publish', 'closed', 'closed', '', 'gallery', '', '', '2018-01-09 09:12:01', '2018-01-09 09:12:01', '', 0, 'http://localhost/psolvingegypt/consult/bwg_gallery/gallery/', 0, 'bwg_gallery', '', 0),
(43, 1, '2018-01-09 10:26:17', '2018-01-09 10:26:17', '[Best_Wordpress_Gallery id=\"2\" gal_title=\"All Galleries\"]', 'Gallery', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-01-09 10:26:17', '2018-01-09 10:26:17', '', 27, 'http://localhost/psolvingegypt/consult/27-revision-v1/', 0, 'revision', '', 0);

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
(2, 'العربية', 'ar', 0),
(3, 'العربية', 'pll_ar', 0),
(4, 'pll_5a5359e0ce5ce', 'pll_5a5359e0ce5ce', 0),
(5, 'English', 'en', 0),
(6, 'English', 'pll_en', 0),
(7, 'Uncategorized', 'uncategorized-en', 0),
(9, 'pll_5a535b7e1e3fc', 'pll_5a535b7e1e3fc', 0),
(10, 'pll_5a53652aa664f', 'pll_5a53652aa664f', 0),
(11, 'pll_5a53674faf482', 'pll_5a53674faf482', 0),
(12, 'pll_5a5367dc3f3b1', 'pll_5a5367dc3f3b1', 0),
(13, 'pll_5a53686c65606', 'pll_5a53686c65606', 0),
(14, 'pll_5a5369ca68cca', 'pll_5a5369ca68cca', 0);

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
(1, 3, 0),
(1, 4, 0),
(2, 2, 0),
(7, 4, 0),
(7, 6, 0),
(8, 2, 0),
(8, 9, 0),
(9, 2, 0),
(12, 5, 0),
(12, 9, 0),
(14, 2, 0),
(14, 10, 0),
(15, 2, 0),
(16, 5, 0),
(16, 10, 0),
(18, 2, 0),
(19, 5, 0),
(19, 11, 0),
(21, 2, 0),
(21, 11, 0),
(23, 5, 0),
(23, 12, 0),
(26, 2, 0),
(26, 12, 0),
(27, 5, 0),
(27, 13, 0),
(30, 2, 0),
(31, 5, 0),
(31, 14, 0),
(32, 2, 0),
(32, 13, 0),
(35, 2, 0),
(35, 14, 0),
(36, 5, 0),
(39, 5, 0),
(40, 5, 0),
(41, 5, 0),
(42, 5, 0);

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
(1, 1, 'category', '', 0, 1),
(2, 2, 'language', 'a:3:{s:6:\"locale\";s:2:\"ar\";s:3:\"rtl\";i:1;s:9:\"flag_code\";s:2:\"eg\";}', 0, 8),
(3, 3, 'term_language', '', 0, 1),
(4, 4, 'term_translations', 'a:2:{s:2:\"ar\";i:1;s:2:\"en\";i:7;}', 0, 2),
(5, 5, 'language', 'a:3:{s:6:\"locale\";s:5:\"en_US\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"us\";}', 0, 7),
(6, 6, 'term_language', '', 0, 1),
(7, 7, 'category', '', 0, 0),
(9, 9, 'post_translations', 'a:2:{s:2:\"en\";i:12;s:2:\"ar\";i:8;}', 0, 2),
(10, 10, 'post_translations', 'a:2:{s:2:\"en\";i:16;s:2:\"ar\";i:14;}', 0, 2),
(11, 11, 'post_translations', 'a:2:{s:2:\"ar\";i:21;s:2:\"en\";i:19;}', 0, 2),
(12, 12, 'post_translations', 'a:2:{s:2:\"ar\";i:26;s:2:\"en\";i:23;}', 0, 2),
(13, 13, 'post_translations', 'a:2:{s:2:\"en\";i:27;s:2:\"ar\";i:32;}', 0, 2),
(14, 14, 'post_translations', 'a:2:{s:2:\"ar\";i:35;s:2:\"en\";i:31;}', 0, 2);

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
(1, 1, 'nickname', 'master'),
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
(15, 1, 'session_tokens', 'a:5:{s:64:\"1d6b521aa7c33ea0caa78e201fc2bf9afff8d20675f4d5f7c0ee0a0e37c5e9a2\";a:4:{s:10:\"expiration\";i:1515577883;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36\";s:5:\"login\";i:1515405083;}s:64:\"66013b646b0ff0409a443faafdd0713b686d2811426a7b5fb6f0a0ad2b9c0013\";a:4:{s:10:\"expiration\";i:1515594847;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36\";s:5:\"login\";i:1515422047;}s:64:\"faac58fba7ebf2572f15be032fd8989f18d94dac8157981a6780e653836a914a\";a:4:{s:10:\"expiration\";i:1515595113;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36\";s:5:\"login\";i:1515422313;}s:64:\"e6f560014e1faef4b17395b87101009c7bf60d647672f102467bb4187545c52f\";a:4:{s:10:\"expiration\";i:1515602273;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36\";s:5:\"login\";i:1515429473;}s:64:\"4f4202827d7ac0e7f7a0d4c68f521e70f7c0677dc882f799c7979cf4ebc3df00\";a:4:{s:10:\"expiration\";i:1515660217;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36\";s:5:\"login\";i:1515487417;}}'),
(16, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(17, 1, 'wp_user-settings-time', '1515493575'),
(18, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(19, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}');

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
(1, 'master', '$P$B0//ZTkXfucIhj1I6Lyrix7Q9JDHd60', 'master', 'me@ahmedelsayed.me', '', '2018-01-08 09:49:57', '', 0, 'master');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_bwg_album`
--
ALTER TABLE `wp_bwg_album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_album_gallery`
--
ALTER TABLE `wp_bwg_album_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_gallery`
--
ALTER TABLE `wp_bwg_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_image`
--
ALTER TABLE `wp_bwg_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_image_comment`
--
ALTER TABLE `wp_bwg_image_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_image_rate`
--
ALTER TABLE `wp_bwg_image_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_image_tag`
--
ALTER TABLE `wp_bwg_image_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_shortcode`
--
ALTER TABLE `wp_bwg_shortcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_theme`
--
ALTER TABLE `wp_bwg_theme`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `wp_iowd_images`
--
ALTER TABLE `wp_iowd_images`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `wp_bwg_album`
--
ALTER TABLE `wp_bwg_album`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bwg_album_gallery`
--
ALTER TABLE `wp_bwg_album_gallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bwg_gallery`
--
ALTER TABLE `wp_bwg_gallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_bwg_image`
--
ALTER TABLE `wp_bwg_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `wp_bwg_image_comment`
--
ALTER TABLE `wp_bwg_image_comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bwg_image_rate`
--
ALTER TABLE `wp_bwg_image_rate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bwg_image_tag`
--
ALTER TABLE `wp_bwg_image_tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bwg_theme`
--
ALTER TABLE `wp_bwg_theme`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- AUTO_INCREMENT for table `wp_iowd_images`
--
ALTER TABLE `wp_iowd_images`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
