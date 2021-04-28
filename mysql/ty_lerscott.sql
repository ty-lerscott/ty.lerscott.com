/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_commentmeta
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_comments
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`, `comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_links
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint unsigned NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_options
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE = InnoDB AUTO_INCREMENT = 419 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_postmeta
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE = InnoDB AUTO_INCREMENT = 157 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_posts
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`, `post_status`, `post_date`, `ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE = InnoDB AUTO_INCREMENT = 46 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_term_relationships
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`, `term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_term_taxonomy
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint unsigned NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`, `taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_termmeta
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_terms
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_usermeta
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE = InnoDB AUTO_INCREMENT = 26 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_users
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_commentmeta
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_comments
# ------------------------------------------------------------

INSERT INTO
  `wp_comments` (
    `comment_ID`,
    `comment_post_ID`,
    `comment_author`,
    `comment_author_email`,
    `comment_author_url`,
    `comment_author_IP`,
    `comment_date`,
    `comment_date_gmt`,
    `comment_content`,
    `comment_karma`,
    `comment_approved`,
    `comment_agent`,
    `comment_type`,
    `comment_parent`,
    `user_id`
  )
VALUES
  (
    1,
    1,
    'A WordPress Commenter',
    'wapuu@wordpress.example',
    'https://wordpress.org/',
    '',
    '2021-04-19 01:38:53',
    '2021-04-19 01:38:53',
    'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',
    0,
    'post-trashed',
    '',
    'comment',
    0,
    0
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_links
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_options
# ------------------------------------------------------------

INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    1,
    'siteurl',
    'http://watercoo.lerscott.local',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (2, 'home', 'http://watercoo.lerscott.local', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (3, 'blogname', 'ty.lerscott', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    4,
    'blogdescription',
    'Just another WordPress site',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (5, 'users_can_register', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (6, 'admin_email', 'ty@lerscott.com', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (7, 'start_of_week', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (8, 'use_balanceTags', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (9, 'use_smilies', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (10, 'require_name_email', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (11, 'comments_notify', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (12, 'posts_per_rss', '10', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (13, 'rss_use_excerpt', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (14, 'mailserver_url', 'mail.example.com', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (15, 'mailserver_login', 'login@example.com', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (16, 'mailserver_pass', 'password', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (17, 'mailserver_port', '110', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (18, 'default_category', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (19, 'default_comment_status', 'open', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (20, 'default_ping_status', 'open', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (21, 'default_pingback_flag', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (22, 'posts_per_page', '10', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (23, 'date_format', 'F j, Y', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (24, 'time_format', 'g:i a', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    25,
    'links_updated_date_format',
    'F j, Y g:i a',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (26, 'comment_moderation', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (27, 'moderation_notify', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    28,
    'permalink_structure',
    '/%year%/%monthnum%/%day%/%postname%/',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    29,
    'rewrite_rules',
    'a:97:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:10:\"graphql/?$\";s:22:\"index.php?graphql=true\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (30, 'hack_file', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (31, 'blog_charset', 'UTF-8', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (32, 'moderation_keys', '', 'no');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    33,
    'active_plugins',
    'a:2:{i:0;s:71:\"wp-graphql-jwt-authentication-develop/wp-graphql-jwt-authentication.php\";i:1;s:25:\"wp-graphql/wp-graphql.php\";}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (34, 'category_base', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    35,
    'ping_sites',
    'http://rpc.pingomatic.com/',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (36, 'comment_max_links', '2', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (37, 'gmt_offset', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (38, 'default_email_category', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    39,
    'recently_edited',
    'a:2:{i:0;s:107:\"/Users/tyler.williams/Documents/workspace/ty.lerscott.com/wordpress/wp-content/themes/ty-lerscott/style.css\";i:2;s:0:\"\";}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (40, 'template', 'ty-lerscott', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (41, 'stylesheet', 'ty-lerscott', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (42, 'comment_registration', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (43, 'html_type', 'text/html', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (44, 'use_trackback', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (45, 'default_role', 'subscriber', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (46, 'db_version', '49752', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (47, 'uploads_use_yearmonth_folders', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (48, 'upload_path', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (49, 'blog_public', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (50, 'default_link_category', '2', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (51, 'show_on_front', 'posts', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (52, 'tag_base', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (53, 'show_avatars', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (54, 'avatar_rating', 'G', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (55, 'upload_url_path', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (56, 'thumbnail_size_w', '150', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (57, 'thumbnail_size_h', '150', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (58, 'thumbnail_crop', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (59, 'medium_size_w', '300', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (60, 'medium_size_h', '300', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (61, 'avatar_default', 'mystery', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (62, 'large_size_w', '1024', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (63, 'large_size_h', '1024', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (64, 'image_default_link_type', 'none', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (65, 'image_default_size', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (66, 'image_default_align', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (67, 'close_comments_for_old_posts', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (68, 'close_comments_days_old', '14', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (69, 'thread_comments', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (70, 'thread_comments_depth', '5', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (71, 'page_comments', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (72, 'comments_per_page', '50', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (73, 'default_comments_page', 'newest', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (74, 'comment_order', 'asc', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (75, 'sticky_posts', 'a:0:{}', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    76,
    'widget_categories',
    'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    77,
    'widget_text',
    'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    78,
    'widget_rss',
    'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (79, 'uninstall_plugins', 'a:0:{}', 'no');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (80, 'timezone_string', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (81, 'page_for_posts', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (82, 'page_on_front', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (83, 'default_post_format', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (84, 'link_manager_enabled', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (85, 'finished_splitting_shared_terms', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (86, 'site_icon', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (87, 'medium_large_size_w', '768', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (88, 'medium_large_size_h', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (89, 'wp_page_for_privacy_policy', '3', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (90, 'show_comments_cookies_opt_in', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (91, 'admin_email_lifespan', '1634348332', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (92, 'disallowed_keys', '', 'no');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (93, 'comment_previously_approved', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    94,
    'auto_plugin_theme_update_emails',
    'a:0:{}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (95, 'auto_update_core_dev', 'enabled', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (96, 'auto_update_core_minor', 'enabled', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (97, 'auto_update_core_major', 'enabled', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (98, 'initial_db_version', '49752', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    99,
    'wp_user_roles',
    'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (100, 'fresh_site', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    101,
    'widget_search',
    'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    102,
    'widget_recent-posts',
    'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    103,
    'widget_recent-comments',
    'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    104,
    'widget_archives',
    'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    105,
    'widget_meta',
    'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    106,
    'sidebars_widgets',
    'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    107,
    'cron',
    'a:7:{i:1619577533;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1619617133;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1619617231;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1619660333;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1619660345;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1620092333;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    108,
    'widget_pages',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    109,
    'widget_calendar',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    110,
    'widget_media_audio',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    111,
    'widget_media_image',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    112,
    'widget_media_gallery',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    113,
    'widget_media_video',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    114,
    'widget_tag_cloud',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    115,
    'widget_nav_menu',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    116,
    'widget_custom_html',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (118, 'recovery_keys', 'a:0:{}', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (133, 'can_compress_scripts', '1', 'no');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (147, 'finished_updating_comment_type', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    148,
    'https_detection_errors',
    'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    150,
    '_site_transient_update_core',
    'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.1\";s:7:\"version\";s:5:\"5.7.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1619574027;s:15:\"version_checked\";s:5:\"5.7.1\";s:12:\"translations\";a:0:{}}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (151, 'recently_activated', 'a:0:{}', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    157,
    'theme_mods_twentytwentyone',
    'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1618796778;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (158, 'current_theme', 'ty.lerscott', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    159,
    'theme_mods_ty-lerscott',
    'a:2:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (160, 'theme_switched', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    162,
    '_site_transient_update_themes',
    'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1619573697;s:7:\"checked\";a:1:{s:11:\"ty-lerscott\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    181,
    '_transient_health-check-site-status-result',
    '{\"good\":\"13\",\"recommended\":\"7\",\"critical\":\"0\"}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    205,
    '_site_transient_update_plugins',
    'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1619573697;s:7:\"checked\";a:5:{s:32:\"Basic-Auth-master/basic-auth.php\";s:3:\"0.1\";s:27:\"wp-crontrol/wp-crontrol.php\";s:6:\"1.10.0\";s:25:\"wp-graphql/wp-graphql.php\";s:5:\"1.3.5\";s:72:\"wp-graphql-custom-post-type-ui-master/wp-graphql-custom-post-type-ui.php\";s:3:\"1.1\";s:71:\"wp-graphql-jwt-authentication-develop/wp-graphql-jwt-authentication.php\";s:5:\"0.4.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:27:\"wp-crontrol/wp-crontrol.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/wp-crontrol\";s:4:\"slug\";s:11:\"wp-crontrol\";s:6:\"plugin\";s:27:\"wp-crontrol/wp-crontrol.php\";s:11:\"new_version\";s:6:\"1.10.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/wp-crontrol/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-crontrol.1.10.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:64:\"https://ps.w.org/wp-crontrol/assets/icon-256x256.png?rev=2455895\";s:2:\"1x\";s:56:\"https://ps.w.org/wp-crontrol/assets/icon.svg?rev=2455895\";s:3:\"svg\";s:56:\"https://ps.w.org/wp-crontrol/assets/icon.svg?rev=2455895\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-crontrol/assets/banner-1544x500.jpg?rev=2455905\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-crontrol/assets/banner-772x250.jpg?rev=2455905\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"wp-graphql/wp-graphql.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/wp-graphql\";s:4:\"slug\";s:10:\"wp-graphql\";s:6:\"plugin\";s:25:\"wp-graphql/wp-graphql.php\";s:11:\"new_version\";s:5:\"1.3.5\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/wp-graphql/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/wp-graphql.1.3.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/wp-graphql/assets/icon-256x256.png?rev=2482884\";s:2:\"1x\";s:63:\"https://ps.w.org/wp-graphql/assets/icon-128x128.png?rev=2482884\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/wp-graphql/assets/banner-1544x500.png?rev=2482884\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-graphql/assets/banner-772x250.png?rev=2482884\";}s:11:\"banners_rtl\";a:0:{}}}}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    218,
    'nav_menu_options',
    'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    251,
    'wp-smush-settings',
    'a:22:{s:4:\"auto\";b:1;s:5:\"lossy\";b:0;s:10:\"strip_exif\";b:1;s:6:\"resize\";b:0;s:9:\"detection\";b:0;s:8:\"original\";b:0;s:6:\"backup\";b:0;s:10:\"png_to_jpg\";b:0;s:7:\"nextgen\";b:0;s:2:\"s3\";b:0;s:9:\"gutenberg\";b:0;s:10:\"js_builder\";b:0;s:3:\"cdn\";b:0;s:11:\"auto_resize\";b:0;s:4:\"webp\";b:1;s:5:\"usage\";b:0;s:17:\"accessible_colors\";b:0;s:9:\"keep_data\";b:1;s:9:\"lazy_load\";b:0;s:17:\"background_images\";b:1;s:16:\"rest_api_support\";b:0;s:8:\"webp_mod\";b:0;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    260,
    'recovery_mode_email_last_sent',
    '1619135429',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (292, 'wp_graphql_version', '1.3.5', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (293, 'graphql_general_settings', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    300,
    'global_configurations_option_name',
    'a:5:{s:12:\"first_name_0\";s:5:\"Tyler\";s:11:\"last_name_1\";s:5:\"Scott\";s:11:\"job_title_2\";s:26:\"Frontend Software Engineer\";s:17:\"sample_textarea_3\";s:0:\"\";s:15:\"sample_select_4\";s:10:\"option-one\";}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (334, 'category_children', 'a:0:{}', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    375,
    '_site_transient_timeout_php_check_75809dde56e3fe2c2fb740f1b55807ac',
    '1620095799',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    376,
    '_site_transient_php_check_75809dde56e3fe2c2fb740f1b55807ac',
    'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    377,
    '_site_transient_timeout_browser_291da66cbb2b7ebec14fe3e09324e087',
    '1620095801',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    378,
    '_site_transient_browser_291da66cbb2b7ebec14fe3e09324e087',
    'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"90.0.4430.85\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    402,
    '_site_transient_timeout_browser_220ac8ceb1db13ed6db2da1a3be63cdd',
    '1620180439',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    403,
    '_site_transient_browser_220ac8ceb1db13ed6db2da1a3be63cdd',
    'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"90.0.4430.93\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    404,
    '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e',
    '1619618840',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    405,
    '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e',
    'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:7:{i:0;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:47:\"Watch party + Discussion group: How to use Trac\";s:3:\"url\";s:68:\"https://www.meetup.com/learn-wordpress-discussions/events/277828739/\";s:6:\"meetup\";s:27:\"Learn WordPress Discussions\";s:10:\"meetup_url\";s:51:\"https://www.meetup.com/learn-wordpress-discussions/\";s:4:\"date\";s:19:\"2021-04-29 08:00:00\";s:8:\"end_date\";s:19:\"2021-04-29 09:00:00\";s:20:\"start_unix_timestamp\";i:1619708400;s:18:\"end_unix_timestamp\";i:1619712000;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:37.779998779297;s:9:\"longitude\";d:-122.41999816895;}}i:1;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:18:\"WordCamp Venezuela\";s:3:\"url\";s:36:\"https://venezuela.wordcamp.org/2021/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2021-05-06 16:00:00\";s:8:\"end_date\";s:19:\"2021-05-07 00:00:00\";s:20:\"start_unix_timestamp\";i:1620331200;s:18:\"end_unix_timestamp\";i:1620360000;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"VE\";s:8:\"latitude\";d:10.4805937;s:9:\"longitude\";d:-66.9036063;}}i:2;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:21:\"Show us your headers!\";s:3:\"url\";s:70:\"https://www.meetup.com/Racine-WordPress-Meetup-Group/events/274630344/\";s:6:\"meetup\";s:32:\"Racine WordPress Meetup (online)\";s:10:\"meetup_url\";s:53:\"https://www.meetup.com/Racine-WordPress-Meetup-Group/\";s:4:\"date\";s:19:\"2021-04-29 11:00:00\";s:8:\"end_date\";s:19:\"2021-04-29 13:00:00\";s:20:\"start_unix_timestamp\";i:1619712000;s:18:\"end_unix_timestamp\";i:1619719200;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:42.700000762939;s:9:\"longitude\";d:-87.809997558594;}}i:3;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:3:\"TBD\";s:3:\"url\";s:65:\"https://www.meetup.com/WordPress-Naperville/events/vzstwrycchbxb/\";s:6:\"meetup\";s:20:\"WordPress Naperville\";s:10:\"meetup_url\";s:44:\"https://www.meetup.com/WordPress-Naperville/\";s:4:\"date\";s:19:\"2021-05-18 18:30:00\";s:8:\"end_date\";s:19:\"2021-05-18 20:00:00\";s:20:\"start_unix_timestamp\";i:1621380600;s:18:\"end_unix_timestamp\";i:1621386000;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:41.790000915527;s:9:\"longitude\";d:-88.169998168945;}}i:4;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:30:\"WordCamp Northeast Ohio Region\";s:3:\"url\";s:30:\"https://neo.wordcamp.org/2021/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2021-05-21 00:00:00\";s:8:\"end_date\";s:19:\"2021-05-23 00:00:00\";s:20:\"start_unix_timestamp\";i:1621569600;s:18:\"end_unix_timestamp\";i:1621742400;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:41.2617873;s:9:\"longitude\";d:-81.1637245;}}i:5;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:35:\"Racine WordPress - Community Meetup\";s:3:\"url\";s:70:\"https://www.meetup.com/Racine-WordPress-Meetup-Group/events/276386632/\";s:6:\"meetup\";s:32:\"Racine WordPress Meetup (online)\";s:10:\"meetup_url\";s:53:\"https://www.meetup.com/Racine-WordPress-Meetup-Group/\";s:4:\"date\";s:19:\"2021-05-25 14:00:00\";s:8:\"end_date\";s:19:\"2021-05-25 16:00:00\";s:20:\"start_unix_timestamp\";i:1621969200;s:18:\"end_unix_timestamp\";i:1621976400;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:42.700000762939;s:9:\"longitude\";d:-87.809997558594;}}i:6;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:62:\"Milwaukee Wordpress Meetup for Beginners to Intermediate Users\";s:3:\"url\";s:71:\"https://www.meetup.com/Milwaukee-WordPress-MeetUp/events/llnsrqyccjbcb/\";s:6:\"meetup\";s:39:\"Greater Milwaukee Area WordPress Meetup\";s:10:\"meetup_url\";s:50:\"https://www.meetup.com/Milwaukee-WordPress-MeetUp/\";s:4:\"date\";s:19:\"2021-06-01 18:00:00\";s:8:\"end_date\";s:19:\"2021-06-01 20:00:00\";s:20:\"start_unix_timestamp\";i:1622588400;s:18:\"end_unix_timestamp\";i:1622595600;s:8:\"location\";a:4:{s:8:\"location\";s:18:\"Milwaukee, WI, USA\";s:7:\"country\";s:2:\"us\";s:8:\"latitude\";d:42.987678527832;s:9:\"longitude\";d:-88.041152954102;}}}}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    406,
    '_transient_timeout_feed_9bbd59226dc36b9b26cd43f15694c5c3',
    '1619618840',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    407,
    '_transient_feed_9bbd59226dc36b9b26cd43f15694c5c3',
    'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\t\n\t\n\t\n\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"News –  – WordPress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"https://wordpress.org/news\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"WordPress News\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 27 Apr 2021 17:26:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.8-alpha-50793\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:60:\"\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\t\t\n\n\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\n\t\t\n\t\t\n\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"Curious About Full Site Editing?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wordpress.org/news/2021/04/curious-about-full-site-editing/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 27 Apr 2021 17:26:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Features\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"General\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://wordpress.org/news/?p=10190\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:296:\"The second major release of the year is right around the corner. You might have heard a bit of buzz about full site editing around your WordPress circles, so this post will give you some big picture things to know as well as a few wayfinding links for anyone who wants to know more. For [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Josepha\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2792:\"\n<p>The second major release of the year is right around the corner. You might have heard a <a href=\"https://make.wordpress.org/core/2021/04/15/full-site-editing-go-no-go-april-14-2021/\">bit of buzz</a> about full site editing around your WordPress circles, so this post will give you some big picture things to know as well as a few wayfinding links for anyone who wants to know more.</p>\n\n\n\n<p><strong>For Site Owners and Operators</strong></p>\n\n\n\n<p>If you own and operate a WordPress site, updating to version 5.8 should be a seamless experience, just like any other update. All the conversation around full site editing is very exciting, but shouldn’t be alarming—<strong>everything in the next release that relates to full site editing is opt-in</strong>. To experiment freely with it, you need a theme that is built for it. Check the links at the end to see a few examples!</p>\n\n\n\n<p><strong>For Agencies and Theme/Plugin Developers</strong></p>\n\n\n\n<p>If you extend the functionality of the WordPress CMS for clients, updating to version 5.8 should also be seamless. As always, it’s smart to spot-check custom implementations in a staging environment or fully test when the release candidate is made available. Want to test your products and get everything client-ready? Check out any of the testing options below.</p>\n\n\n\n<p><strong>For Contributors and Volunteers</strong></p>\n\n\n\n<p>If you contribute time and expertise to the WordPress project, you can join us in the interesting work leading up to the WordPress 5.8 release and update your site with the deep satisfaction of a job well done. There is a lot that goes into every release—from design and development to documentation and translation; if you’ve got some time to spare, and want to help support the project that supports the tool that supports your site (whew!), check out the links below.</p>\n\n\n\n<h2>Resources</h2>\n\n\n\n<ul><li>A few block themes: <a href=\"https://wordpress.org/themes/tt1-blocks/\">TT1 Blocks</a>, <a href=\"https://wordpress.org/themes/hansen/\">Hansen</a>, <a href=\"https://wordpress.org/themes/block-based-bosco/\">Block-based Bosco</a>, <a href=\"https://wordpress.org/themes/q/\">Q</a></li><li>A few focus areas: <a href=\"https://make.wordpress.org/core/2021/04/20/full-site-editing-go-no-go-next-steps/\">Gutenberg plugin focuses</a></li><li>A few ways you can test: <a href=\"https://wordpress.org/plugins/gutenberg/\">Gutenberg plugin</a>, <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">Beta testing plugin</a>, <a href=\"https://gutenbergtimes.com/need-a-zip-from-master/#nightly\">Gutenberg Times nightly build</a></li><li>A few pieces of documentation: <a href=\"https://developer.wordpress.org/block-editor/handbook/full-site-editing/\">Full Site Editing Overview</a></li></ul>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"10190\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:58:\"\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\n\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\n\t\t\n\t\t\n\n\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"WP Briefing: Your Opinion is Our Opportunity\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wordpress.org/news/2021/04/your-opinion-is-our-opportunity/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 26 Apr 2021 15:24:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"wp-briefing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/news/?post_type=podcast&p=10171\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:148:\"In this episode, Josepha discusses the importance of co-development and testing for the continued growth and maintenance of the WordPress project. \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"enclosure\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:60:\"https://wordpress.org/news/files/2021/04/WP-Briefing-007.mp3\";s:6:\"length\";s:1:\"0\";s:4:\"type\";s:0:\"\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Chloe Bringmann\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:13068:\"\n<p>In this episode, Josepha discusses the importance of co-development and testing for the continued growth and maintenance of the WordPress project.&nbsp;</p>\n\n\n\n<p><em><strong>Have a question you&#8217;d like answered? You can submit them to <a href=\"mailto:wpbriefing@wordpress.org\">wpbriefing@wordpress.org</a>, either written or as a voice recording.</strong></em></p>\n\n\n\n<h2><strong>Credits</strong></h2>\n\n\n\n<ul><li>Editor:<a href=\"https://profiles.wordpress.org/dustinhartzler/\"> Dustin Hartzler</a></li><li>Logo:<a href=\"https://profiles.wordpress.org/beafialho/\"> Beatriz Fialho</a></li><li>Production:<a href=\"https://profiles.wordpress.org/mkaz/\"> </a><a href=\"https://profiles.wordpress.org/cbringmann/\">Chloé Bringmann</a></li><li>Song: Fearless First by Kevin MacLeod</li></ul>\n\n\n\n<h2>References</h2>\n\n\n\n<ul><li><a href=\"https://wordpress.org/news/2008/10/usability-testing-report-25-and-crazyhorse/\">2.5 Usability Testing Report&nbsp;</a></li><li><a href=\"https://europe.wordcamp.org/2021/\">WordCamp Europe 2021</a></li><li><a href=\"https://www.meetup.com/Pune-WordPress-Knowledge-Exchange/events/277520243/\">Pune Work Along (Self Study) Meetup</a></li><li><a href=\"https://fr.wordpress.org/2021/04/09/le-30-avril-2021-rejoignez-nous-pour-un-nouveau-wordpress-translation-day-fr/\">French Mini-Translation Day, April 30, 2021</a></li><li><a href=\"https://make.wordpress.org/core/2021/04/15/full-site-editing-go-no-go-april-14-2021/\">April 14, 2021, Full Site Editing Go/No-Go Demo Recap</a></li><li><a href=\"https://make.wordpress.org/core/2021/04/20/full-site-editing-go-no-go-next-steps/\">Full Site Editing Go/No-Go Next Steps</a></li><li><a href=\"https://make.wordpress.org/test/\">Test WordPress.org</a></li></ul>\n\n\n\n<h2>Transcript</h2>\n\n\n\n<span id=\"more-10171\"></span>\n\n\n\n<p>0:10</p>\n\n\n\n<p>Hello, everyone, and welcome to the WordPress briefing, the podcast where you can catch quick explanations of some of the ideas behind the WordPress open source project and the community around it, as well as get a small list of big things coming up in the next two weeks. I&#8217;m your host, Josepha Haden Chomphosy. Here we go!</p>\n\n\n\n<p>0:39</p>\n\n\n\n<p>Prior to Gutenberg, our current multi-year project that is changing the way we see WordPress, another multi-year project changed the way we saw WordPress. Starting in 2008, substantial changes to the WordPress interface came in a series of major releases, starting with WordPress 2.5. That was before my time in the project; I&#8217;ve only ever worked with the current dashboard in WordPress. But, from what I&#8217;ve read, the user testing that would have gone into it was a huge undertaking and very well coordinated. Now, WordPress has not taken on that type of robust testing project since, but starting around 2014 or 2015, a community testing practice was started. I&#8217;ve shared these calls for testing frequently, both on Twitter and in this podcast. But you may not really know why I find the testing program so valuable. So today, I&#8217;m going to explore with you the concept of co-developers in open source.</p>\n\n\n\n<p>1:52</p>\n\n\n\n<p>Open source software, like WordPress, is built by the people who show up. There are a few obvious groups when you think of software, the developers, designers, technical writers, folks who monitor the forums, and really, all the teams you find in our WordPress project. Co-developers or co-creators, if you&#8217;ll join me in making our tent a little bigger, refers to the users of an open source product who actively engage and contribute to the work by using the software and sharing any bugs that they find.</p>\n\n\n\n<p>2:25</p>\n\n\n\n<p>I mentioned this group in the episode about how WordPress improves. Specifically in that episode, I underlined that if you consider users to be part of the collaborative process, as long as people use your product, those people will have opinions about your product’s needs. And today, I&#8217;m extending that thought a bit further to say that, as long as there are opinions, there are opportunities.</p>\n\n\n\n<p>2:51</p>\n\n\n\n<p>When you know what isn&#8217;t working, you can focus your attention on a solution, you can focus on making sure that you can make it work. The existence of co-creators is one of the great things about open source. No designer or developer or product owner has to know every sort of user to be able to get feedback from them. If they show up, test the software and get their thoughts written down, then you can start to see patterns and common pain points. It is also, unfortunately, one of the great difficulties of being an open source project. After all, if users don&#8217;t show up, or don&#8217;t test, or don&#8217;t write down their feedback, it&#8217;s impossible to know what worked for them and what didn&#8217;t. And on top of that, with such a large percentage of the web being supported by WordPress in this case, not every problem is part of a pattern. And not all patterns are part of the current priorities.</p>\n\n\n\n<p>3:54</p>\n\n\n\n<p>Looking beyond that double-edged sword. Let&#8217;s say that this idea of a co-creator makes sense to you. And more than that, you feel like it describes you. What does it mean for you to show up in WordPress? There are lots of good ways to offer this sort of feedback and contribute to those patterns that can help us see through the fog. So I have for you a mini list and, of course, a bunch of links in the show notes for you.&nbsp;</p>\n\n\n\n<p>So some good ways. First, you can participate in any of the dedicated calls for testing. They are short and frequently have a guide. I participate in them and generally find them fun. I say generally because sometimes I also find them frustrating. That&#8217;s really okay too; the frustrations helped me to identify that I found a problem. And if I can find a problem, then I have saved someone else from finding that problem in the future. The second thing you can do is file a bug report with information about what happened when you ran into a problem and how someone like me could make your bug happen on their site. Bug</p>\n\n\n\n<p>5:00</p>\n\n\n\n<p>Reporting is one of the things I&#8217;ve grown to really love in my time and open source; I did not love it. At first, I was really scared to do it. I mostly used to send videos of the bugs that I found to other people and ask them to file the bug reports for me. But then, of course, I never knew whether they got fixed or not. So I was scared to do it at first. But once I figured out what makes a “good report,” I felt like I was helping circle hidden treasure on a map or something. I realized also not everyone&#8217;s excited about finding hidden treasure on a map. But I play video games and finding hidden treasure on maps is, like, a thing.</p>\n\n\n\n<p>5:43</p>\n\n\n\n<p>A third really great way to contribute like this is that you can join any community meeting to learn more about what&#8217;s happening now and in the future, or just to see what makes WordPress work. As a heads up, these meetings go really fast. And they&#8217;re all in text. And there&#8217;s sometimes, but not all the time, a little bit of jargon that you have to head to your favorite search engine to find. But I sit in on about half of them myself and get a lot of really good information about things that I&#8217;ve been wondering about, things that looked broken, but actually are functioning exactly the way that they should. And I just didn&#8217;t want them to function that way. And more often than not, I found out that something that I thought was broken, was already identified and being fixed. Those are three great ways to show up and help give feedback that helps make WordPress better and more functional for more people.&nbsp;</p>\n\n\n\n<p>There are also a few other ways that we see people trying to share that feedback that don&#8217;t work quite as well. And I&#8217;m going to touch on a few of them just because it&#8217;s important to know, as you&#8217;re trying to figure out how to get started with this. The first one is just tweeting your frustrations, and I get it like that&#8217;s literally what Twitter is for.</p>\n\n\n\n<p>7:03</p>\n\n\n\n<p>But also it&#8217;s hard to create a block from “I am frustrated, behold my hateful rhetoric.” Not that any of you, my dear listeners, ever tweet hateful rhetoric. Still, that is really hard for anyone to figure out what was actually wrong in that moment. Another thing that is not the most functional way to give feedback is review brigading. The Internet rewards this kind of behavior, but I have found at least for WordPress, those false positives and false negatives can be really confusing for our new users. And the third way, that&#8217;s not our best way, and probably is the least best way, is just by giving up and not telling anyone what broke for you.</p>\n\n\n\n<p>7:45</p>\n\n\n\n<p>I know that I already said it&#8217;s not possible to fix everyone&#8217;s problems. But while it&#8217;s not possible to fix everyone&#8217;s problems the moment they get shared, it&#8217;s also truly impossible to fix any problems that no one knows exist. And so giving up and not sharing an issue so that we can identify it as part of a pattern of problems is probably the least effective way to help us help you get your problem solved.</p>\n\n\n\n<p>8:13</p>\n\n\n\n<p>This brings me back to the question of the value of WordPress users as co creators in the development process. As WordPress grows, both in usage as a CMS and in participation as a community, it&#8217;s important for us to shed the idea that software creation is only about what literally can be done to code or what literally can be done to core or what literally can be done to the CMS. It&#8217;s also important for us to constantly remind ourselves that the best outcomes are the result of collaboration with the people who use WordPress the most. I know that not every type of user we have is showing up to give us feedback about where WordPress doesn&#8217;t work for them. And I would love to see more feedback that helps us to figure out where our patterns are.</p>\n\n\n\n<p>9:03</p>\n\n\n\n<p>So the bottom line is this without user feedback that has some clarity of what was expected versus what happened, the work to make a good choice involves a whole lot of guessing. So since open source software is built by the people who show up, I hope this gives you an idea of how you can show up and help improve the tool that powers your sites.</p>\n\n\n\n<p>9:32</p>\n\n\n\n<p>That brings us to today&#8217;s community highlight every episode or so I share either a great story of WordPress success or a great story of a WordPress contributor who helped some folks along the way. Today&#8217;s <a href=\"https://twitter.com/trishacodes/status/1357382647274762244\">community highlight</a> comes from @trishacodes who shared one of her early to WordPress mentors. She says “@RianRietveld was such an encouragement and helped me find the courage to speak up.” I have had myself many conversations with <a href=\"https://profiles.wordpress.org/rianrietveld/\">Rian</a>, and that rings true for me as well.&nbsp;</p>\n\n\n\n<p>10:00</p>\n\n\n\n<p>That brings us to the moment you&#8217;ve all been waiting for, the small list of big things. It&#8217;s actually kind of a medium list. Today, I&#8217;ve got four whole things to share with you all. The first thing on my list is that WordCamp Europe is coming, that will be June 7th through the 10th. It&#8217;s a multi-day online event. I will share in the show notes a link to the main website; there you can get an idea of what will happen, the schedule, and get your hands on some tickets so that you can get it in your calendar and prepare yourselves.&nbsp;</p>\n\n\n\n<p>The second thing I want to share is for all of our polyglots out there. The French team is planning a translation day coming up on April 30. I will share a link to that as well so that you can get an idea of what that takes if you&#8217;re feeling like you want to do some translation work. The third thing I want to share is that the Indian community in Pune actually started a new meetup series. It is a translation work along self-study &#8211; also for all of our polyglots out there. I would love to see as many people as are interested in both learning about how to do translations and certainly translating WordPress get registered for that. A final thing I want to share with you all is that if you are curious about what full site editing features will be included in the 5.8 release, that&#8217;s the WordPress release that&#8217;s coming out in the middle of July, you can check out my recap and recording of the demo that was held with Matt, Matias, and the rest of the team. There’s are also a number of other posts of next step ideas that I will share in the show notes as well.</p>\n\n\n\n<p>11:51</p>\n\n\n\n<p>That, my friends, is your small list of big things. Thank you for joining in today for the WordPress briefing. I&#8217;m your host, Josepha Haden Chomphosy. I&#8217;ll see you again in a couple of weeks!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"10171\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:60:\"\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\t\t\n\n\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\n\t\t\n\t\t\n\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"Become an Early Adopter With the Gutenberg Plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://wordpress.org/news/2021/04/become-an-early-adopter-with-the-gutenberg-plugin/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 21 Apr 2021 21:03:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:13:\"Uncategorized\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:9:\"Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://wordpress.org/news/?p=10164\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:372:\"Copy by Anne McCarthy (@annezazu) and Design by Mel Choyce-Dwan (@melchoyce) In WordPress circles (whether it’s your local meetup, a trusted publication, or your networking group), you may have heard terms like Core Editor, Gutenberg, and the Block Editor used interchangeably over the last four years. And if you’re following contributor work on the project [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Chloe Bringmann\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4695:\"\n<p><strong><em>Copy by Anne McCarthy (<a href=\'https://profiles.wordpress.org/annezazu/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>annezazu</a>) and Design by Mel Choyce-Dwan (<a href=\'https://profiles.wordpress.org/melchoyce/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>melchoyce</a>)</em></strong></p>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large is-resized\"><img loading=\"lazy\" src=\"https://i2.wp.com/wordpress.org/news/files/2021/04/Frame-1.png?resize=632%2C354&#038;ssl=1\" alt=\"\" class=\"wp-image-10165\" width=\"632\" height=\"354\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2021/04/Frame-1.png?resize=1024%2C575&amp;ssl=1 1024w, https://i2.wp.com/wordpress.org/news/files/2021/04/Frame-1.png?resize=300%2C169&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2021/04/Frame-1.png?resize=768%2C431&amp;ssl=1 768w, https://i2.wp.com/wordpress.org/news/files/2021/04/Frame-1.png?w=1264&amp;ssl=1 1264w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure></div>\n\n\n\n<p>In WordPress circles (whether it’s your local meetup, a trusted publication, or your networking group), you may have heard terms like Core Editor, Gutenberg, and the Block Editor used interchangeably over the last four years. And if you’re following contributor work on the project itself, you may also have heard some additional nuances—Gutenberg plugin, Gutenberg, or Block Editor.&nbsp;</p>\n\n\n\n<p>It can get a little confusing, so let’s take a look at four terms that will help you find your way:&nbsp;</p>\n\n\n\n<ul><li>WordPress &#8211; WordPress refers to the open source software but also to the community that surrounds it.&nbsp;</li><li>Gutenberg &#8211; Gutenberg is the code name for a multi-year project to update editing areas for the WordPress software.</li><li>Editor &#8211; The editor refers to a section of the software that allows you to update content on your site’s posts and pages.&nbsp;</li><li>Gutenberg Plugin &#8211; The Gutenberg plugin is where early work to update the editor is shared.</li></ul>\n\n\n\n<h2>The Gutenberg Plugin</h2>\n\n\n\n<p>Now that we’ve cleared up the definitions, let’s talk about the plugin. When might you use it? What would you use it for? You can think of it as an early access program or a “WordPress lab.” The plugin is updated every two weeks, which means that bugs that have been reported are often fixed and that what you see changes rapidly.&nbsp;</p>\n\n\n\n<p>The Gutenberg plugin also contains features that aren’t yet ready for their WordPress debut but are ready for curious users to test and provide feedback. This is a common practice that allows stable features to make it to your site in WordPress releases while allowing experimental features to be tested and refined. To get a sense of whether using the Gutenberg Plugin might be something you want to explore to get access to earlier features, check out the <a href=\"https://make.wordpress.org/core/tag/gutenberg-new/\">“What’s New” release posts </a>and the <a href=\"https://make.wordpress.org/core/tag/core-editor-improvement/\">Core Editor Improvement post series</a>. </p>\n\n\n\n<h2>Do I Need the Plugin to Use Gutenberg?</h2>\n\n\n\n<p>It depends on your comfort level! Generally speaking, it is not recommended to use the plugin on a site that has launched and is actively in use unless you’re very comfortable with the code side of WordPress. Fortunately, each WordPress release comes ready to go with <a href=\"https://developer.wordpress.org/block-editor/handbook/versions-in-wordpress/\">multiple versions of the Gutenberg plugin</a>.&nbsp;</p>\n\n\n\n<p>But if you are a keen beta tester who loves reporting feedback, or you feel comfortable navigating how to opt-in/out of the experimental aspects of the plugin, here are a few reasons you might want to dig into what the Gutenberg Plugin has to offer:</p>\n\n\n\n<ul><li>Test new features and give helpful feedback. For example, you can use the plugin to <a href=\"https://make.wordpress.org/test/handbook/full-site-editing-outreach-experiment/how-to-test-fse/\">help test Full Site Editing</a>.&nbsp;</li><li>Get early access to the latest &amp; greatest while navigating when to opt-in or out of experimental features.&nbsp;</li><li>Prepare for the future whether you’re a theme author, plugin developer, agency owner, etc.&nbsp;</li></ul>\n\n\n\n<p><em>Do you use the Gutenberg plugin and </em><a href=\"https://github.com/WordPress/gutenberg/issues\"><em>share feedback on GitHub</em></a><em>? Thank you! This kind of feedback is what helps ensure stability in what’s shipped in WordPress releases.&nbsp;</em></p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"10164\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:60:\"\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\t\t\n\n\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\n\t\t\n\t\t\n\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"WordPress 5.7.1 Security and Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wordpress.org/news/2021/04/wordpress-5-7-1-security-and-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 15 Apr 2021 03:05:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://wordpress.org/news/?p=10144\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:365:\"WordPress 5.7.1 is now available! This security and maintenance release features 26 bug fixes in addition to two security fixes. Because this is a security release, it is recommended that you update your sites immediately. All versions since WordPress 4.7 have also been updated. WordPress 5.7.1 is a short-cycle security and maintenance release. The next [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Peter Wilson\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:8461:\"\n<p>WordPress 5.7.1 is now available!</p>\n\n\n\n<p>This security and maintenance release features <a href=\"https://core.trac.wordpress.org/query?milestone=5.7.1&amp;group=component&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=priority\">26 bug fixes</a> in addition to two security fixes. Because this is a <strong>security release</strong>, it is recommended that you update your sites immediately. All versions since WordPress 4.7 have also been updated.</p>\n\n\n\n<p>WordPress 5.7.1 is a short-cycle security and maintenance release. The next major release will be version 5.8.</p>\n\n\n\n<p>You can download WordPress 5.7.1 by downloading from WordPress.org, or visit your Dashboard → Updates and click Update Now.</p>\n\n\n\n<p>If you have sites that support automatic background updates, they’ve already started the update process.</p>\n\n\n\n<h3>Security Updates</h3>\n\n\n\n<p>Two security issues affect WordPress versions between 4.7 and 5.7. If you haven’t yet updated to 5.7, all WordPress versions since 4.7 have also been updated to fix the following security issues:</p>\n\n\n\n<ul><li>Thank you <a href=\"https://www.sonarsource.com/\">SonarSource</a> for reporting an XXE vulnerability within the media library affecting PHP 8.</li><li>Thanks <a href=\"https://mikaelkorpela.fi/\">Mikael Korpela</a> for reporting a data exposure vulnerability within the REST API.</li></ul>\n\n\n\n<p>Thank you to all of the reporters for <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">privately disclosing the vulnerabilities</a>. This gave the security team time to fix the vulnerabilities before WordPress sites could be attacked.</p>\n\n\n\n<p>Props to <a href=\"https://profiles.wordpress.org/zieladam/\">Adam Zielinski</a>, <a href=\"https://profiles.wordpress.org/swissspidy/\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/jrf/\">Juliette Reinders Folmer</a>, <a href=\"https://profiles.wordpress.org/xknown/\">Alex Concha</a>, <a href=\"https://profiles.wordpress.org/ehtis/\">Ehtisham Siddiqui</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs/\">Timothy Jacobs</a> and the WordPress security team for their work on these issues.</p>\n\n\n\n<p>For more information, browse the <a href=\"https://core.trac.wordpress.org/query?milestone=5.7.1&amp;group=component&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=priority\">full list of changes</a> on Trac, or check out the <a href=\"https://wordpress.org/support/wordpress-version/version-5-7-1/\">version 5.7.1 HelpHub documentation page</a>.</p>\n\n\n\n<h2>Thanks and props!</h2>\n\n\n\n<p>The 5.7.1 release was led by <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">@peterwilsoncc</a> and <a href=\"https://profiles.wordpress.org/audrasjb/\">@audrasjb</a>.</p>\n\n\n\n<p>In addition to the security researchers and release squad members mentioned above, thank you to everyone who helped make WordPress 5.7.1 happen:</p>\n\n\n\n<p><a href=\"https://profiles.wordpress.org/ninetyninew/\">99w</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/annalamprou/\">annalamprou</a>, <a href=\"https://profiles.wordpress.org/anotherdave/\">anotherdave</a>, <a href=\"https://profiles.wordpress.org/aristath/\">Ari Stathopoulos</a>, <a href=\"https://profiles.wordpress.org/ayeshrajans/\">Ayesh Karunaratne</a>, <a href=\"https://profiles.wordpress.org/bobbingwide/\">bobbingwide</a>, <a href=\"https://profiles.wordpress.org/brechtvds/\">Brecht</a>, <a href=\"https://profiles.wordpress.org/talldanwp/\">Daniel Richards</a>, <a href=\"https://profiles.wordpress.org/davidbaumwald/\">David Baumwald</a>, <a href=\"https://profiles.wordpress.org/dkoo/\">dkoo</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling</a>, <a href=\"https://profiles.wordpress.org/dragongate/\">dragongate</a>, <a href=\"https://profiles.wordpress.org/eatsleepcode/\">eatsleepcode</a>, <a href=\"https://profiles.wordpress.org/ellatrix/\">Ella van Durpe</a>, <a href=\"https://profiles.wordpress.org/kebbet/\">Erik</a>, <a href=\"https://profiles.wordpress.org/fabianpimminger/\">Fabian Pimminger</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/mista-flo/\">Florian TIAR</a>, <a href=\"https://profiles.wordpress.org/gab81/\">gab81</a>, <a href=\"https://profiles.wordpress.org/galbaras/\">Gal Baras</a>, <a href=\"https://profiles.wordpress.org/geoffrey1963/\">Geoffrey</a>, <a href=\"https://profiles.wordpress.org/mamaduka/\">George Mamadashvili</a>, <a href=\"https://profiles.wordpress.org/glendaviesnz/\">Glen Davies</a>, <a href=\"https://profiles.wordpress.org/gziolo/\">Greg Ziółkowski</a>, <a href=\"https://profiles.wordpress.org/grzim/\">grzim</a>, <a href=\"https://profiles.wordpress.org/ipstenu/\">Ipstenu (Mika Epstein)</a>, <a href=\"https://profiles.wordpress.org/whyisjake/\">Jake Spurlock</a>, <a href=\"https://profiles.wordpress.org/jaymanpandya/\">Jayman Pandya</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/joen/\">Joen A.</a>, <a href=\"https://profiles.wordpress.org/jonkastonka/\">Johan Jonk Stenström</a>, <a href=\"https://profiles.wordpress.org/goaroundagain/\">Johannes Kinast</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby/\">John James Jacoby</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/joseeyoast/\">Josee Wouters</a>, <a href=\"https://profiles.wordpress.org/joyously/\">Joy</a>, <a href=\"https://profiles.wordpress.org/k3nsai/\">k3nsai</a>, <a href=\"https://profiles.wordpress.org/ryelle/\">Kelly Choyce-Dwan</a>, <a href=\"https://profiles.wordpress.org/gwwar/\">Kerry Liu</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius L. J.</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce-Dwan</a>, <a href=\"https://profiles.wordpress.org/mihdan/\">Mikhail Kobzarev</a>, <a href=\"https://profiles.wordpress.org/mmuyskens/\">mmuyskens</a>, <a href=\"https://profiles.wordpress.org/mukesh27/\">Mukesh Panchal</a>, <a href=\"https://profiles.wordpress.org/nicegamer7/\">nicegamer7</a>, <a href=\"https://profiles.wordpress.org/otshelnik-fm/\">Otshelnik-Fm</a>, <a href=\"https://profiles.wordpress.org/paaljoachim/\">Paal Joachim Romdahl</a>, <a href=\"https://profiles.wordpress.org/palmiak/\">palmiak</a>, <a href=\"https://profiles.wordpress.org/swissspidy/\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/pwallner/\">pwallner</a>, <a href=\"https://profiles.wordpress.org/rachelbaker/\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/youknowriad/\">Riad Benguella</a>, <a href=\"https://profiles.wordpress.org/rinatkhaziev/\">Rinat Khaziev</a>, <a href=\"https://profiles.wordpress.org/noisysocks/\">Robert Anderson</a>, <a href=\"https://profiles.wordpress.org/rogertheriault/\">Roger Theriault</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/yakimun/\">Sergey Yakimov</a>, <a href=\"https://profiles.wordpress.org/sirstuey/\">SirStuey</a>, <a href=\"https://profiles.wordpress.org/stefanjoebstl/\">stefanjoebstl</a>, <a href=\"https://profiles.wordpress.org/sabernhardt/\">Stephen Bernhardt</a>, <a href=\"https://profiles.wordpress.org/sumitsingh/\">Sumit Singh</a>, <a href=\"https://profiles.wordpress.org/cybr/\">Sybre Waaijer</a>, <a href=\"https://profiles.wordpress.org/synchro/\">Synchro</a>, <a href=\"https://profiles.wordpress.org/terriann/\">Terri Ann</a>, <a href=\"https://profiles.wordpress.org/tigertech/\">tigertech</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs/\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/tmatsuur/\">tmatsuur</a>, <a href=\"https://profiles.wordpress.org/tobiasbg/\">TobiasBg</a>, <a href=\"https://profiles.wordpress.org/hellofromtonya/\">Tonya Mork</a>, <a href=\"https://profiles.wordpress.org/toru/\">Toru Miki</a>, <a href=\"https://profiles.wordpress.org/grapplerulrich/\">Ulrich</a>, and <a href=\"https://profiles.wordpress.org/vladytimy/\">Vlad T</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"10144\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:63:\"\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\t\t\n\t\t\n\n\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\n\t\t\n\t\t\n\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"People of WordPress: Tyler Lau\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://wordpress.org/news/2021/04/people-of-wordpress-tyler-lau/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 13 Apr 2021 13:47:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:9:\"heropress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:16:\"ContributorStory\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:17:\"WordPress journey\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://wordpress.org/news/?p=10102\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:117:\"In this People of WordPress contributor story, we chat with Tyler Lau from Kansas, US, on his journey with WordPress.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"webcommsat AbhaNonStopNewsUK\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:10363:\"\n<p><em>WordPress is open source software, maintained by a global network of contributors. There are many examples of how WordPress has changed people’s lives for the better. In this monthly series, we share some of the amazing stories that are lesser-known.</em></p>\n\n\n\n<h2><strong>Embrace Who You Are and Your Journey</strong></h2>\n\n\n\n<p>In this People of WordPress contributor story, we chat to Tyler Lau from the US on his relationship building work in marketing and his WordPress journey.</p>\n\n\n\n<p>Read on to discover his story which shows it is often what you have learned from negative experiences in your life that can make you a major asset to a product team.</p>\n\n\n\n<figure class=\"wp-block-image size-large is-resized\"><img loading=\"lazy\" src=\"https://i1.wp.com/wordpress.org/news/files/2021/04/people-of-wp-tyler-thumb.jpg?resize=632%2C464&#038;ssl=1\" alt=\"Tyler Lau stood in front of a colorful mural\" class=\"wp-image-10116\" width=\"632\" height=\"464\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2021/04/people-of-wp-tyler-thumb.jpg?zoom=2&amp;resize=640%2C470&amp;ssl=1 1280w, https://i1.wp.com/wordpress.org/news/files/2021/04/people-of-wp-tyler-thumb.jpg?zoom=3&amp;resize=640%2C470&amp;ssl=1 1920w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<h2><strong>An Entrepreneurial Mindset</strong></h2>\n\n\n\n<p>Tyler recalls he always had a knack for spotting a enterprise ideas. As an industrious seven-year-old, he was already finding ways to make sales during the school breaks.&nbsp;</p>\n\n\n\n<p>While many entrepreneurs have similar stories, Tyler’s path took many turns before he discovered and thrived in the WordPress community.</p>\n\n\n\n<p>He was drawn to both the software and the community that surrounds it from his search for personal and professional freedom. He ultimately was able to combine his various business interests and people skills into professional marketing work.</p>\n\n\n\n<h2><strong>Using your skills to uncover your journey</strong></h2>\n\n\n\n<figure class=\"wp-block-image size-large is-resized\"><img loading=\"lazy\" src=\"https://i0.wp.com/wordpress.org/news/files/2021/04/people-of-wp-tyler-2.jpg?resize=632%2C758&#038;ssl=1\" alt=\"Tyler Lau pictured sat on a chair using his mobile phone in his social media work\" class=\"wp-image-10118\" width=\"632\" height=\"758\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2021/04/people-of-wp-tyler-2.jpg?zoom=2&amp;resize=640%2C768&amp;ssl=1 1280w, https://i0.wp.com/wordpress.org/news/files/2021/04/people-of-wp-tyler-2.jpg?zoom=3&amp;resize=640%2C768&amp;ssl=1 1920w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<p>Tyler’s current role is as a Marketing Relationship Builder, based in Kansas, USA. His responsibilities span across all digital properties and products, leveraging his broad set of business and people skills.</p>\n\n\n\n<p>These skills are amplified by his creativity and adaptability. Tyler says that one reason he is always looking for new projects is his Attention Deficit Hyperactivity Disorder (ADHD), a diagnosis he received in 2005.</p>\n\n\n\n<p>In an industry built by programmers and developers who often have a strong sense of focus, Tyler felt that someone with ADHD wouldn’t be seen as a natural fit. He found the WordPress community to be a place where everyone can find the right spot for their unique skills. Tyler’s skill is people, and this has translated into many opportunities and responsibilities in his work life. His skills have also helped him give back to the WordPress community as a speaker and volunteer, and through multiple contributor days.</p>\n\n\n\n<h2><strong>Relationship-building as a career</strong></h2>\n\n\n\n<p>Most of Tyler’s experience was in the restaurant industry, and his resume did not exactly point to a career in tech. But the service industry actually prepared him well for everything he has taken on since.</p>\n\n\n\n<p>When he is at work events, he meets people from across the world and builds connections with them. As an extrovert, he enjoys this and couldn’t imagine a job where he was isolated from getting to know others and relationship-building.</p>\n\n\n\n<p>Understanding people and being able to operate in any setting are key competencies. Social skills and tact are useful for community building in the WordPress space too, and in Tyler’s life at different times it has been necessary for survival. </p>\n\n\n\n<h2><strong>The true meaning of freedom</strong></h2>\n\n\n\n<p>In the WordPress community, the concept of freedom comes up often. WordPress is built on GPL, free software, and open-source values. Practically speaking, anyone can work remotely or be their own boss to gain more freedom in work and life.&nbsp;Tyler feels that he never fitted into a traditional work mould. With his strong focus on freedom, he found this resonated with the freedom and opportunities he believes WordPress provides him and thousands of others.</p>\n\n\n\n<p>Tyler describes how in 2013 his ‘inner opportunist’ got him into trouble. After dropping out of college following a brain aneurysm, he needed capital to fund his first startup.&nbsp;He shares that he found a quick but unlawful way to make money. Alongside this between shifts as a waiter, he worked on prototypes for his first product. The company was growing fast, and to protect his patents and take research and development to the next level, he had to work hard. Everything came to a halt when some of the actions he took resulted in being sent to prison.  </p>\n\n\n\n<p>He says that meeting other inmates reminded him that he was in a much better situation than most. He was educated, well-off, loved, and knew he had a future once he was released. He found that many inmates never graduated from high school and were computer illiterate. While inside, Tyler taught subjects like science, math, writing, reading, and social studies. He found that due to the lack of skills and support, many inmates would struggle upon release. He believes getting the mental health support and job training needed to thrive after prison is not easy for many.</p>\n\n\n\n<p>“<em>There’s more to freedom than just being on the outside. You also need a sense of agency and enfranchisement,</em>” says Tyler. He considered his sense of purpose and support network were plenty to keep him going and was ready to take on his next (legal) business challenge as soon as he could.</p>\n\n\n\n<h2>Going forward positively&nbsp;</h2>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" width=\"632\" height=\"632\" src=\"https://i0.wp.com/wordpress.org/news/files/2021/04/FF50DF21-38AA-4778-B465-C2DF0B441AD7.jpeg?resize=632%2C632&#038;ssl=1\" alt=\"Tyler Lau portrait picture\" class=\"wp-image-10139\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2021/04/FF50DF21-38AA-4778-B465-C2DF0B441AD7.jpeg?w=640&amp;ssl=1 640w, https://i0.wp.com/wordpress.org/news/files/2021/04/FF50DF21-38AA-4778-B465-C2DF0B441AD7.jpeg?resize=300%2C300&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2021/04/FF50DF21-38AA-4778-B465-C2DF0B441AD7.jpeg?resize=150%2C150&amp;ssl=1 150w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<p>The idea that your past doesn’t define you and you can choose to embrace it, is a key driver for Tyler.</p>\n\n\n\n<p>He describes himself as an outlier in many ways. He recalls how politics influenced his life from the day he was born. Tyler’s father is a semi-dissident Chinese visual anthropologist, his mother is an art professor who left her home country of Japan to break free from traditional Japanese gender roles. Tyler feels he inherited a lot of this fearlessness.</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>“<em>I’ve never fitted in, and yet this is what makes me able to adapt to most situations and relate to just about anyone. I embrace my eclectic, dissonant past and see beauty in the person those experiences shaped me to be</em>,” says Tyler.&nbsp;</p></blockquote>\n\n\n\n<p>Now, he’s able to put those skills to good use in the WordPress community and beyond.&nbsp;</p>\n\n\n\n<p>He says: “<em>Regardless of your physical abilities, mental health struggles, upbringing, and even your run-ins with the law, no one is excluded from carving their place in the WordPress industry</em>”.<br></p>\n\n\n\n<h2><strong>Contributors</strong></h2>\n\n\n\n<p>Thank you to Tyler Lau (<a href=\'https://profiles.wordpress.org/tylermaximus/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>tylermaximus</a>) for sharing his #ContributorStory.</p>\n\n\n\n<p>Thanks to Larissa Murillo (<a href=\"https://profiles.wordpress.org/lmurillom/\">@lmurillom</a>), Surendra Thakor (<a href=\'https://profiles.wordpress.org/sthakor/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>sthakor</a>), Olga Gleckler (<a href=\'https://profiles.wordpress.org/oglekler/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>oglekler</a>), Meher Bala (<a href=\"https://profiles.wordpress.org/meher/\">@meher</a>), Yvette Sonneveld (<a href=\'https://profiles.wordpress.org/yvettesonneveld/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>yvettesonneveld</a>), Abha Thakor (<a href=\"https://profiles.wordpress.org/webcommsat/\">@webcommsat</a>), Josepha Haden (<a href=\"https://profiles.wordpress.org/chanthaboune/\">@chanthaboune</a>), Chloé Bringmann (<a href=\"https://profiles.wordpress.org/cbringmann/\">@cbringmann</a>) and Topher DeRosia (<a href=\"https://profiles.wordpress.org/topher1kenobe/\">@topher1kenobe</a>) for working on the People of WordPress series.</p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://lh3.googleusercontent.com/Y3odYTyvSfJbVxUxUWEgKxOprox2zxVwhk7_vdW-AIs4IlE-jK0Zt1itCj867x0dIAbIiK-VeuTLMZr6BjNEY0fkTf--4dT1hkLbnGtsPFNfyrVBYIN59IirTkNnqiQgqxk6E1MI\" alt=\"HeroPress logo\" /></figure>\n\n\n\n<p><em>This post is based on an article originally published on HeroPress.com, a community initiative created by&nbsp;</em><a href=\"https://profiles.wordpress.org/topher1kenobe/\"><em>Topher DeRosia</em></a><em>. It highlights people in the WordPress community who have overcome barriers and whose stories would otherwise go unheard.</em></p>\n\n\n\n<p><em>Meet more WordPress community members in our&nbsp;<a href=\"https://wordpress.org/news/category/heropress/\">People of WordPress</a>&nbsp;series.</em></p>\n\n\n\n<p><em>#ContributorStory #HeroPress</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"10102\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:61:\"\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\t\t\n\n\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\n\t\t\n\t\t\n\n\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"WP Briefing: Who Is WordPress?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wordpress.org/news/2021/04/who-is-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 12 Apr 2021 14:36:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:9:\"Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"wp-briefing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/news/?post_type=podcast&p=10099\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:246:\"In this episode, Josepha explores the five groups within the WordPress ecosystem and provides a high-level example of how they interact and support one another. As always, stay tuned for the small list of big things and a contributor highlight.  \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"enclosure\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:60:\"https://wordpress.org/news/files/2021/04/WP-Briefing-006.mp3\";s:6:\"length\";s:1:\"0\";s:4:\"type\";s:0:\"\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Chloe Bringmann\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:9292:\"\n<p>In this episode, Josepha explores the five groups within the WordPress ecosystem and provides a high-level example of how they interact and support one another. As always, stay tuned for the small list of big things and a contributor highlight.&nbsp;&nbsp;</p>\n\n\n\n<p><em><strong>Have a question you&#8217;d like answered? You can submit them to <a href=\"mailto:wpbriefing@wordpress.org\">wpbriefing@wordpress.org</a>, either written or as a voice recording.</strong></em></p>\n\n\n\n<h2><strong>Credits</strong></h2>\n\n\n\n<ul><li>Editor:<a href=\"https://profiles.wordpress.org/dustinhartzler/\"> Dustin Hartzler</a></li><li>Logo:<a href=\"https://profiles.wordpress.org/beafialho/\"> Beatriz Fialho</a></li><li>Production:<a href=\"https://profiles.wordpress.org/mkaz/\"> </a><a href=\"https://profiles.wordpress.org/cbringmann/\">Chloé Bringmann</a></li><li>Song: Fearless First by Kevin MacLeod</li></ul>\n\n\n\n<h2>References</h2>\n\n\n\n<ul><li>Get to know<a href=\"https://make.wordpress.org/\"> WordPress Teams</a></li><li><a href=\"https://wordpress.tv/2017/12/10/josepha-haden-beginners-guide-to-contributions/\">Five Steps of Volunteer Engagement </a></li><li><a href=\"https://twitter.com/CoachBirgit/status/1339516878495117313\">Community Highlight </a></li><li><a href=\"https://centroamerica.wordcamp.org/2021/\">WordCamp Centroamérica 2021 Online</a> (<a href=\"https://centroamerica.wordcamp.org/2021/sesiones/\">Schedule</a>)</li><li><a href=\"https://wordpress.org/news/2021/03/so-you-want-to-make-block-patterns/\">So you want to make block patterns?</a></li><li><a href=\"https://docs.google.com/spreadsheets/d/1h73xMwjSRkJJsn7ooiwXFeZpd0hxXh26pJ7qXzI5iUg/edit#gid=0\">Gutenberg Tutorial sign-up</a></li></ul>\n\n\n\n<h2>Transcript</h2>\n\n\n\n<span id=\"more-10099\"></span>\n\n\n\n<p>Hello, everyone, and welcome to the WordPress briefing, the podcast where you can catch quick explanations of some of the ideas behind the WordPress open source project and the community around it, as well as get a small list of big things coming up in the next two weeks. I&#8217;m your host, Josepha Haden Chomphosy. Here we go!</p>\n\n\n\n<p>In the first episode of this podcast, I said that there&#8217;s a lot that goes into WordPress, that&#8217;s really hard to see. One of the hardest things to see about the WordPress project as you get started is the overall structure. There is quite a bit of documentation that can clarify the basics: the names of teams, what they work on, and where, and when they meet. The way that they influence and support each other can really feel like a bit of a mystery. So today, I&#8217;m going to break down the WordPress community into five big groups; I want you to keep a couple of things in mind.&nbsp;</p>\n\n\n\n<p>Firstly, these are high-level and based on my observations. Each of these groups can be further broken down into subgroups. So while you may not feel represented in this exact five, you are included if you were to dig a little bit deeper. The second thing to keep in mind is that the makeup of these groups is pretty fluid. Many community members find themselves in more than one group, but generally not far off. Some group two folks end up in group three, depending on the situation, people in group four can also end up in group five, and so on. As with so many things that I share, I&#8217;m not trying to insist that one size fits all. I&#8217;m not trying to put the WordPress community into a box. This is just a basic framework to understand how it all fits together. Alright, are you ready? I&#8217;m ready. Let&#8217;s do it!</p>\n\n\n\n<p>Okay, I have a broad definition of the community, which I have mentioned before. I believe that the community is anyone who has interacted with WordPress, whether they know it or not. So, I&#8217;ll start from way out there and work my way in that first group; we’re going to call our <strong>Visitors</strong>.&nbsp;</p>\n\n\n\n<p><strong>Visitors</strong> are people who arrive at a WordPress site to gain information or engage in an activity. Sometimes they know it&#8217;s a WordPress site, but most of the time, they don&#8217;t. The second group are <strong>Users</strong>, people who use WordPress as their CMS. So, that&#8217;s website builders, website designers, small businesses, content creators, and the list goes on and on. The third group I like to refer to is the <strong>Extenders</strong>. Those are people who extend WordPress through the creation of blocks, themes, plugins, and more. There are also people who teach WordPress to others through WordPress podcasts, and newsletters and tutorials. The fourth group I refer to as our <strong>Contributors</strong> is the people who contribute to the open source software and the infrastructure supporting it, but not necessarily the same people who contribute directly to their own product. And then there&#8217;s group five, <strong>Leaders</strong>. Those are people who help drive the vision and strategy for WordPress; the most notable member of that group is of course, Matt Mullenweg. And I&#8217;m also in that group.&nbsp;</p>\n\n\n\n<p>Each of these groups directly influenced the groups on either side. For example, a WordPress user is affected by both visitors and extenders. Imagine a content creator who shares their passion for photography through a WordPress site; this photographer may have visitors that need to purchase photos. In response, the user now has a need to make it possible for visitors to purchase photos on a site. So they go to what we consider the extenders, people who have built a plugin that supports that need. And as a result, that user can install that on their site. And they have have satisfied the need of the visitors to their site, the people who now can purchase photos.&nbsp;</p>\n\n\n\n<p>There are a lot of examples like this in the WordPress project. Every small pattern that you see is mirrored in the larger patterns across our ecosystem. And every large pattern you see in the ecosystem can be seen among our teams. It&#8217;s pretty cool to look at really. So, why should this matter to you? From a very practical standpoint, this matters for anyone who&#8217;s trying to learn more about contributing to the WordPress project. These five groups mirror very closely the five steps of volunteer engagement that we see across the ecosystem and from a more philosophical standpoint, it&#8217;s just kind of nice to know who your neighbors are. Without the influence and support of the groups around us, it can be hard to know whether we&#8217;re on the right track or not. So take a look to your left and look to your right, and get to know your partners in this project.</p>\n\n\n\n<p>That brings us now to our community highlight, the segment where I share a note about contributors who have helped others along the way, or WordPress success story. This week&#8217;s highlight is from @CoachBirgit, <a href=\"https://profiles.wordpress.org/coachbirgit/\">Birgit Olzem</a>, a longtime contributor and a friend of mine. Her success story goes like this.&nbsp;</p>\n\n\n\n<p>WordPress has allowed me as a mother of five to leave a toxic marriage for good.&nbsp;</p>\n\n\n\n<p>Later, the community picked me up when I became seriously ill.&nbsp;</p>\n\n\n\n<p>So I can say from the bottom of my heart, that working with WordPress has saved my life.</p>\n\n\n\n<p>And now our small list of big things. I&#8217;ve got three things for you this week. I think that they&#8217;re all very important. And I hope you check them all out. The first one is a reminder that word camp Central America is coming up on April 15 and 16th. If you have not registered for tickets, you still have time, I will share a link to the registration page and the schedule in the show notes below.&nbsp;</p>\n\n\n\n<p>The second thing on our small list of big things is that the Gutenberg 10.4 release is coming out later this week on April 14th. It&#8217;s an important release because it&#8217;s when we take a look at the current iteration of full site editing tools that we have, and decide if it&#8217;s ready to get into the WordPress 5.8 release. There&#8217;s a post that has a little more information about that which I will share in the show notes below as well. If you haven&#8217;t checked out the Gutenberg plugin lately, obviously I think it&#8217;s a good idea to do that in general, but definitely a good idea to check it out now.&nbsp;</p>\n\n\n\n<p>The third thing on our list today is a reminder to check out our most recent block pattern tutorial, I&#8217;ll share a link to that in the show notes. It&#8217;s this kind of tips and tricks, tutorial, the “show me how to do it,” kind of thing in the style of <a href=\"https://css-tricks.com/css-style-guides/\">CSS-Tricks</a>. If you or anyone that you know might be interested in sharing a similar style of tutorial, there&#8217;s a link to a form in that show notes as well so that you can share with us your name and the topic that you&#8217;re interested in. We&#8217;ll take a look and see if it&#8217;s something that we definitely need to make sure our users know how to do. So, that my friends is your small list of big things.&nbsp;</p>\n\n\n\n<p>Thank you for joining in today for the WordPress briefing. I&#8217;m your host, Josepha Haden Chomphosy. I&#8217;ll see you again in a couple of weeks!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"10099\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:57:\"\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\n\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\n\t\t\n\t\t\n\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"The Month in WordPress: March 2021\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wordpress.org/news/2021/04/the-month-in-wordpress-march-2021/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 03 Apr 2021 16:00:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://wordpress.org/news/?p=10084\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:319:\"This way of iterating improves WordPress and ties back to one of my favorite open-source principles. The idea that with many eyes, all bugs are shallow. To me, that means that with enough people looking at a problem, someone is bound to be able to see the solution. These words from Josepha Haden Chomphosy on [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Hari Shanker R\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:9821:\"\n<blockquote class=\"wp-block-quote\"><p>This way of iterating improves WordPress and ties back to one of my favorite open-source principles. The idea that with many eyes, all bugs are shallow. To me, that means that with enough people looking at a problem, someone is bound to be able to see the solution.</p></blockquote>\n\n\n\n<p class=\"has-drop-cap\">These words from <a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha Haden Chomphosy</a> on the <a href=\"https://wordpress.org/news/2021/03/how-wordpress-improves/\">How WordPress Improves</a> episode of the <a href=\"https://wordpress.org/news/podcast/\">WP Briefing Podcast</a> point to the factors that differentiate building software in an open-source environment. Our updates this month are closely tied to the philosophy behind those core principles of open source software.&nbsp;</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>WordPress 5.7 released</h2>\n\n\n\n<p>WordPress <a href=\"https://wordpress.org/news/2021/03/esperanza/\">version 5.7</a> “Esperanza,” came out on March 9. The release offers fresher admin colors, several improvements to the block editor, single-click HTTP to HTTPS migration, and a new Robots API. Read more about it in the <a href=\"https://wordpress.org/news/2021/03/esperanza/\">release post</a>, the <a href=\"https://make.wordpress.org/core/2021/02/23/wordpress-5-7-field-guide/\">field guide</a>, and the <a href=\"https://make.wordpress.org/community/2021/03/12/meetup-group-resources-talking-points-for-wordpress-5-7/\">talking points post for meetup groups</a>. The Core Team has also <a href=\"https://make.wordpress.org/core/2021/03/30/5-8-pre-planning/\">started work on WordPress 5.8 pre-planning</a>.</p>\n\n\n\n<p>Want to contribute to WordPress 5.8? Join the WordPress <a href=\"https://wordpress.slack.com/archives/C02RQBWTW\">#core</a> channel in the <a href=\"https://make.wordpress.org/chat/\">Make WordPress Slack</a> and follow the <a href=\"https://make.wordpress.org/core/\">Core Team blog</a>. The Core Team hosts weekly chats on Wednesdays at <a href=\"https://www.timeanddate.com/worldclock/fixedtime.html?hour=5&amp;min=00&amp;sec=0\">5 AM</a> and <a href=\"https://www.timeanddate.com/worldclock/fixedtime.html?hour=20&amp;min=00&amp;sec=0\">8 PM</a> UTC.&nbsp;</p>\n\n\n\n<h2>Gutenberg Version 10.1 and 10.2 are out</h2>\n\n\n\n<p>Contributor teams released Gutenberg <a href=\"https://make.wordpress.org/core/2021/03/02/whats-new-in-gutenberg-10-1-3-march/\">Version 10.1</a> on March 3 and <a href=\"https://make.wordpress.org/core/2021/03/17/whats-new-in-gutenberg-10-2-17-march/\">Version 10.2</a> on March 17.</p>\n\n\n\n<p><a href=\"https://make.wordpress.org/core/2021/03/02/whats-new-in-gutenberg-10-1-3-march/\">Version 10.1</a> showcases significant improvements to reusable blocks, a clearer image toolbar, and spatial options for the social media block. <a href=\"https://make.wordpress.org/core/2021/03/17/whats-new-in-gutenberg-10-2-17-march/\">Version 10.2</a> offers block pattern options to display contents from the query block and removes writing prompts from empty paragraphs in the editor. It also adds width adjustment for spacer blocks in horizontal parent blocks and the ability to transform media and text blocks into columns.</p>\n\n\n\n<p>Want to get involved in building Gutenberg? Follow <a href=\"https://make.wordpress.org/core/\">the Core Team blog</a>, contribute to <a href=\"https://github.com/WordPress/gutenberg/\">Gutenberg on GitHub</a>, and join the <a href=\"https://wordpress.slack.com/archives/C02QB2JS7\">#core-editor</a> channel in <a href=\"https://make.wordpress.org/chat/\">the Make WordPress Slack</a>. The “<a href=\"https://make.wordpress.org/core/2021/03/08/whats-next-in-gutenberg-march-2021/\">What’s next in Gutenberg</a>” post offers more details on the latest updates. Don’t miss the monthly Gutenberg tutorial on <a href=\"https://wordpress.org/news/2021/03/so-you-want-to-make-block-patterns/\">How to make block patterns</a>!</p>\n\n\n\n<h2>Full Site Editing updates</h2>\n\n\n\n<p>March saw a plethora of updates to the <a href=\"https://make.wordpress.org/core/tag/full-site-editing/\">Full Site Editing</a> project!</p>\n\n\n\n<ul><li><a href=\'https://profiles.wordpress.org/chanthaboune/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>chanthaboune</a> published a <a href=\"https://make.wordpress.org/updates/2021/03/12/full-site-editing-pre-merge-overview/\">Full Site Editing pre-merge overview</a>. She shares the project’s current status, go/no-go dates for core merge, communication plans, and challenges.&nbsp;</li><li>March saw two calls for testing as part of the <a href=\"https://make.wordpress.org/test/handbook/full-site-editing-outreach-experiment/\">Full Site Editing outreach program</a>. The first test of the month — <a href=\"https://make.wordpress.org/test/2021/03/09/fse-program-testing-call-3-create-a-fun-custom-404-%20page/\">creating a custom 404 page</a>,&nbsp; wrapped up successfully.&nbsp; Participate in the latest testing initiative — <a href=\"https://make.wordpress.org/test/2021/03/25/fse-program-testing-call-4-building-a-restaurant-themed-header/\">&nbsp;build a restaurant-themed website header</a> to help improve the future of WordPress! Deadline: April 8.&nbsp;</li><li>You can also find <a href=\"https://make.wordpress.org/core/2021/03/16/high-level-feedback-from-the-fse-program-march/\">high-level feedback on the FSE Program</a> in this March 2021 post.</li></ul>\n\n\n\n<h2>Proposal launched for a WordPress contributor handbook</h2>\n\n\n\n<p>A proposal has been kicked off on <a href=\"https://make.wordpress.org/updates/2021/03/16/proposal-a-wordpress-project-contributor-handbook/\">building a project-wide WordPress contributor handbook</a>. The handbook will have content around the WordPress project’s underlying philosophies and commitments, along with shared expectations on working together and building products. It will also contain modern open source best practices for WordPress.&nbsp;</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>Further Reading</h2>\n\n\n\n<ul><li>You can now schedule office hours with Matt Mullenweg and Josepha Haden as part of their <a href=\"https://make.wordpress.org/core/2021/03/12/q2-listening-hours-april-7th-2021/\">Q2 Quarterly listening hours initiative</a>. This quarter’s listening session is scheduled for April 7th, 2021, from <a href=\"https://www.timeanddate.com/worldclock/fixedtime.html?iso=20210407T2200\">22:00</a>&#8211;<a href=\"https://www.timeanddate.com/worldclock/fixedtime.html?iso=20210408T0000\">24:00</a> UTC. Slots are still available — <a href=\"https://calendly.com/mmullenweg/team-lead-office-hours?month=2021-04&amp;date=2021-04-08\">sign up now</a>!&nbsp;</li><li>The Themes Team is working on <a href=\"https://make.wordpress.org/themes/2021/03/17/next-steps-on-themes-and-reviews/\">automating the theme review process</a>. The team has shared a detailed post on these changes and is requesting feedback.</li><li>The Core Team has <a href=\"https://make.wordpress.org/core/2021/03/05/dual-licensing-gutenberg-next-steps/\">kicked-off plans</a> on dual licensing Gutenberg under GPL and MPL.</li><li><a href=\"https://buddypress.org/2021/03/buddypress-7-2-1-security-release/\">Version 7.2.1</a> of BuddyPress (security release) is out! Update all your BuddyPresses!</li><li>The Docs Team shipped the <a href=\"https://make.wordpress.org/docs/2021/03/07/wordpress-documentation-style-guide-google-season-of-docs-2020-project-report-tacitonic/\">WordPress documentation style guide</a> as part of its Google Season of Docs 2020 effort. The team has also kicked off work on applying for <a href=\"https://href.li/?https://make.wordpress.org/docs/tag/season-of-docs-2021/\">Google Season of Docs 2021</a>!</li><li>The Polyglots Team is making <a href=\"https://make.wordpress.org/polyglots/2021/03/26/polyglots-training-working-group-update-2/\">significant progress on building their contributor training program</a>. The team is also requesting feedback on <a href=\"https://make.wordpress.org/polyglots/2021/03/30/request-for-feedback-polyglots-team-stats-dashboard/\">building their dashboard</a>.</li><li><a href=\'https://profiles.wordpress.org/chanthaboune/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>chanthaboune</a> shared an <a href=\"https://make.wordpress.org/updates/2021/03/19/experiment-coordinating-sponsored-contributor-teams/\">experiment to coordinate sponsored contributors</a> by adding them to a private Slack channel to offer them better support.</li><li>The Community Team announced its revamped <a href=\"https://make.wordpress.org/community/2021-wordpress-global-community-sponsorship-program/\">2021 Global Sponsorship Program</a>. The team also published a <a href=\"https://make.wordpress.org/community/2021/03/12/2021-financial-update-for-the-wordpress-community/\">financial update for WP Communities in 2021</a>.</li><li>The Core Team is moving ahead to <a href=\"https://make.wordpress.org/core/2021/03/04/discussion-dropping-support-for-ie11/\">drop support for Internet Explorer 11</a> for upcoming versions of WordPress.</li><li>The Design Team shared <a href=\"https://make.wordpress.org/design/2021/03/30/wordpress-org-patterns-directory/\">initial designs for the Block pattern directory</a>.</li><li>The <a href=\"https://make.wordpress.org/chat/\">Make WordPress Slack</a> workspace briefly went down on March 30 due to a Slack ToS issue, which was subsequently resolved. More details on <a href=\"https://make.wordpress.org/updates/2021/03/30/journal-entry-wordpress-slack-workspace-unavailability/\">this explainer post</a>.</li></ul>\n\n\n\n<p><em>Have a story that we should include in the next “Month in WordPress” post? Please </em><a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\"><em>submit it using this form</em></a><em>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"10084\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:68:\"\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\n\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\n\t\t\n\t\t\n\n\n\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"So you want to make block patterns?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://wordpress.org/news/2021/03/so-you-want-to-make-block-patterns/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 30 Mar 2021 17:01:10 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Features\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:9:\"Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:9:\"tutorials\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=9995\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"Learn how to make block patterns!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"enclosure\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:59:\"https://wordpress.org/news/files/2021/03/reusable-block.mp4\";s:6:\"length\";s:6:\"273436\";s:4:\"type\";s:9:\"video/mp4\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:58:\"https://wordpress.org/news/files/2021/03/waves-pattern.mp4\";s:6:\"length\";s:6:\"493389\";s:4:\"type\";s:9:\"video/mp4\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Beatriz Fialho\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:22433:\"\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" width=\"632\" height=\"356\" src=\"https://i2.wp.com/wordpress.org/news/files/2021/03/Block-Patterns.jpg?resize=632%2C356&#038;ssl=1\" alt=\"\" class=\"wp-image-9998\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2021/03/Block-Patterns.jpg?resize=1024%2C576&amp;ssl=1 1024w, https://i2.wp.com/wordpress.org/news/files/2021/03/Block-Patterns.jpg?resize=300%2C169&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2021/03/Block-Patterns.jpg?resize=768%2C432&amp;ssl=1 768w, https://i2.wp.com/wordpress.org/news/files/2021/03/Block-Patterns.jpg?w=1441&amp;ssl=1 1441w, https://i2.wp.com/wordpress.org/news/files/2021/03/Block-Patterns.jpg?w=1264&amp;ssl=1 1264w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<p>If you&#8217;ve ever built something for the WordPress block editor — a theme or a plugin — you may have also heard about <strong>block patterns</strong>. </p>\n\n\n\n<p>Looking at the patterns that come bundled with WordPress, I thought it would be nice to dedicate to them a short post. They&#8217;re pretty nice, useful shortcuts when you know them, but there&#8217;s a good chance you may not know what they are or why you might want to use them.</p>\n\n\n\n<h2>What&#8217;s a block pattern?</h2>\n\n\n\n<p>Patterns are&nbsp;<strong>collections of pre-arranged blocks</strong>&nbsp;that can be combined and arranged in many ways making it easier to create beautiful content. They act as a head-start, leaving you to plug and play with your content as you see fit and be as simple as single blocks or as complex as a full-page layout.</p>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img loading=\"lazy\" width=\"632\" height=\"414\" src=\"https://i0.wp.com/wordpress.org/news/files/2021/03/block-library.png?resize=632%2C414&#038;ssl=1\" alt=\"\" class=\"wp-image-10021\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2021/03/block-library.png?resize=1024%2C670&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2021/03/block-library.png?resize=300%2C196&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2021/03/block-library.png?resize=768%2C503&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2021/03/block-library.png?resize=1536%2C1005&amp;ssl=1 1536w, https://i0.wp.com/wordpress.org/news/files/2021/03/block-library.png?resize=2048%2C1340&amp;ssl=1 2048w, https://i0.wp.com/wordpress.org/news/files/2021/03/block-library.png?w=1264&amp;ssl=1 1264w, https://i0.wp.com/wordpress.org/news/files/2021/03/block-library.png?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure></div>\n\n\n\n<p>They live in a tab in the block library. You can click or drag and you&#8217;re able to preview them with your site&#8217;s styles.</p>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img loading=\"lazy\" width=\"632\" height=\"413\" src=\"https://i2.wp.com/wordpress.org/news/files/2021/03/block-pattern.png?resize=632%2C413&#038;ssl=1\" alt=\"\" class=\"wp-image-10022\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2021/03/block-pattern.png?resize=1024%2C669&amp;ssl=1 1024w, https://i2.wp.com/wordpress.org/news/files/2021/03/block-pattern.png?resize=300%2C196&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2021/03/block-pattern.png?resize=768%2C502&amp;ssl=1 768w, https://i2.wp.com/wordpress.org/news/files/2021/03/block-pattern.png?resize=1536%2C1003&amp;ssl=1 1536w, https://i2.wp.com/wordpress.org/news/files/2021/03/block-pattern.png?resize=2048%2C1338&amp;ssl=1 2048w, https://i2.wp.com/wordpress.org/news/files/2021/03/block-pattern.png?w=1264&amp;ssl=1 1264w, https://i2.wp.com/wordpress.org/news/files/2021/03/block-pattern.png?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure></div>\n\n\n\n<p>Basically, a block pattern is just a bunch of blocks put together in advance:</p>\n\n\n\n<pre class=\"wp-block-code\"><code>\t&lt;!-- wp:group --&gt;\n&lt;div class=\"wp-block-group\"&gt;&lt;div class=\"wp-block-group__inner-container\"&gt;&lt;!-- wp:separator {\"className\":\"is-style-default\"} --&gt;\n&lt;hr class=\"wp-block-separator is-style-default\"/&gt;\n&lt;!-- /wp:separator --&gt;\n&lt;!-- wp:image {\"align\":\"center\",\"id\":553,\"width\":150,\"height\":150,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} --&gt;\n&lt;div class=\"wp-block-image is-style-rounded\"&gt;&lt;figure class=\"aligncenter size-large is-resized\"&gt;&lt;img src=\"https://blockpatterndesigns.mystagingwebsite.com/wp-content/uploads/2021/02/StockSnap_HQR8BJFZID-1.jpg\" alt=\"\" class=\"wp-image-553\" width=\"150\" height=\"150\"/&gt;&lt;/figure&gt;&lt;/div&gt;\n&lt;!-- /wp:image --&gt;\n&lt;!-- wp:quote {\"align\":\"center\",\"className\":\"is-style-large\"} --&gt;\n&lt;blockquote class=\"wp-block-quote has-text-align-center is-style-large\"&gt;&lt;p&gt;\"Contributing makes me feel like I\'m being useful to the planet.\"&lt;/p&gt;&lt;cite&gt;— Anna Wong, &lt;em&gt;Volunteer&lt;/em&gt;&lt;/cite&gt;&lt;/blockquote&gt;\n&lt;!-- /wp:quote --&gt;\n&lt;!-- wp:separator {\"className\":\"is-style-default\"} --&gt;\n&lt;hr class=\"wp-block-separator is-style-default\"/&gt;\n&lt;!-- /wp:separator --&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;!-- /wp:group --&gt;</code></pre>\n\n\n\n<p>That&#8217;s also how you create them: just use the block editor to configure a smattering of blocks to your liking, and the hard part&#8217;s over.</p>\n\n\n\n<h2>How do I get them in the block library?</h2>\n\n\n\n<p>There&#8217;s <a href=\"https://developer.wordpress.org/block-editor/developers/block-api/block-patterns/\">more documentation in the handbook</a>, but what it boils down to is this:</p>\n\n\n\n<pre class=\"wp-block-code\"><code>&lt;?php \n/*\nPlugin Name: Quote Pattern Example Plugin\n*/\n\nregister_block_pattern(\n\t\'my-plugin/my-quote-pattern\',\n\tarray(\n\t\t\'title\'       =&gt; __( \'Quote with Avatar\', \'my-plugin\' ),\n\t\t\'categories\'  =&gt; array( \'text\' ),\n\t\t\'description\' =&gt; _x( \'A big quote with an avatar\".\', \'Block pattern description\', \'my-plugin\' ),\n\t\t\'content\'     =&gt; \'&lt;!-- wp:group --&gt;&lt;div class=\"wp-block-group\"&gt;&lt;div class=\"wp-block-group__inner-container\"&gt;&lt;!-- wp:separator {\"className\":\"is-style-default\"} --&gt;&lt;hr class=\"wp-block-separator is-style-default\"/&gt;&lt;!-- /wp:separator --&gt;&lt;!-- wp:image {\"align\":\"center\",\"id\":553,\"width\":150,\"height\":150,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} --&gt;&lt;div class=\"wp-block-image is-style-rounded\"&gt;&lt;figure class=\"aligncenter size-large is-resized\"&gt;&lt;img src=\"https://blockpatterndesigns.mystagingwebsite.com/wp-content/uploads/2021/02/StockSnap_HQR8BJFZID-1.jpg\" alt=\"\" class=\"wp-image-553\" width=\"150\" height=\"150\"/&gt;&lt;/figure&gt;&lt;/div&gt;&lt;!-- /wp:image --&gt;&lt;!-- wp:quote {\"align\":\"center\",\"className\":\"is-style-large\"} --&gt;&lt;blockquote class=\"wp-block-quote has-text-align-center is-style-large\"&gt;&lt;p&gt;\"Contributing makes me feel like I\\\'m being useful to the planet.\"&lt;/p&gt;&lt;cite&gt;— Anna Wong, &lt;em&gt;Volunteer&lt;/em&gt;&lt;/cite&gt;&lt;/blockquote&gt;&lt;!-- /wp:quote --&gt;&lt;!-- wp:separator {\"className\":\"is-style-default\"} --&gt;&lt;hr class=\"wp-block-separator is-style-default\"/&gt;&lt;!-- /wp:separator --&gt;&lt;/div&gt;&lt;/div&gt;&lt;!-- /wp:group --&gt;\',\n\t)\n);\n\n?&gt;</code></pre>\n\n\n\n<p><img src=\"https://s.w.org/images/core/emoji/13.0.1/72x72/1f446.png\" alt=\"?\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> That&#8217;s a snippet of PHP, which means you can drop it in a WordPress plugin, or perhaps more simply, paste it into the <strong>functions.php</strong> file from your theme. Done:</p>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img loading=\"lazy\" width=\"632\" height=\"430\" src=\"https://i2.wp.com/wordpress.org/news/files/2021/03/Quote.jpg?resize=632%2C430&#038;ssl=1\" alt=\"\" class=\"wp-image-10047\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2021/03/Quote.jpg?resize=1024%2C696&amp;ssl=1 1024w, https://i2.wp.com/wordpress.org/news/files/2021/03/Quote.jpg?resize=300%2C204&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2021/03/Quote.jpg?resize=768%2C522&amp;ssl=1 768w, https://i2.wp.com/wordpress.org/news/files/2021/03/Quote.jpg?resize=1536%2C1043&amp;ssl=1 1536w, https://i2.wp.com/wordpress.org/news/files/2021/03/Quote.jpg?w=1908&amp;ssl=1 1908w, https://i2.wp.com/wordpress.org/news/files/2021/03/Quote.jpg?w=1264&amp;ssl=1 1264w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure></div>\n\n\n\n<p>For patterns that include images, it&#8217;s worth thinking about where those are stored. The <a href=\"https://wordpress.org/themes/tt1-blocks/\">TT1 Blocks theme</a> (which is a fancy name for &#8220;TwentyTwentyOne Blocks&#8221;) stores images in the theme library.</p>\n\n\n\n<h2>Now what?</h2>\n\n\n\n<p>The thing about a block pattern is, as soon as you insert it from the block library, it stops being <em>a cohesive unit</em> — now it&#8217;s just a smattering of blocks, detached from the pattern you created and meant to be customized to your liking. It&#8217;s a <em>shortcut</em>, not a <em>template</em>. That also means you don&#8217;t have to worry about switching themes or deactivating pattern plugins: the blocks you already inserted won&#8217;t go anywhere.</p>\n\n\n\n<p>That being said, if you like this one pattern so much you want to use it again and again, with no customization at all, you can make it into a <a href=\"https://wordpress.org/news/2021/02/gutenberg-tutorial-reusable-blocks/\">reusable block</a>:</p>\n\n\n\n<figure class=\"wp-block-video\"><video controls loop src=\"https://wordpress.org/news/files/2021/03/reusable-block.mp4\"></video></figure>\n\n\n\n<p>Reusable blocks are created, as the name implies, to be reused. The feature is a great way to store small bits of commonly used snippets that you can edit in one place to update in all. &#8220;<strong>Follow me on Twitter</strong>,&#8221; &#8220;<strong>Article series</strong>,<strong>&#8220;</strong> or <strong>&#8220;Subscribe to my podcast&#8221;</strong> are great examples of that.</p>\n\n\n\n<h2>What makes a good block pattern?</h2>\n\n\n\n<p>Patterns, as they ship today, are limited by the features available. If the block editor doesn&#8217;t allow you to customize letter-spacing, your block pattern can&#8217;t either. While the Global Styles project will expand what&#8217;s to blocks, in the meantime, we have to work with the available tools.</p>\n\n\n\n<p>Even then, with the most basic ingredients — color, photography, typography — it is possible to do a lot:</p>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter\"><img src=\"https://lh5.googleusercontent.com/W3RKCu5c7ONKnmuLdChmOhD40iZAFseq30i-qGwqFaq0dPTj_U5b1JXhhRR96-jRvJvKgC8BBZA4p_-EBYF-WoMRPoDLgCX8FG3RIWQhv6zX6-H7xBj4FZGGRm7cl_qdVgRy9G8q\" alt=\"\" /><figcaption>Three columns with images and text<br></figcaption></figure></div>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img loading=\"lazy\" width=\"632\" height=\"397\" src=\"https://i0.wp.com/wordpress.org/news/files/2021/03/Media-and-text-with-image-on-the-right-1.png?resize=632%2C397&#038;ssl=1\" alt=\"\" class=\"wp-image-10036\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2021/03/Media-and-text-with-image-on-the-right-1.png?resize=1024%2C644&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2021/03/Media-and-text-with-image-on-the-right-1.png?resize=300%2C189&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2021/03/Media-and-text-with-image-on-the-right-1.png?resize=768%2C483&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2021/03/Media-and-text-with-image-on-the-right-1.png?resize=1536%2C965&amp;ssl=1 1536w, https://i0.wp.com/wordpress.org/news/files/2021/03/Media-and-text-with-image-on-the-right-1.png?resize=2048%2C1287&amp;ssl=1 2048w, https://i0.wp.com/wordpress.org/news/files/2021/03/Media-and-text-with-image-on-the-right-1.png?w=1264&amp;ssl=1 1264w, https://i0.wp.com/wordpress.org/news/files/2021/03/Media-and-text-with-image-on-the-right-1.png?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /><figcaption>Media and text with image on the right</figcaption></figure></div>\n\n\n\n<p>I designed these patterns to potentially land in WordPress core, which all have a few properties in common:</p>\n\n\n\n<h3><strong>They share a theme.</strong></h3>\n\n\n\n<p>You can think of a pattern as a section of a website: it is meant to be part of a whole, and so it works best when it can exist in the context of other patterns that share the same theme. There are a few sharing a Nature theme in the patterns above, a few sharing an Art theme, and others sharing an Architecture theme. When seen together, it becomes easier to see how you might be able to piece together multiple pages of your site, one page at a time.</p>\n\n\n\n<figure class=\"wp-block-gallery columns-2\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img loading=\"lazy\" width=\"632\" height=\"406\" src=\"https://i0.wp.com/wordpress.org/news/files/2021/03/Large-header-with-text-and-a-button.png?resize=632%2C406&#038;ssl=1\" alt=\"\" data-id=\"10033\" data-full-url=\"https://wordpress.org/news/files/2021/03/Large-header-with-text-and-a-button.png\" data-link=\"https://wordpress.org/news/?attachment_id=10033\" class=\"wp-image-10033\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2021/03/Large-header-with-text-and-a-button.png?resize=1024%2C658&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2021/03/Large-header-with-text-and-a-button.png?resize=300%2C193&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2021/03/Large-header-with-text-and-a-button.png?resize=768%2C493&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2021/03/Large-header-with-text-and-a-button.png?resize=1536%2C987&amp;ssl=1 1536w, https://i0.wp.com/wordpress.org/news/files/2021/03/Large-header-with-text-and-a-button.png?resize=2048%2C1315&amp;ssl=1 2048w, https://i0.wp.com/wordpress.org/news/files/2021/03/Large-header-with-text-and-a-button.png?w=1264&amp;ssl=1 1264w, https://i0.wp.com/wordpress.org/news/files/2021/03/Large-header-with-text-and-a-button.png?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img loading=\"lazy\" width=\"632\" height=\"405\" src=\"https://i2.wp.com/wordpress.org/news/files/2021/03/Media-text-with-image-on-the-right.png?resize=632%2C405&#038;ssl=1\" alt=\"\" data-id=\"10034\" data-full-url=\"https://wordpress.org/news/files/2021/03/Media-text-with-image-on-the-right.png\" data-link=\"https://wordpress.org/news/?attachment_id=10034\" class=\"wp-image-10034\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2021/03/Media-text-with-image-on-the-right.png?resize=1024%2C657&amp;ssl=1 1024w, https://i2.wp.com/wordpress.org/news/files/2021/03/Media-text-with-image-on-the-right.png?resize=300%2C193&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2021/03/Media-text-with-image-on-the-right.png?resize=768%2C493&amp;ssl=1 768w, https://i2.wp.com/wordpress.org/news/files/2021/03/Media-text-with-image-on-the-right.png?resize=1536%2C986&amp;ssl=1 1536w, https://i2.wp.com/wordpress.org/news/files/2021/03/Media-text-with-image-on-the-right.png?resize=2048%2C1314&amp;ssl=1 2048w, https://i2.wp.com/wordpress.org/news/files/2021/03/Media-text-with-image-on-the-right.png?w=1264&amp;ssl=1 1264w, https://i2.wp.com/wordpress.org/news/files/2021/03/Media-text-with-image-on-the-right.png?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure></li></ul></figure>\n\n\n\n<h3><strong>They share a minimalist color palette.</strong></h3>\n\n\n\n<p>By being parts of a whole, patterns will inevitably land in a context that uses different colors. With a reduced color palette, there&#8217;s both a better chance of fitting in and less to customize to make it just right.</p>\n\n\n\n<figure class=\"wp-block-gallery columns-2\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img loading=\"lazy\" width=\"632\" height=\"535\" src=\"https://i2.wp.com/wordpress.org/news/files/2021/03/Heading-and-a-paragraph.jpg?resize=632%2C535&#038;ssl=1\" alt=\"\" data-id=\"10042\" data-full-url=\"https://wordpress.org/news/files/2021/03/Heading-and-a-paragraph.jpg\" data-link=\"https://wordpress.org/news/?attachment_id=10042\" class=\"wp-image-10042\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2021/03/Heading-and-a-paragraph.jpg?resize=1024%2C867&amp;ssl=1 1024w, https://i2.wp.com/wordpress.org/news/files/2021/03/Heading-and-a-paragraph.jpg?resize=300%2C254&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2021/03/Heading-and-a-paragraph.jpg?resize=768%2C651&amp;ssl=1 768w, https://i2.wp.com/wordpress.org/news/files/2021/03/Heading-and-a-paragraph.jpg?resize=1536%2C1301&amp;ssl=1 1536w, https://i2.wp.com/wordpress.org/news/files/2021/03/Heading-and-a-paragraph.jpg?w=1903&amp;ssl=1 1903w, https://i2.wp.com/wordpress.org/news/files/2021/03/Heading-and-a-paragraph.jpg?w=1264&amp;ssl=1 1264w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img loading=\"lazy\" width=\"632\" height=\"271\" src=\"https://i0.wp.com/wordpress.org/news/files/2021/03/Media-text-in-a-full-height-container.jpg?resize=632%2C271&#038;ssl=1\" alt=\"\" data-id=\"10043\" data-full-url=\"https://wordpress.org/news/files/2021/03/Media-text-in-a-full-height-container-scaled.jpg\" data-link=\"https://wordpress.org/news/?attachment_id=10043\" class=\"wp-image-10043\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2021/03/Media-text-in-a-full-height-container-scaled.jpg?resize=1024%2C439&amp;ssl=1 1024w, https://i2.wp.com/wordpress.org/news/files/2021/03/Media-text-in-a-full-height-container-scaled.jpg?resize=300%2C129&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2021/03/Media-text-in-a-full-height-container-scaled.jpg?resize=768%2C330&amp;ssl=1 768w, https://i2.wp.com/wordpress.org/news/files/2021/03/Media-text-in-a-full-height-container-scaled.jpg?resize=1536%2C659&amp;ssl=1 1536w, https://i2.wp.com/wordpress.org/news/files/2021/03/Media-text-in-a-full-height-container-scaled.jpg?resize=2048%2C879&amp;ssl=1 2048w, https://i2.wp.com/wordpress.org/news/files/2021/03/Media-text-in-a-full-height-container-scaled.jpg?w=1264&amp;ssl=1 1264w, https://i2.wp.com/wordpress.org/news/files/2021/03/Media-text-in-a-full-height-container-scaled.jpg?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure></li></ul></figure>\n\n\n\n<h3><strong>The best patterns <strong>do things you might have not done otherwise</strong>.</strong></h3>\n\n\n\n<p>Whether that&#8217;s images offset to create a unique silhouette, or just using less visible features (like fixed positioning in the Cover block), it&#8217;s a way to surface creativity.</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p><em>Tip: You can use any block in your patterns, including blocks that came from a plugin. And if that block is in the block directory, it will prompt you to install it with one click if it&#8217;s missing from your self-hosted WordPress:</em></p></blockquote>\n\n\n\n<figure class=\"wp-block-video\"><video controls loop src=\"https://wordpress.org/news/files/2021/03/waves-pattern.mp4\"></video></figure>\n\n\n\n<h2>Here’s a plugin for you</h2>\n\n\n\n<pre class=\"wp-block-code\"><code>&lt;?php \n/*\nPlugin Name: Quote Pattern Example Plugin\n*/\n\nregister_block_pattern(\n\t\'my-plugin/my-quote-pattern\',\n\tarray(\n\t\t\'title\'       =&gt; __( \'Quote with Avatar\', \'my-plugin\' ),\n\t\t\'categories\'  =&gt; array( \'text\' ),\n\t\t\'description\' =&gt; _x( \'A big quote with an avatar\".\', \'Block pattern description\', \'my-plugin\' ),\n\t\t\'content\'     =&gt; \'&lt;!-- wp:group --&gt;&lt;div class=\"wp-block-group\"&gt;&lt;div class=\"wp-block-group__inner-container\"&gt;&lt;!-- wp:separator {\"className\":\"is-style-default\"} --&gt;&lt;hr class=\"wp-block-separator is-style-default\"/&gt;&lt;!-- /wp:separator --&gt;&lt;!-- wp:image {\"align\":\"center\",\"id\":553,\"width\":150,\"height\":150,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} --&gt;&lt;div class=\"wp-block-image is-style-rounded\"&gt;&lt;figure class=\"aligncenter size-large is-resized\"&gt;&lt;img src=\"https://blockpatterndesigns.mystagingwebsite.com/wp-content/uploads/2021/02/StockSnap_HQR8BJFZID-1.jpg\" alt=\"\" class=\"wp-image-553\" width=\"150\" height=\"150\"/&gt;&lt;/figure&gt;&lt;/div&gt;&lt;!-- /wp:image --&gt;&lt;!-- wp:quote {\"align\":\"center\",\"className\":\"is-style-large\"} --&gt;&lt;blockquote class=\"wp-block-quote has-text-align-center is-style-large\"&gt;&lt;p&gt;\"Contributing makes me feel like I\\\'m being useful to the planet.\"&lt;/p&gt;&lt;cite&gt;— Anna Wong, &lt;em&gt;Volunteer&lt;/em&gt;&lt;/cite&gt;&lt;/blockquote&gt;&lt;!-- /wp:quote --&gt;&lt;!-- wp:separator {\"className\":\"is-style-default\"} --&gt;&lt;hr class=\"wp-block-separator is-style-default\"/&gt;&lt;!-- /wp:separator --&gt;&lt;/div&gt;&lt;/div&gt;&lt;!-- /wp:group --&gt;\',\n\t)\n);\n\n?&gt;</code></pre>\n\n\n\n<p>In case you want to make patterns, this example plugin features two of the patterns you saw above. Drop it in your plugins folder and they should show up in your block library.</p>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img loading=\"lazy\" width=\"632\" height=\"966\" src=\"https://i1.wp.com/wordpress.org/news/files/2021/03/Captura-de-ecra-2021-03-30-as-11.00.39.png?resize=632%2C966&#038;ssl=1\" alt=\"\" class=\"wp-image-10062\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2021/03/Captura-de-ecra-2021-03-30-as-11.00.39.png?resize=670%2C1024&amp;ssl=1 670w, https://i1.wp.com/wordpress.org/news/files/2021/03/Captura-de-ecra-2021-03-30-as-11.00.39.png?resize=196%2C300&amp;ssl=1 196w, https://i1.wp.com/wordpress.org/news/files/2021/03/Captura-de-ecra-2021-03-30-as-11.00.39.png?w=692&amp;ssl=1 692w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /><figcaption>Installed pattern under &#8220;Text&#8221; Category</figcaption></figure></div>\n\n\n\n<p>Feel free to tweak it, customize it, and make it yours. It’s GPL, after all!</p>\n\n\n\n<hr class=\"wp-block-separator is-style-wide\" />\n\n\n\n<p><em>Thank you <a href=\'https://profiles.wordpress.org/joen/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>joen</a> for the help writing this post.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"9995\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:61:\"\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\t\t\n\n\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\n\t\t\n\t\t\n\n\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"WP Briefing: Talking Full Site Editing with Matías Ventura\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wordpress.org/news/2021/03/talking-full-site-editing-with-matias-ventura/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 29 Mar 2021 15:05:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:9:\"Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"wp-briefing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/news/?post_type=podcast&p=10013\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:296:\"In this episode, Josepha is joined by Matías Ventura, also known as “the spark behind the vision of Gutenberg.\" Josepha and Matías discuss full site editing and answer your questions, from “is full site editing a standalone plugin?” to “will full site editing break my current site?”\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"enclosure\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:60:\"https://wordpress.org/news/files/2021/03/WP-Briefing-005.mp3\";s:6:\"length\";s:1:\"0\";s:4:\"type\";s:0:\"\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Chloe Bringmann\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:31294:\"\n<p>In this episode, Josepha is joined by Matías Ventura, also known as “the spark behind the vision of Gutenberg.” Josepha and Matías discuss full site editing and answer your questions, from “is full site editing a standalone plugin?” to “will full site editing break my current site?”</p>\n\n\n\n<p><em><strong>Have a question you&#8217;d like answered? You can submit them to <a href=\"mailto:wpbriefing@wordpress.org\">wpbriefing@wordpress.org</a>, either written or as a voice recording.</strong></em></p>\n\n\n\n<h2><strong>Credits</strong></h2>\n\n\n\n<ul><li>Editor:<a href=\"https://profiles.wordpress.org/dustinhartzler/\"> Dustin Hartzler</a></li><li>Logo:<a href=\"https://profiles.wordpress.org/beafialho/\"> Beatriz Fialho</a></li><li>Production:<a href=\"https://profiles.wordpress.org/mkaz/\"> </a><a href=\"https://profiles.wordpress.org/cbringmann/\">Chloé Bringmann</a></li><li>Song: Fearless First by Kevin MacLeod</li></ul>\n\n\n\n<h2>References</h2>\n\n\n\n<ul><li><a href=\"https://wordpress.org/themes/tt1-blocks/\">Twenty Twenty One theme</a></li><li><a href=\"https://centroamerica.wordcamp.org/2021/\">Word Camp Central America </a></li><li><a href=\"https://make.wordpress.org/core/2021/03/12/q2-listening-hours-april-7th-2021/\">2021 Second Quarter Listening Hours with Matt Mullenweg and Josepha Haden Chomphosy</a></li></ul>\n\n\n\n<h2>Transcript</h2>\n\n\n\n<span id=\"more-10013\"></span>\n\n\n\n<p>Hello, everyone, and welcome to the WordPress briefing, the podcast where you can catch quick explanations of some of the ideas behind the WordPress open source project and the community around it, as well as get a small list of big things coming up in the next two weeks. I&#8217;m your host, Josepha Haden Chomphosy. Here we go!</p>\n\n\n\n<p>Josepha [0:41]: This month, we have a bonus briefing, so I&#8217;ve asked my dear friend and colleague <a href=\"https://profiles.wordpress.org/matveb/\">Matías Ventura</a> to join me. Matías was recently called “the spark behind the vision of Gutenberg.” With full site editing coming our way in 202, I asked if he would join me for a quick Q&amp;A. Welcome, Matías.&nbsp;</p>\n\n\n\n<p>Matías [0:56]: Hello, hello! Thanks for inviting me. It&#8217;s a pleasure to be here.</p>\n\n\n\n<p>Josepha [1:00]: Well, I&#8217;m delighted to have you. And I think that we have a lot of excellent questions. All right, so Matías, we actually ended up with questions in about three different groupings. And so I&#8217;m going to start with the “what is it about full site editing,” sorts of questions that people had. We&#8217;re gonna work our way into “what are we doing with it?” and then “how are we planning on getting this out the door?” Then, a couple of big picture questions that people asked. We&#8217;re just gonna leap right in this full site editing part of the Gutenberg plugin, or is it a standalone plugin?</p>\n\n\n\n<p>Matías [1:39]: Okay, we&#8217;ll start with the basics. Full site editing is part of the Gutenberg plugin right now. I think it&#8217;s important to mention that full site editing is like an umbrella for several projects that we&#8217;re working on. They are all aiming to bring blocks into more parts of your site so that editing becomes easier and more expressive, and so on. So full site editing right now encompasses adding a ton of new blocks. I think we have around 20 new blocks coming in, including navigation query, site, title, logo, etc. There&#8217;s also the interface to interact with templates outside of the content; that&#8217;s another big part of the full site editing project. We also have a lot of new design tools included, many of these have been released in previous major releases, but they still comprise a strong part of what full site editing is. We also have something called Global Styles, which aims to allow people to configure the visual aspects of blogs across the entire site, not just on any individual blog. And of course, then there&#8217;s a whole layer of how we utilize these tools. It can get complex because there are many layers and projects that need to come together. So yeah, all of these are accessible through the Gutenberg plugin right now.</p>\n\n\n\n<p>Josepha [3:07]: Yeah. So it&#8217;s not a standalone plugin. If you wanted to check out full site editing the site editor experience as it is now, you would just have to make sure you had the Gutenberg plugin on your site. Right?</p>\n\n\n\n<p>Matías: Yes, correct.</p>\n\n\n\n<p>Josepha:&nbsp; So a couple of the questions related to this are how exactly do I enable it on my site? And what is the easiest and safest way to try this on my site? And I think the answer is, is right in there. It&#8217;s in the Gutenberg plugin. And so if you have that plugin, you don&#8217;t need the testing plugin or anything else to make that work, right?</p>\n\n\n\n<p>Matías [3:51]:&nbsp; No, you like, you might need to install a theme like Twenty Twenty One blocks that unlock some of these new interfaces that we just talked about. Like other of these pieces are available for anything. But some of these, like the interface to edit templates, right now only talk with things that know how to express their desire.&nbsp;</p>\n\n\n\n<p>Josepha [4:14]: And I think we have less than 10 themes right now that do that, but I&#8217;ll leave some links to at least 2021 blocks in the show notes. And then, if there are another one or two themes that I can find, I can add those in there as well.&nbsp;</p>\n\n\n\n<p>So you have to have the Gutenberg plugin; you have to have a theme that works with that site editor kind of experience. And then you&#8217;re safe to try everything out. It shows up in your left toolbar just like any other thing, like if you were working with plugins, or if you were adding a post or anything else, right?</p>\n\n\n\n<p>Matías [4:51]: Yes, correct. And so, some of these details are being worked on right now. Like how and where you access things, and so on. These things are subject to change, but right now, you have this site editor beta in the sidebar when both you have the plugin running and a theme that&#8217;s capable.</p>\n\n\n\n<p>Josepha [5:10]: Yeah. Excellent note. If you are running this on a production website, I would recommend you not do that unless you are very, very good with WordPress. It&#8217;s a really safe and easy thing to test and try out. But because it is still in beta, I recommend always putting it on a test site. I have a couple of different test sites that I run on myself. Another question that I had was, “will full site editing slow down my site?” And I think we have some refreshed performance tests coming out about that. And maybe they&#8217;ll be out by the time we publish this podcast.</p>\n\n\n\n<p>Matías [5:49]: Yeah, I mean, like the performance has been one of the major focuses for the whole project. In many cases, it should speed up things because we&#8217;re like, I think one of the big pieces that these projects bring into the picture, especially for themes, is that it allows only the necessary assets to be loaded on the front end. For example, if for a given page, there are, I don&#8217;t know, 10-15 blocks being used, you would only get the CSS and scrapes and so on related to those blocks. This can cut down on a lot a ton of CSS that themes used to end queue on a side, particularly if you were trying to customize many widgets and so on, like a lot of themes have the full styles or multiple widgets, even third party plugins, and so on. So one of the advantages of having this blog system is that we can know at the time of rendering what blogs are being used and only load those assets.&nbsp;</p>\n\n\n\n<p>Josepha [6:50]: Excellent. Another big question that we have is, “does full site editing work with the classic editor? And does it work with other builders?” I think that&#8217;s a really big answer if you&#8217;re going to get super deep into it. But I think that the short answer is yes, it does. Is that fair?</p>\n\n\n\n<p>Matías [7:08]: Yeah, I don&#8217;t think it touches a bit on that full site editing is not like a single thing. There are multiple projects around it. So again, like the template editor that only deals with blogs, it doesn&#8217;t have a lot to do with a classic editor. But the classic editor use for both doesn&#8217;t change anything at all; like the same way that when the block editor was introduced, it didn&#8217;t change how you could still write posts in the classic editor. You will still be able to do that.</p>\n\n\n\n<p>Josepha [7:41]: And if you are brand new to WordPress person, or, I mean, I guess at this point, you don&#8217;t have to be super brand new. If you&#8217;re fairly new to WordPress person and have no idea what we&#8217;re talking about when we say the classic editor, you don&#8217;t really have to worry about it either. You don&#8217;t have to go and find out what that is; the block editor that you have right now works perfectly for what you&#8217;re trying to do. So if you don&#8217;t know what I mean when I say classic editor, don&#8217;t worry about chasing it down either.&nbsp;</p>\n\n\n\n<p>I think that this last question we accidentally answered earlier, but I&#8217;m going to go ahead and ask it anyway since I received it. “I keep hearing that you can use the site editor with the 2021 theme. But I don&#8217;t seem to be able to. What am I missing?” I think the answer is that there&#8217;s the Twenty Twenty One theme shipped with the WordPress release 5.6. And then there is the Twenty Twenty One blocks theme; those are two different themes. The link to the Twenty Twenty One block theme is going to be in our show notes this time around. And so, if you have been trying to use the full site editor with Twenty Twenty One and not succeeding, try the link to the one below. And I bet that that will work for you.</p>\n\n\n\n<p>Matías [8:50]: Yes, that&#8217;s correct.&nbsp;</p>\n\n\n\n<p>Josepha [8:51]: All right, excellent. Well, that brings us kind of into our second set of questions, which is about how we are doing it. The first one that folks have is “will full site editing be on by default in the next release. In this context, the next release is WordPress 5.8. But I think it&#8217;s a safe question to ask if full site editing will be on by default in the release that it&#8217;s planned for.</p>\n\n\n\n<p>Matías [9:15]: Yeah, and for this, I need to go back to the same principle of many projects because there are many pieces of full site editing, and we have been merging them in major releases, particularly like the blocks and the design tools. There are more coming in that we want to make accessible as soon as possible. The full experience that requires a theme to opt-in to templates using blogs won’t be by default; it requires a specific theme running. A lot of these details we&#8217;re still like determining exactly what projects are ready to be merged and so on. But yeah, if you have a theme right now that works the way you want, it doesn&#8217;t change anything there. If anything, it adds some more capabilities and more customization tools, and so on. And the theme can also regulate how much they want to incorporate.</p>\n\n\n\n<p>Josepha [10:13]: Matías, you&#8217;ve mentioned a couple of times in this podcast so far like this is a really complex and really complicated part of this work. And just for anyone out there who&#8217;s either encountering Gutenberg or full site editing or this podcast for the first time, I think a tiny bit of context that&#8217;s worth having here is that Matías and I have been working on this together in various capacities for like, five years. And Matías has probably been working on this for practically a decade. So, when we say that this is a really complicated problem, and when we say that this is a complex set of issues that we&#8217;re working with like, it is all that we have been thinking about for I want to say at least the last three or four years, but certainly it&#8217;s all that we have been trying to untangle for quite a bit of time before that as well. So we don&#8217;t take it lightly when we&#8217;re like, “this is complicated;” we mean it. It&#8217;s really complicated. And we&#8217;re trying our hardest over here as WordPress.&nbsp;</p>\n\n\n\n<p>The next big question, since we&#8217;re all stuck in the “it&#8217;s very complicated,” part of things is the question, “will this update break my current site?” Like, if I have a site that is updated and ready, and it&#8217;s exactly as I wanted it to be, and it took me two years to get there will full site editing, whichever release it&#8217;s in. Currently, 5.8 is what we&#8217;re planning for. Will that break anything on my site as I know it right now?</p>\n\n\n\n<p>Matías [11:44]: No, not at all. One of the major things that the WordPress team, the WordPress community, always cares so much about, never to break things. Many of these things are stepping stones that you can adopt, as we&#8217;ve talked about full site editing. But for example, we also have a few concurrent projects around the widget screen and the navigation screen that are meant to bring blocks into existing interfaces. So again, the theme doesn&#8217;t need to change, and a lot of care is being put into making this more like you&#8217;re unlocking new features, and nothing really breaks or falls apart.</p>\n\n\n\n<p>Josepha [12:23]: This update, like all the other updates, should have minimal, minimal impact on what you have to actively fix on your site. Every once in a while, a bug is gonna get by. We can&#8217;t say that we&#8217;re 100% perfect with not breaking things. But also, we always and I and I know that we&#8217;re planning on this for our remaining releases for the rest of the year. At the very least, I can&#8217;t imagine we&#8217;d ever change it. But after every major release, we always make a plan to have a minor release within the next one or two weeks. Because we know that a broken thing on a site is really incredibly impactful, even if you&#8217;re only 1% of the sites that had that happen to it. And so I think that&#8217;s true in this case, too. And getting that feedback back from all of the people who are actually using WordPress is the thing that makes us be able to kind of move quickly when we do see those problems.&nbsp;</p>\n\n\n\n<p>One of the questions that we have been getting is, “can I see a live preview without saving the changes that I made?” When I got this question, I didn&#8217;t actually understand it. And so I went and looked at a site without the Gutenberg plugin on it, and then a site with the Gutenberg plugin on it. And of course, on sites without Gutenberg, without the block editor, without full site editing, when you are looking to preview, you have the option to open up your preview in a new window. And you don&#8217;t have that with Gutenberg because it&#8217;s supposed to be a true WYSIWYG editor. A true what you see is what you get, editor. I think that the answer to this is, yes, you can see a live preview without actually saving the changes on the front end of your site. But you don&#8217;t actually have to reload anything. You don&#8217;t have to open it up in a new window. You don&#8217;t have to, like, actively click “please show me a preview” because what you see in your editing screen should be what you see at the end of your app as an end-user.</p>\n\n\n\n<p>Matías [14:28]: Yeah, that&#8217;s the sort of the main gist to it. Yes, the site editor is built so that it always reflects the front end as truly as possible, so that&#8217;s one layer. Also, the preview tools should allow you to see in different devices like mobile breakpoints, and I don&#8217;t know if they will have breakpoints and stuff like that. There are a lot of things in the current interface that is just not enabled. There are some challenges in the sidebar. Because the site editor is not just focused on a single post, it&#8217;s focused on the entire site. So, there can be many, many changes that need to be shadowed for the site.&nbsp;</p>\n\n\n\n<p>If you&#8217;re changing the site title, some of the global styles, aspects, and so on need to be orchestrated. So, to see in the previewing new window, there are some challenges there to integrate. Again, the interface is not final yet; a lot of these things are still being tweaked and improved. There are many things from the regular post editor that are not enabled yet. But they will be enabled. So yeah, it&#8217;s a, I guess, it&#8217;s not a simple thing to answer. Because, again, the idea of previewing the site that&#8217;s core to the whole project is that you&#8217;re always interacting in the same way that when you&#8217;re in the customizer, you&#8217;re seeing the preview all the time. That&#8217;s the main scope of this project,</p>\n\n\n\n<p>Josepha [15:54]: Excellent. Changes like that changes to your workflow can be really hard to get your mind around, especially if part of that existing workflow was there to create some confidence in what you&#8217;re seeing with your users. And so I understand. Now that I&#8217;ve researched that question a bit, I see where that&#8217;s coming from. Based on existing workflows and existing patterns that we have for ourselves in WordPress, will we need to have a theme to use the full site editor?</p>\n\n\n\n<p>Matías [16:33]: I think we&#8217;ve already covered some of these. And again, they are tools that can work on any existing theme. There is other stuff that needs space-specific themes to opt-in into these tools, like blog templates and so on.</p>\n\n\n\n<p>Josepha [16:50]: Yes, I think the question that we have next, because I see that the literal next question I have is actually something we have covered; just because we&#8217;re being pretty conversational about it, not because anyone already asked the question. So I&#8217;m actually going to skip to the last question of this section that I received. I got this next one via Twitter. The question is, “how do you view the role of themes once full site editing is fully rolled out and all the page elements (content, headers, widgets, footers, etc.) and all the views are managed via blocks and block patterns? Will things become typographic and block styles?”</p>\n\n\n\n<p>Matías [17:28]: I think this is a great question because it goes to the heart of, why are we doing all this. One of the main reasons is to empower users more. WordPress has been democratizing publishing for a while; this is another step into allowing themes to get more customization tools and more control over their site if they want to. I think the recent call for testing has focused on the 404 page, for example. That&#8217;s something that forever has been locked away from users. And it&#8217;s also something that, as a theme developer, and I used to develop themes a long time ago, that was one of the things where you decide what sort of approach you take for the 404 page. Maybe sometimes you want to have something more whimsical. Sometimes you need something more serious. And committing to one when you can have such a diverse and broad user base can be challenging. With these, it becomes as easy as offering a few different patterns for that template. Then the user will always be able to change the copy and modify something. So again, it opens up a lot of these things that used to be locked down. However, from a theme perspective, I think this doesn&#8217;t reduce the theme at all. If anything, it allows the theme to focus less on coding and functions and more on design expression and aesthetics. I don&#8217;t think that would ever be exhausted. That will always remain as diverse as humans are interacting with WordPress. And so it&#8217;s not that I don&#8217;t see it&#8217;s just as like, typographic and block styles. How do you express a template, how do you express the structure, what choices you quote, what choices you make as a theme builder? And of course, there are many degrees of control there. Because a site maintainer may not want the 404 template to be editable, that sort of control will always be present.</p>\n\n\n\n<p>Josepha [19:38]: Yeah. And really fast. I have to add a caveat to a thing that you said in there. For anyone who&#8217;s listening keenly, you may have heard Matías say that the users can update any of the content there &#8211; any of the copy. In this context, we&#8217;re talking about users as in the people who are maintaining the site, not people who are visiting your site. Visitors to your site will not be able to change any copy on your page unless you&#8217;ve done something very interesting with your WordPress site, which is also fine if that&#8217;s what you prefer to do. By default, your visitors can&#8217;t change everything on your website, which is good news, frankly.</p>\n\n\n\n<p>So I&#8217;ve got one logistics question, which I&#8217;m happy to take. And then one is kind of a big picture question that I also got from Twitter. “What about the classic editor block; what is going to happen to that? And when will we know?” So ages and ages ago, before COVID? I think so. Probably maybe a couple of years ago, Matt said that the classic editor plugin would be supported through the end of 2021. And that is still the case; there will be active support on that through the end of 2021. After that, it will not be actively supported anymore. It won&#8217;t be removed from any place that you can get access to right now. In a “this is the end of its lifecycle” sort of way, we just won&#8217;t have anyone who is currently committed to maintaining that plugin anymore. So that&#8217;s what&#8217;s happening at the end of the year. And yeah, at the end of 2021. The big question that we have is, “why is full site editing being so rushed?” I think this is a bit of a loaded question.</p>\n\n\n\n<p>Matías [21:32]: Yeah, I think I think it&#8217;s still a fair question, though. I think we&#8217;re dealing with two things here. And one is ensuring that we release things in the best state possible. And also, some of the urgency is to offer tools that we know that people lack right now and that could really benefit from. Making that determination is very tricky. The full site editing project has been in the works for the last couple of years. If we count the initial phase of Gutenberg, that&#8217;s four to five years. We&#8217;ve been doing many calls for testing, which I think have been super useful to catch issues and reflect as a community on where things are going; how do we integrate with these? How do we use it? What are the shortcomings? What do we need to do? Based on all of these, we&#8217;ll continue to make decisions on when things become ready. We&#8217;re not committed to releasing something that&#8217;s not in a good state. And I think we will always be very careful about that. There are these two competing senses of the urgency &#8211; of getting some of these tools out, and because it also benefits from the feedback loops. I always say that, in many ways, the initial phase of Gutenberg, to me, is not finished. We took the initial two years to do the 5.0 release, the initial block editor, and so on. But, it&#8217;s still being improved at a very fast pace, among all the recent major releases improvements to the editor were included; that will continue to be the case. In many ways, phase one is not finished. And the moment we choose to release some of these tools or editing tools, it won&#8217;t be finished either. They will need to continue to grow, mature, and incorporate a lot of the feedback. Even the things that the ecosystem is building around. I&#8217;ve seen a few themes already that are incorporating a blank canvas template so that you can use them in some pages and take over and do everything with blocks. So even the community and ecosystem as a whole is also sort of paving the way for what needs to come.</p>\n\n\n\n<p>Josepha [24:06]: I think from my perspective, and of course, I&#8217;m on the people side of things, the communication side of things, the logistics side of things; I have a frequently a very different view from what a lot of other folks are seeing. And so from my side of things, I have to say, I&#8217;m communicating about this change in a really broad way, which has not been happening since 2019 when we started the work. We&#8217;ve been communicating broadly with the WordPress community, but not with everybody who uses WordPress. So, I think that for a lot of people, this looks like a project that we started really actively working on in the last six months or so. And now we&#8217;re just racing toward a finish line. I think that there&#8217;s, there&#8217;s not been a lot of awareness of everything that&#8217;s gone into it. And so, on the one hand, it feels a little less rushed to me knowing the full length of the history on this. But also, as you said, I really think that this gets a bunch of tools to people who otherwise have not been able to accomplish these things in WordPress or otherwise. I am so anxious to get something to people who really can benefit from this change the most. And it&#8217;s the nature of the open source, right that like, one, as long as you have users, you&#8217;re going to have stuff you have to fix in your software. So we&#8217;re never really, really going to be done with this; there&#8217;s not going to be like a done point of WordPress. And the second thing is, I think it&#8217;s generally true that you don&#8217;t really start getting full user feedback until after you have launched your major release. I think that we see that a lot in open source software; you can bring in as many people as you think you can in your user tests heading up to it. And in your accessibility tests. And, in general, quality assurance tests. You can bring in a lot of people and still not have gotten the full understanding of the various niche use cases that your users will bring to you. Because at this point, we&#8217;re like 40% of the web. And that means that we&#8217;re serving this majority collection of increasingly minority voices and niche voices in the space. And so, a little bit I feel a sense of urgency; I feel a bit of anxiousness about trying to get this out there for one, to get the tools in the hands of the people who can benefit the most from them, but also so that we can start really getting the full stress test of this software out and get that feedback in so that we can really build something responsive to what our users need our long tail, “anyone who ever uses WordPress ever,” definition of users. And so, that&#8217;s why I feel a sense of urgency around it. Even though you know, as I said, you and I have been working on this for like five years, and you&#8217;ve been working on it for a decade or something. I actually don&#8217;t know how long it&#8217;s been worked on.</p>\n\n\n\n<p>Matías [27:35]: Now that makes me feel a bit old.</p>\n\n\n\n<p>Josepha [27:40]: Nobody makes Matías feel old. He is a lovely, wonderful colleague. Sorry, Matías, If I made you feel old.</p>\n\n\n\n<p>Matías [27:46]: No, that&#8217;s totally fine. I also want to add that full site editing is not like a single toggle that&#8217;s going to drop into a major release. So I think that&#8217;s important to consider, I think this entire year is going to see a lot of these tools being, and sometimes the sort of the end-user is not the, again, the site maintainer. Still, you can also be the theme developer; I think there are many tools that would be empowering for theme developers to use. Again, we mentioned there are like five to ten themes, block themes right now. That needs to grow a lot, and that only grows through these sorts of feedback loops. And the theme community pushing things forward and seeing where things can lead to. I&#8217;m very excited about the pattern directory integration because I think that can also combine with blog themes in very powerful ways. Imagine if, I don&#8217;t know many of these patterns that are very common on the web and very needed, that if we can refine them together with a second community and make them available across themes, you can combine a header from one theme with a content of another; all these sorts of mixtures could happen. All of this needs exploration, the creativity of the entire community, and so on. In that sense, getting all these tools, even if it doesn&#8217;t immediately change anything for like the site itself, starts to unlock a lot of things.&nbsp;</p>\n\n\n\n<p>Josepha [29:27]: I&#8217;m going to take a bit of your answer from there and tie it all the way back to your first answer that we had when you joined me today. And say, I think you&#8217;re absolutely right. We have a set of users in our theme authors and our plugin developers as well that we desperately need to get looking at this set of tools. I hope that what we are shipping in the first iteration of this serves as an opportunity for all of those theme authors and agency owners, plugin authors, WordPress site configurers freelancers. Like, I really hope that this puts it into a really accessible, easy-to-access space for them so that they can do those experiments based on what they know their users need the most. They are the group that has the closest access to site maintainers. And what they need compared to, for instance, me or a potential you like we have a lot of information, you and I, we do a lot of tests, we have a strong sense of what is needed at the moment, but we don&#8217;t have as a close connection that our theme and agency and plugin folks all have. And so that&#8217;s another part of why I&#8217;m so excited to get this out in the current iteration of it.</p>\n\n\n\n<p>Josepha [31:04]: That was a lot of questions in a little bit of time. This is going to be officially my longest WordPress briefing. Matías, I am so glad that you were able to join me today. And I think that everyone&#8217;s going to be really, really excited to hear your answers to these questions.</p>\n\n\n\n<p>Matías [31:23]: Thank you for having me.</p>\n\n\n\n<p>Josepha [31:25]: All right, my friends. That brings us into our small list of big things. I&#8217;m going to skip our community highlight today just because we had a slightly longer word press briefing in our bonus iteration today. But the small list of big things. The first thing is WordCamp Central America is coming up on April 15; there is a registration link in the show notes that you can access your tickets with. I recommend that you go; we&#8217;ve got a lot of excellent speakers coming up there and a lot of good content and good training and learning for y&#8217;all. The second thing is that Matt Mullenweg and I have listening hours coming up with the community in the first week of April. I&#8217;ll add the link to register for those in the show notes as well; it&#8217;s just a few minutes for you all to stop by, check-in, see what&#8217;s going on, and share some celebrations or concerns with us. And I hope that I see you there.&nbsp;</p>\n\n\n\n<p>So that my friends is your small list of big things. Thank you for joining in today for the WordPress briefing. I&#8217;m your host, Josepha Haden Chomphosy. I&#8217;ll see you again in a couple of weeks!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"10013\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:58:\"\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\n\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\n\t\t\n\t\t\n\n\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"WP Briefing: How WordPress Improves\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wordpress.org/news/2021/03/how-wordpress-improves/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 15 Mar 2021 15:08:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"wp-briefing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wordpress.org/news/?post_type=podcast&p=9980\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:178:\"In this episode, Josepha Haden Chomphosy explores the WordPress release process. Tune in to learn about what goes into a release and catch this week’s small list of big things.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"enclosure\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:60:\"https://wordpress.org/news/files/2021/03/WP-Briefing-004.mp3\";s:6:\"length\";s:1:\"0\";s:4:\"type\";s:0:\"\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Josepha\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:10226:\"\n<p>In this episode, <a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha Haden Chomphosy</a> explores the WordPress release process. Tune in and learn the phases of a release and catch this week’s small list of big things.</p>\n\n\n\n<p><em><strong>Have a question you&#8217;d like answered? You can submit them to <a href=\"mailto:wpbriefing@wordpress.org\">wpbriefing@wordpress.org</a>, either written or as a voice recording.</strong></em></p>\n\n\n\n<h2><strong>Credits</strong></h2>\n\n\n\n<ul><li>Editor:<a href=\"https://profiles.wordpress.org/dustinhartzler/\"> Dustin Hartzler</a></li><li>Logo:<a href=\"https://profiles.wordpress.org/beafialho/\"> Beatriz Fialho</a></li><li>Production:<a href=\"https://profiles.wordpress.org/mkaz/\"> </a><a href=\"https://profiles.wordpress.org/cbringmann/\">Chloé Bringmann</a></li><li>Song: Fearless First by Kevin MacLeod</li></ul>\n\n\n\n<h2>References</h2>\n\n\n\n<ul><li><a href=\"https://wordpress.org/news/2021/03/esperanza/\">WordPress 5.7 “Esperanza” </a></li><li><a href=\"https://en.wikipedia.org/wiki/Esperanza_Spalding\">Esperanza Spalding</a></li><li><a href=\"https://wordpress.org/news/2021/02/gutenberg-tutorial-reusable-blocks/\">Gutenberg Tutorial: Reusable Blocks</a></li><li><a href=\"https://make.wordpress.org/test/\">make.wordpress.org/test</a></li><li><a href=\"https://make.wordpress.org/core/handbook/contribute/git/\">GitHub repository </a></li></ul>\n\n\n\n<h2>Transcript</h2>\n\n\n\n<span id=\"more-9980\"></span>\n\n\n\n<p>Hello, everyone, and welcome to the WordPress briefing, the podcast where you can catch quick explanations of some of the ideas behind the WordPress open source project and the community around it, as well as get a small list of big things coming up in the next two weeks. I&#8217;m your host, Josepha Haden Chomphosy. Here we go!</p>\n\n\n\n<p>All right, so last week, we wrapped up and shipped the WordPress 5.7 release. The release team this time around was smaller than we&#8217;ve had in the last couple of years. By the numbers, it looks really good: 66 enhancements or feature requests went in, 127 bugs were fixed, and seven versions of a Gutenberg plugin were merged and backported. If you use WordPress, you are probably aware that we have new releases throughout the year, but you probably don&#8217;t know much about the release process. There&#8217;s not really a reason to know unless you&#8217;re actively contributing to a release. For those interested in knowing more about how we improve WordPress, this week&#8217;s exploration is for you.</p>\n\n\n\n<p>We&#8217;re gonna take a look at what goes into WordPress releases and just kind of zoom our way in from the highest level. At the highest level, there are three major WordPress releases a year, plus the minor releases, plus Gutenberg releases. So if you&#8217;re following current WordPress work and future WordPress work, that&#8217;s going to get you to probably around <strong>30 releases a year</strong>. If we zoom in one level to the release itself, a single release of WordPress takes four to five months from start to the day that we ship, and an additional four to six weeks on support and translations, and minor releases after that. If you&#8217;re looking from my vantage point, you&#8217;ll see that WordPress releases have essentially five parts, some of which happen kind of simultaneously.&nbsp;</p>\n\n\n\n<p>The first part is planning and includes the project lead, lead developers, design; groups like that. The second phase is the creation phase when we&#8217;re actually building the things that have to go into the CMS that involves the design, core, editor, mobile, and other teams. Then there&#8217;s this phase that I like to refer to as the distribution phase. This is mostly done by the teams that make sure that WordPress is widely distributable; the polyglots team work on translations, accessibility does some work, docs make sure that everything is documented, and training, of course, gets things ready for when we have to be able to tell people how to use the release.&nbsp;</p>\n\n\n\n<p>Then there is the fourth phase; I really don&#8217;t think they go sequentially or in a waterfall format. The fourth-ish phase that I include, and that I tend to see, is this extending and iteration phase. It&#8217;s the phase where we see our theme authors and our plugin authors, folks who are doing support, show up and help us to make sure that WordPress is available not only widely but broadly to ensure that their audiences as theme authors and plugin authors are covered in the features that they need based on what they are using WordPress for. The fifth phase is the part of our communication that involves the community team, especially marketing, WordPressTV, and learn.wordpress.org. Basically, anyone who&#8217;s showing up to make sure that we all share what happened in the release, the features that are coming, and how that affects the users is involved in that particular phase. So five big phases of what happens over those four to five months, and then for the month or month and a half afterward.&nbsp;</p>\n\n\n\n<p>If we zoom in a bit more on the creation phase, each release has people who lead the work and coordinate contributor efforts during the course of the release. For any given release, hundreds of people contribute and receive credit for moving the WordPress project forward. Okay, hold on a second. Let&#8217;s pump the brakes and zoom in a bit on that. Hundreds of people work on every major release for a project that powers over 40% of the web that feels like a small number. But for the people who process the contributions in preparation for release, it&#8217;s actually pretty substantial. For every release, there is a small team of leaders who asked the hard questions. Is this a usable feature? Does this make WordPress better overall? And, of course, is this ready to ship?&nbsp; Some of those leaders, a smaller subset of even the leaders that we have already, are committers who actually prep and merge patches to the CMS; they don&#8217;t do all the work to create a design or write all the code. This tiny group of people processes hundreds and hundreds of bug fixes, improvements, and enhancements that have been submitted over the course of months and sometimes years. As a side note, that whole process is a little smaller, a little faster in the Gutenberg featured plugin, but the basic parts are still there. Alright, so we&#8217;ve zoomed from the big picture way into some of the finer details, and it really looks like any other project cycle. So now, I&#8217;m going to layer in the filter of open source to that process.</p>\n\n\n\n<p>There are a couple of things that make building software in an open source environment so different. The first is that the code is readily available. If you have a basic understanding of the languages, you can see the code, learn from it, and make suggestions about improving it. Second, you consider the user a co-developer in the process, which means that as long as people use your product, they will have opinions on what you shipped. This way of iterating improves WordPress and ties back to one of my favorite open source principles. The idea that with many eyes, all bugs are shallow. To me, that means that with enough people looking at a problem, someone is bound to be able to see the solution.</p>\n\n\n\n<p>This brings us to our community highlight, the segment where I share a note about contributors who have helped others along the way or a WordPress success story. This week&#8217;s highlight is from Nok in our Bangkok community. When asked to help her find her way into the WordPress community, she said, “@shinichiN who started the WordPress community in Bangkok and encouraged me to contribute, and also @mayukojpn has introduced me to the WP community team to join as a deputy. “ Thank you for sharing those two inspiring people with us. And if you, listener, have any stories that you would like to share of your own WordPress success or people that you have been so grateful to help you find your way in the project, you can feel free to email those to me at <a href=\"mailto:wpbriefing@wordpress.org\">wpbriefing@wordpress.org</a>.</p>\n\n\n\n<p>That brings us to our final segment of the WP Briefing, the small list of big things. I only have three things to share with you this week. The first one is that about a week ago, we had our first release of 2021. It was the WordPress 5.7 release, titled Esperanza. If you have not yet seen it, go ahead and update your website or check with your host and make sure that they have updated you if you&#8217;re on a managed host. And then take a listen to the artists that it&#8217;s named after.&nbsp;</p>\n\n\n\n<p>The second thing that I want you to keep an eye out for is wordpress.org/news. We are starting a new series of content that gets at the heart of some of Gutenberg’s basic parts; there’s a lot of change coming up in the next few releases of WordPress. And the most important thing to me is that you understand what we&#8217;re trying to change and where those changes are primarily taking place. There will be a couple of tutorials that go up there over the course of the of the next few weeks. The third item on the small list of big things is to remind you of our call for testing. As I mentioned earlier in the podcast, the users of any open source software are the code developers; the software built is supposed to make your life and work easier. When you test things and find interactions that can use a little bit of refinement or features that are not working exactly as expected, it&#8217;s incredibly helpful for us to have that information to always make sure that we&#8217;re solving problems instead of accidentally creating them. If you want to participate in the Current call for testing, you can head over to make.wordpress.org/test. Or, if you&#8217;ve been doing your own testing, you can also submit any bugs you have found in the GitHub repo, which I will share in the show notes below. So that, my friends, is your small list of big things. Thank you for tuning in today for the WordPress briefing. I’m your host, Josepha Haden Chomphosy. I&#8217;ll see you again in a couple of weeks!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"9980\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:32:\"https://wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n\thourly\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n\t1\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:4:\"site\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"14607090\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:9:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Wed, 28 Apr 2021 02:07:20 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:25:\"strict-transport-security\";s:11:\"max-age=360\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Tue, 27 Apr 2021 17:26:05 GMT\";s:4:\"link\";s:63:\"<https://wordpress.org/news/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";}}s:5:\"build\";s:14:\"20210122212207\";}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    408,
    '_transient_timeout_feed_mod_9bbd59226dc36b9b26cd43f15694c5c3',
    '1619618840',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    409,
    '_transient_feed_mod_9bbd59226dc36b9b26cd43f15694c5c3',
    '1619575640',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    410,
    '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9',
    '1619618840',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    411,
    '_transient_feed_d117b5738fbd35bd8c0391cda1f2b5d9',
    'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:61:\"\n\t\n\t\n\t\n\t\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"WordPress Planet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"WordPress Planet - http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:50:{i:0;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"WPTavern: Churel Is a Colorful and Minimalist Block-Ready WordPress Theme\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=115663\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:191:\"https://wptavern.com/churel-is-a-colorful-and-minimalist-block-ready-wordpress-theme?utm_source=rss&utm_medium=rss&utm_campaign=churel-is-a-colorful-and-minimalist-block-ready-wordpress-theme\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5311:\"<img />\n\n\n\n<p class=\"has-drop-cap\">WordPress theme development company Themix released its third free theme to the official directory this week. <a href=\"https://wordpress.org/themes/churel/\">Churel</a> is described as a theme for organizations and businesses that also works for traditional blogging.</p>\n\n\n\n<p>The development team has a keen eye for modern color schemes and font families. The theme has a refreshing design that is rare for the free theme directory, at least at first glance. It is the sort of project with just the right amount of eye candy to pull users in.</p>\n\n\n\n<p>If that was everything necessary for great design, the theme would land in my top 10 picks from WordPress.org without a second thought. However, after digging deeper, it was clear the design had some issues. They are fixable. It would not take much nudging of a few CSS rules to make this a much better theme, so let&rsquo;s just dive right into the problems before getting into the good stuff.</p>\n\n\n\n<p>The theme&rsquo;s most clear-cut flaw is with its typography. Sizing and words-per-line work well enough. The default Open Sans font is rarely a poor choice for readability. However, the line height is far too large for a good flow, and the white space between paragraphs makes it tough to tell where one ends and the other begins. It is almost as if the team got halfway through with fine-tuning the typography and decided to simply stop. It is a glaring issue that makes the theme practically unusable for long-form content, but it could be addressed with two minor style changes.</p>\n\n\n\n<ul><li class=\"blocks-gallery-item\"><img />Default body copy.</li><li class=\"blocks-gallery-item\"><img />Adjusted body copy.</li></ul>\n\n\n\n<p>For a theme &ldquo;designed to take full advantage of the flexibility of the block editor,&rdquo; it is missing one crucial component: editor styles. It is marked with the official &ldquo;Block Editor Styles&rdquo; tag in the directory and passed through the review process with no mention of it. </p>\n\n\n\n<p>This seems like an oversight. Maybe something was lost in the build process or accidentally deleted before submission.</p>\n\n\n\n<ul><li class=\"blocks-gallery-item\"><img />Front end design.</li><li class=\"blocks-gallery-item\"><img />Block editor design.</li></ul>\n\n\n\n<p>Churel relies on the Kirki Customizer Framework, a requirement for accessing any theme options. Most controls the theme uses are built directly into WordPress. It does not make much sense to tie them to the activation of a third-party plugin, particularly for its simple color options.</p>\n\n\n\n<p>Despite its faults, I fell in love with its homepage design immediately. The modern card design coupled with a minimalist page layout and bright colors makes me want to explore. <em>And, you just got to love the ghost in the <a href=\"https://wp-churel.themeix.com/\">demo</a> logo, right?</em></p>\n\n\n\n<img />Churel theme homepage.\n\n\n\n<p>I also welcome any theme that actually creates a unique design for sticky posts on the homepage. Far too many theme authors either ignore it in whole or relegate it to a last-minute addition. The design team did not go overboard, but they made sure that readers know, &ldquo;Hey, this is important,&rdquo; while keeping it simple.</p>\n\n\n\n<p>Other elements are attractive about the theme, such as its subscription/newsletter area in the page footer. The attention to detail when styling the core widgets means everything looks good in the theme&rsquo;s sidebars. And a handful of animations sprinkled throughout the design, such as floating circles and an underline effect on post title links, add an extra dimension without feeling clunky.</p>\n\n\n\n<p>Churel is almost a top-tier block-ready WordPress theme. With a handful of trivial CSS changes and &mdash; I will sound like a broken record to regular readers &mdash; some block patterns, it could be.</p>\n\n\n\n<p>The theme&rsquo;s &ldquo;Authors&rdquo; page template is an example of a missed opportunity for a block pattern. The page template itself might be perfect for some but not others. It automatically lists administrators and authors along with their profiles. By overlooking other roles that can publish posts, the system is rigid. &ldquo;Authors&rdquo; or, more commonly, &ldquo;team&rdquo; pages are an ideal fit for the block system. Site administrators could quickly create and customize such a page if they merely had a pattern for doing so.</p>\n\n\n\n<img />Churel theme &ldquo;Authors&rdquo; page template.\n\n\n\n<p>A pattern built from the Columns block with nested Image, Heading, Separator, and Social Icons blocks would make this easy. Throw in an &ldquo;alternating colors&rdquo; block style (or just let users control the colors) for the Columns, and users can build what they want more easily than theme authors doing guesswork about what user profiles should appear.</p>\n\n\n\n<p>The block editor exists to solve these problems, and theme authors are leaving half their tools in the bag. <a href=\"https://wptavern.com/block-patterns-will-change-everything\">Block patterns will be a cornerstone</a> of theme design in the coming years.</p>\n\n\n\n<p>I may be overusing the term as of late, but this yet another theme that has <em>potential</em>. It is not the best that it can be yet, but it is a decent 1.x launch.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 27 Apr 2021 21:09:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"WordPress.org blog: Curious About Full Site Editing?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://wordpress.org/news/?p=10190\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wordpress.org/news/2021/04/curious-about-full-site-editing/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2790:\"<p>The second major release of the year is right around the corner. You might have heard a <a href=\"https://make.wordpress.org/core/2021/04/15/full-site-editing-go-no-go-april-14-2021/\">bit of buzz</a> about full site editing around your WordPress circles, so this post will give you some big picture things to know as well as a few wayfinding links for anyone who wants to know more.</p>\n\n\n\n<p><strong>For Site Owners and Operators</strong></p>\n\n\n\n<p>If you own and operate a WordPress site, updating to version 5.8 should be a seamless experience, just like any other update. All the conversation around full site editing is very exciting, but shouldn’t be alarming—<strong>everything in the next release that relates to full site editing is opt-in</strong>. To experiment freely with it, you need a theme that is built for it. Check the links at the end to see a few examples!</p>\n\n\n\n<p><strong>For Agencies and Theme/Plugin Developers</strong></p>\n\n\n\n<p>If you extend the functionality of the WordPress CMS for clients, updating to version 5.8 should also be seamless. As always, it’s smart to spot-check custom implementations in a staging environment or fully test when the release candidate is made available. Want to test your products and get everything client-ready? Check out any of the testing options below.</p>\n\n\n\n<p><strong>For Contributors and Volunteers</strong></p>\n\n\n\n<p>If you contribute time and expertise to the WordPress project, you can join us in the interesting work leading up to the WordPress 5.8 release and update your site with the deep satisfaction of a job well done. There is a lot that goes into every release—from design and development to documentation and translation; if you’ve got some time to spare, and want to help support the project that supports the tool that supports your site (whew!), check out the links below.</p>\n\n\n\n<h2>Resources</h2>\n\n\n\n<ul><li>A few block themes: <a href=\"https://wordpress.org/themes/tt1-blocks/\">TT1 Blocks</a>, <a href=\"https://wordpress.org/themes/hansen/\">Hansen</a>, <a href=\"https://wordpress.org/themes/block-based-bosco/\">Block-based Bosco</a>, <a href=\"https://wordpress.org/themes/q/\">Q</a></li><li>A few focus areas: <a href=\"https://make.wordpress.org/core/2021/04/20/full-site-editing-go-no-go-next-steps/\">Gutenberg plugin focuses</a></li><li>A few ways you can test: <a href=\"https://wordpress.org/plugins/gutenberg/\">Gutenberg plugin</a>, <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">Beta testing plugin</a>, <a href=\"https://gutenbergtimes.com/need-a-zip-from-master/#nightly\">Gutenberg Times nightly build</a></li><li>A few pieces of documentation: <a href=\"https://developer.wordpress.org/block-editor/handbook/full-site-editing/\">Full Site Editing Overview</a></li></ul>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 27 Apr 2021 17:26:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Josepha\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"WPTavern: Will We See In-Person WordCamps in 2021? An Open Discussion on a Path Forward\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=115641\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:217:\"https://wptavern.com/will-we-see-in-person-wordcamps-in-2021-an-open-discussion-on-a-path-forward?utm_source=rss&utm_medium=rss&utm_campaign=will-we-see-in-person-wordcamps-in-2021-an-open-discussion-on-a-path-forward\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3613:\"<p class=\"has-drop-cap\">Now that COVID-19 vaccinations are becoming more widespread, many hope that in-person WordCamps can once again be a reality. There is no official path forward just yet, and decisions will likely be locally based in the coming months. Angela Jin, a community organizer for Automattic, announced an <a href=\"https://make.wordpress.org/community/2021/04/26/discussing-the-path-to-in-person-wordcamps/\">open discussion around the topic</a>.</p>\n\n\n\n<p>Currently, all WordCamps are online-only events. There is no official decision on when in-person events will begin anew.</p>\n\n\n\n<p>This is a follow-up to an earlier <a href=\"https://wptavern.com/wordpress-community-team-discusses-return-to-in-person-events\">discussion that began in December 2020</a>. It served as an initial opinion-gathering mission. For communities that have more effectively contained the COVID-19 spread, the Community Team <a href=\"https://make.wordpress.org/community/2021/02/16/announcement-decision-making-checklist-for-in-person-meetups-now-available/\">posted guidelines and a checklist</a> for local Meetups in February.</p>\n\n\n\n<p>Most of the ideas from the December 2020 dialogue are at the forefront of the current open discussion. Mandatory masks, restricting the length of events, limiting attendance, and capping attendance according to the venue&rsquo;s capacity top the list.</p>\n\n\n\n<p>One of the tougher-to-achieve goals might be setting up safety guidelines around food or drink, which are often steeped in the local culture. It will also be a primary safety concern.</p>\n\n\n\n<p>Mandatory registration is on the table. This would allow organizers to contact attendees in case of exposure.</p>\n\n\n\n<p>Other suggestions center on maintaining local events, which is what WordCamp is all about. While some of the conferences are held in major cities and draw international crowds and speakers, this could be an opportunity to make sure that events focus directly on their communities. It would also be necessary for containing any spread of the virus or variants to outside populations.</p>\n\n\n\n<p>There is one suggestion to recommend that only vaccinated conference-goers attend. This would likely fall under an honor system. Making this mandatory could create potential hurdles based on local jurisdictions. For example, there is a House Bill in Alabama, my home state, that would not allow entertainment events to &ldquo;discriminate&rdquo; based on vaccination status if passed. I have yet to verify if WordCamps fall under the definition of &ldquo;entertainment events&rdquo; like a concert or sports match.</p>\n\n\n\n<p>There are still many unknowns at this point, and every potential in-person WordCamp would have to follow local laws. However, we are nearing a time where such events may once again be a reality.</p>\n\n\n\n<p>&ldquo;I&rsquo;m going to get a little more personal here: returning to in-person WordCamps is going to be an emotional experience that is going to affect everyone differently,&rdquo; Jin said in a final note, sharing thoughts that echo throughout the WordPress ecosystem.</p>\n\n\n\n<p>&ldquo;The WordPress community has a big range of introverts to extroverts, and we&rsquo;ve gone through major changes to how we interact with each other. For all that I want to hug everyone, it also is strange and a bit frightening to think about all that human contact after a year-and-then-some of this pandemic. Supporting organizers in bringing back WordCamps in a way that acknowledges and accommodates all our excitement and fears, as well as our love of WordPress, is a worthy goal.&rdquo;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 26 Apr 2021 20:35:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"WPTavern: FLoC Blocking Discussion Continues on WordPress Trac\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=115523\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:169:\"https://wptavern.com/floc-blocking-discussion-continues-on-wordpress-trac?utm_source=rss&utm_medium=rss&utm_campaign=floc-blocking-discussion-continues-on-wordpress-trac\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4580:\"<p>Last week WordPress contributors began a heated <a href=\"https://wptavern.com/wordpress-contributors-propose-blocking-floc-in-core\">discussion regarding blocking FLoC</a> (Federated Learning of Cohorts). Google&rsquo;s experimental alternative to third-party cookies has become a highly contentious topic that made its way into last week&rsquo;s Core developers meeting. </p>\n\n\n\n<p>Representatives from the Chrome team also attended the meeting to clear up any confusion and answer questions about how FLoC currently works. They <a href=\"https://wordpress.slack.com/archives/C02RQBWTW/p1619037652084400\">related</a> that during the FLoC Origin Trial (the process by which Chrome introduces new proposed API&rsquo;s for feedback from developers), a page will only be included in the browser&rsquo;s FLoC computation for one of two reasons:</p>\n\n\n\n<ul><li>The FLoC API&nbsp;<code>document.interestCohort()</code>&nbsp;is used on the page.</li><li>Chrome detects that the page&nbsp;<a target=\"_blank\" href=\"https://github.com/WICG/floc/issues/82\" rel=\"noreferrer noopener\">loads ads or ads-related resources</a>.</li></ul>\n\n\n\n<p>&ldquo;In the final end state, we expect the way FLoC will work is that the only pages that will be relevant to calculating your cohort are the pages that call the FLoC API,&rdquo; Chrome representative Michael Kleber said. &ldquo;So pages will &lsquo;opt in&rsquo; by using some new JS function call.&rdquo;</p>\n\n\n\n<p>Since FLoC is still in the the beginning stages, the Chrome team cannot confirm the final behavior for what pages will be included in FLoC calculations. At this point, it seems like it will primarily affect publishers and ad-supported websites in the future.</p>\n\n\n\n<p>Although the authors and proponents of the proposal prescribed immediate action, WordPress&rsquo; leadership has determined that an implementation discussion is premature at this time. </p>\n\n\n\n<p>&ldquo;I am now amending my posted request for a reworking of the proposal &ndash; I do not want to see another proposal for action in WordPress right now,&rdquo; WordPress lead developer Helen Hou-Sand&iacute; said during the meeting. &ldquo;What we need is a Trac ticket where we track the status of the FLoC trial/implementation and discuss periodically to see if action is needed. I have an opinion, but it&rsquo;s not really relevant at this time, and I think more of us should be comfortable with that idea.&rdquo;</p>\n\n\n\n<p>The Chrome team did not expect that many people would be considering FLoC at this point, as Origin Trials generally only attract a handful of people who are curious about the technical details. FLoC gained more widespread attention after the critical <a href=\"https://www.eff.org/deeplinks/2021/03/googles-floc-terrible-idea\">article</a> from EFF. The <a href=\"https://make.wordpress.org/core/2021/04/18/proposal-treat-floc-as-a-security-concern/#comment-41168\">original proposal</a> on make.wordpress.org also attracted media attention due to its confusing approach, premature assumptions, and lack of critical <a href=\"https://make.wordpress.org/core/handbook/best-practices/post-comment-guidelines/#peer-review\">peer review</a>.</p>\n\n\n\n<p>Peter Wilson <a href=\"https://make.wordpress.org/core/2021/04/18/proposal-treat-floc-as-a-security-concern/#comment-41168\">commented</a> on behalf of WordPress&rsquo; security team after meeting to discuss the issue, stating that it is unequivocally not a security concern:</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>Treating this as WordPress currently treats any other&nbsp;security issue&nbsp;would require releasing 21 versions of WordPress. As identified in other comments on this thread, it would also break the implicit contract of security releases by including an&nbsp;enhancement&nbsp;in the release.</p><p>As a result of these consideration, the security team have concluded that treating this as a security issue is inappropriate.</p><p>Whether this is suitable to be included in WordPress and subsequently released as part of the next 5.7.x maintenance release are discussions for the&nbsp;Core&nbsp;team. The security team do not have a consensus view on these questions.</p></blockquote>\n\n\n\n<p>Hou-Sand&iacute; opened a <a href=\"https://core.trac.wordpress.org/ticket/53069\">ticket</a> where discussion continues on the implications of FLoC. As more information becomes available from Chrome&rsquo;s Origin Trial, WordPress contributors will be better prepared to discuss how it may affect publishers and whether a core block, privacy setting, or other action is necessary.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 26 Apr 2021 16:44:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"WordPress.org blog: WP Briefing: Your Opinion is Our Opportunity\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/news/?post_type=podcast&p=10171\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wordpress.org/news/2021/04/your-opinion-is-our-opportunity/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:13066:\"<p>In this episode, Josepha discusses the importance of co-development and testing for the continued growth and maintenance of the WordPress project.&nbsp;</p>\n\n\n\n<p><em><strong>Have a question you&#8217;d like answered? You can submit them to <a href=\"mailto:wpbriefing@wordpress.org\">wpbriefing@wordpress.org</a>, either written or as a voice recording.</strong></em></p>\n\n\n\n<h2><strong>Credits</strong></h2>\n\n\n\n<ul><li>Editor:<a href=\"https://profiles.wordpress.org/dustinhartzler/\"> Dustin Hartzler</a></li><li>Logo:<a href=\"https://profiles.wordpress.org/beafialho/\"> Beatriz Fialho</a></li><li>Production:<a href=\"https://profiles.wordpress.org/mkaz/\"> </a><a href=\"https://profiles.wordpress.org/cbringmann/\">Chloé Bringmann</a></li><li>Song: Fearless First by Kevin MacLeod</li></ul>\n\n\n\n<h2>References</h2>\n\n\n\n<ul><li><a href=\"https://wordpress.org/news/2008/10/usability-testing-report-25-and-crazyhorse/\">2.5 Usability Testing Report&nbsp;</a></li><li><a href=\"https://europe.wordcamp.org/2021/\">WordCamp Europe 2021</a></li><li><a href=\"https://www.meetup.com/Pune-WordPress-Knowledge-Exchange/events/277520243/\">Pune Work Along (Self Study) Meetup</a></li><li><a href=\"https://fr.wordpress.org/2021/04/09/le-30-avril-2021-rejoignez-nous-pour-un-nouveau-wordpress-translation-day-fr/\">French Mini-Translation Day, April 30, 2021</a></li><li><a href=\"https://make.wordpress.org/core/2021/04/15/full-site-editing-go-no-go-april-14-2021/\">April 14, 2021, Full Site Editing Go/No-Go Demo Recap</a></li><li><a href=\"https://make.wordpress.org/core/2021/04/20/full-site-editing-go-no-go-next-steps/\">Full Site Editing Go/No-Go Next Steps</a></li><li><a href=\"https://make.wordpress.org/test/\">Test WordPress.org</a></li></ul>\n\n\n\n<h2>Transcript</h2>\n\n\n\n<span id=\"more-10171\"></span>\n\n\n\n<p>0:10</p>\n\n\n\n<p>Hello, everyone, and welcome to the WordPress briefing, the podcast where you can catch quick explanations of some of the ideas behind the WordPress open source project and the community around it, as well as get a small list of big things coming up in the next two weeks. I&#8217;m your host, Josepha Haden Chomphosy. Here we go!</p>\n\n\n\n<p>0:39</p>\n\n\n\n<p>Prior to Gutenberg, our current multi-year project that is changing the way we see WordPress, another multi-year project changed the way we saw WordPress. Starting in 2008, substantial changes to the WordPress interface came in a series of major releases, starting with WordPress 2.5. That was before my time in the project; I&#8217;ve only ever worked with the current dashboard in WordPress. But, from what I&#8217;ve read, the user testing that would have gone into it was a huge undertaking and very well coordinated. Now, WordPress has not taken on that type of robust testing project since, but starting around 2014 or 2015, a community testing practice was started. I&#8217;ve shared these calls for testing frequently, both on Twitter and in this podcast. But you may not really know why I find the testing program so valuable. So today, I&#8217;m going to explore with you the concept of co-developers in open source.</p>\n\n\n\n<p>1:52</p>\n\n\n\n<p>Open source software, like WordPress, is built by the people who show up. There are a few obvious groups when you think of software, the developers, designers, technical writers, folks who monitor the forums, and really, all the teams you find in our WordPress project. Co-developers or co-creators, if you&#8217;ll join me in making our tent a little bigger, refers to the users of an open source product who actively engage and contribute to the work by using the software and sharing any bugs that they find.</p>\n\n\n\n<p>2:25</p>\n\n\n\n<p>I mentioned this group in the episode about how WordPress improves. Specifically in that episode, I underlined that if you consider users to be part of the collaborative process, as long as people use your product, those people will have opinions about your product’s needs. And today, I&#8217;m extending that thought a bit further to say that, as long as there are opinions, there are opportunities.</p>\n\n\n\n<p>2:51</p>\n\n\n\n<p>When you know what isn&#8217;t working, you can focus your attention on a solution, you can focus on making sure that you can make it work. The existence of co-creators is one of the great things about open source. No designer or developer or product owner has to know every sort of user to be able to get feedback from them. If they show up, test the software and get their thoughts written down, then you can start to see patterns and common pain points. It is also, unfortunately, one of the great difficulties of being an open source project. After all, if users don&#8217;t show up, or don&#8217;t test, or don&#8217;t write down their feedback, it&#8217;s impossible to know what worked for them and what didn&#8217;t. And on top of that, with such a large percentage of the web being supported by WordPress in this case, not every problem is part of a pattern. And not all patterns are part of the current priorities.</p>\n\n\n\n<p>3:54</p>\n\n\n\n<p>Looking beyond that double-edged sword. Let&#8217;s say that this idea of a co-creator makes sense to you. And more than that, you feel like it describes you. What does it mean for you to show up in WordPress? There are lots of good ways to offer this sort of feedback and contribute to those patterns that can help us see through the fog. So I have for you a mini list and, of course, a bunch of links in the show notes for you.&nbsp;</p>\n\n\n\n<p>So some good ways. First, you can participate in any of the dedicated calls for testing. They are short and frequently have a guide. I participate in them and generally find them fun. I say generally because sometimes I also find them frustrating. That&#8217;s really okay too; the frustrations helped me to identify that I found a problem. And if I can find a problem, then I have saved someone else from finding that problem in the future. The second thing you can do is file a bug report with information about what happened when you ran into a problem and how someone like me could make your bug happen on their site. Bug</p>\n\n\n\n<p>5:00</p>\n\n\n\n<p>Reporting is one of the things I&#8217;ve grown to really love in my time and open source; I did not love it. At first, I was really scared to do it. I mostly used to send videos of the bugs that I found to other people and ask them to file the bug reports for me. But then, of course, I never knew whether they got fixed or not. So I was scared to do it at first. But once I figured out what makes a “good report,” I felt like I was helping circle hidden treasure on a map or something. I realized also not everyone&#8217;s excited about finding hidden treasure on a map. But I play video games and finding hidden treasure on maps is, like, a thing.</p>\n\n\n\n<p>5:43</p>\n\n\n\n<p>A third really great way to contribute like this is that you can join any community meeting to learn more about what&#8217;s happening now and in the future, or just to see what makes WordPress work. As a heads up, these meetings go really fast. And they&#8217;re all in text. And there&#8217;s sometimes, but not all the time, a little bit of jargon that you have to head to your favorite search engine to find. But I sit in on about half of them myself and get a lot of really good information about things that I&#8217;ve been wondering about, things that looked broken, but actually are functioning exactly the way that they should. And I just didn&#8217;t want them to function that way. And more often than not, I found out that something that I thought was broken, was already identified and being fixed. Those are three great ways to show up and help give feedback that helps make WordPress better and more functional for more people.&nbsp;</p>\n\n\n\n<p>There are also a few other ways that we see people trying to share that feedback that don&#8217;t work quite as well. And I&#8217;m going to touch on a few of them just because it&#8217;s important to know, as you&#8217;re trying to figure out how to get started with this. The first one is just tweeting your frustrations, and I get it like that&#8217;s literally what Twitter is for.</p>\n\n\n\n<p>7:03</p>\n\n\n\n<p>But also it&#8217;s hard to create a block from “I am frustrated, behold my hateful rhetoric.” Not that any of you, my dear listeners, ever tweet hateful rhetoric. Still, that is really hard for anyone to figure out what was actually wrong in that moment. Another thing that is not the most functional way to give feedback is review brigading. The Internet rewards this kind of behavior, but I have found at least for WordPress, those false positives and false negatives can be really confusing for our new users. And the third way, that&#8217;s not our best way, and probably is the least best way, is just by giving up and not telling anyone what broke for you.</p>\n\n\n\n<p>7:45</p>\n\n\n\n<p>I know that I already said it&#8217;s not possible to fix everyone&#8217;s problems. But while it&#8217;s not possible to fix everyone&#8217;s problems the moment they get shared, it&#8217;s also truly impossible to fix any problems that no one knows exist. And so giving up and not sharing an issue so that we can identify it as part of a pattern of problems is probably the least effective way to help us help you get your problem solved.</p>\n\n\n\n<p>8:13</p>\n\n\n\n<p>This brings me back to the question of the value of WordPress users as co creators in the development process. As WordPress grows, both in usage as a CMS and in participation as a community, it&#8217;s important for us to shed the idea that software creation is only about what literally can be done to code or what literally can be done to core or what literally can be done to the CMS. It&#8217;s also important for us to constantly remind ourselves that the best outcomes are the result of collaboration with the people who use WordPress the most. I know that not every type of user we have is showing up to give us feedback about where WordPress doesn&#8217;t work for them. And I would love to see more feedback that helps us to figure out where our patterns are.</p>\n\n\n\n<p>9:03</p>\n\n\n\n<p>So the bottom line is this without user feedback that has some clarity of what was expected versus what happened, the work to make a good choice involves a whole lot of guessing. So since open source software is built by the people who show up, I hope this gives you an idea of how you can show up and help improve the tool that powers your sites.</p>\n\n\n\n<p>9:32</p>\n\n\n\n<p>That brings us to today&#8217;s community highlight every episode or so I share either a great story of WordPress success or a great story of a WordPress contributor who helped some folks along the way. Today&#8217;s <a href=\"https://twitter.com/trishacodes/status/1357382647274762244\">community highlight</a> comes from @trishacodes who shared one of her early to WordPress mentors. She says “@RianRietveld was such an encouragement and helped me find the courage to speak up.” I have had myself many conversations with <a href=\"https://profiles.wordpress.org/rianrietveld/\">Rian</a>, and that rings true for me as well.&nbsp;</p>\n\n\n\n<p>10:00</p>\n\n\n\n<p>That brings us to the moment you&#8217;ve all been waiting for, the small list of big things. It&#8217;s actually kind of a medium list. Today, I&#8217;ve got four whole things to share with you all. The first thing on my list is that WordCamp Europe is coming, that will be June 7th through the 10th. It&#8217;s a multi-day online event. I will share in the show notes a link to the main website; there you can get an idea of what will happen, the schedule, and get your hands on some tickets so that you can get it in your calendar and prepare yourselves.&nbsp;</p>\n\n\n\n<p>The second thing I want to share is for all of our polyglots out there. The French team is planning a translation day coming up on April 30. I will share a link to that as well so that you can get an idea of what that takes if you&#8217;re feeling like you want to do some translation work. The third thing I want to share is that the Indian community in Pune actually started a new meetup series. It is a translation work along self-study &#8211; also for all of our polyglots out there. I would love to see as many people as are interested in both learning about how to do translations and certainly translating WordPress get registered for that. A final thing I want to share with you all is that if you are curious about what full site editing features will be included in the 5.8 release, that&#8217;s the WordPress release that&#8217;s coming out in the middle of July, you can check out my recap and recording of the demo that was held with Matt, Matias, and the rest of the team. There’s are also a number of other posts of next step ideas that I will share in the show notes as well.</p>\n\n\n\n<p>11:51</p>\n\n\n\n<p>That, my friends, is your small list of big things. Thank you for joining in today for the WordPress briefing. I&#8217;m your host, Josepha Haden Chomphosy. I&#8217;ll see you again in a couple of weeks!</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 26 Apr 2021 15:24:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Chloe Bringmann\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:106:\"WPTavern: Companies Running Competitive Ads Against WordPress May Soon be Banned from Sponsoring WordCamps\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=115353\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:257:\"https://wptavern.com/companies-running-competitive-ads-against-wordpress-may-soon-be-banned-from-sponsoring-wordcamps?utm_source=rss&utm_medium=rss&utm_campaign=companies-running-competitive-ads-against-wordpress-may-soon-be-banned-from-sponsoring-wordcamps\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4644:\"<p>The WordPress Community Team is <a href=\"https://make.wordpress.org/community/2021/04/19/discussion-companies-who-run-competitive-ads-against-wordpress-and-apply-to-sponsor-wordcamps/\">discussing</a> banning companies from sponsoring WordCamps if they advertise competitively against WordPress. A WordCamp organizing team recently brought the concern to community deputies regarding a potential sponsor that is advertising its product in such a way that it puts WordPress in &ldquo;an unflattering light.&rdquo;</p>\n\n\n\n<p>This particular instance is prompting community leadership to clarify expectations for how sponsors advertise WordPress derivative products &ndash; products built on top of WordPress, such as themes, plugins, or distributions.</p>\n\n\n\n<p>Cami Kaos published a list of the existing expectations for sponsors and those who want to participate in the community&rsquo;s events program. These include items such as no discrimination, no incitement of violence, respecting the WordPress trademark and licensing, and others from the <a href=\"https://make.wordpress.org/community/handbook/wordcamp-organizer/planning-details/fundraising/local-wordcamp-sponsorship/\">WordCamp Organizer Handbook</a>. Kaos posed the following two questions to the community:</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p><strong>Should the WordCamp and&nbsp;meetup&nbsp;programs accept sponsors, speakers and organizers who engage in&nbsp;competitive marketing against WordPress?</strong></p><p><strong>How should competitive advertising be defined in the WordPress space?</strong></p></blockquote>\n\n\n\n<p>The discussion post did not specify the potential sponsor in question but <a href=\"https://wptavern.com/elementor-raises-eyebrows-with-google-ads-targeting-full-site-editing\">recent campaigns from Elementor</a> meet the criteria of advertising against WordPress with a negative slant. The ads insinuate that WordPress isn&rsquo;t user -friendly or intuitive and that without this particular product WordPress is frustrating. The company has also run ads that co-opt the term &ldquo;full-site editing&rdquo; on Google searches, with Elementor representatives claiming that it is a generic industry term.</p>\n\n\n\n<div class=\"wp-block-image\"><img /></div>\n\n\n\n<p>Elementor has sponsored events in the past. If the community guidelines are changed to explicitly prohibit advertising that puts WordPress in a negative light, then the company may be required to pull all of its ads that violate the new requirements in order to become a sponsor. </p>\n\n\n\n<p>Bluehost is another company that might come under the microscope for its <a href=\"https://wptavern.com/bluehost-misuses-wordpress-trademark-reigniting-controversy-over-recommended-hosts-page\">recent trademark misuse</a>. Although the company had a meeting to resolve matters with WordPress&rsquo; executive director Josepha Haden, Bluehost still has <a href=\"https://www.youtube.com/channel/UCURv2b4zbEiwN626-T321HQ\">multiple ads</a> running with the <a href=\"https://youtu.be/eqQORI5Ehd0?t=15\">same issue</a>. </p>\n\n\n\n<p>Feedback so far has been minimal. One participant in the discussion mistakenly thought the proposal was referring to competition in general. Andrea Middleton clarified in the comments.</p>\n\n\n\n<p>&ldquo;The question is whether WordPress events should co-promote or endorse people and companies that are competing&nbsp;<strong>against WordPress itself</strong>,&rdquo; Middleton said.</p>\n\n\n\n<p>&ldquo;For example, if someone is running ads saying &lsquo;WordPress is terrible, use our product instead,&rsquo; or even &lsquo;WordPress is terrible, but our&nbsp;plugin&nbsp;makes it good&rsquo; do we want to include them as a sponsor for WordPress events?&rdquo;</p>\n\n\n\n<p>Defining competitive advertising to exclude all forms criticism may be too strong of a line but there should be guidelines that cover more egregious cases where a company is disparaging WordPress for the purpose of exploiting its community. </p>\n\n\n\n<p>&ldquo;Criticism can be healthy and good marketing when done in good faith and with a tool that truly addresses a user need,&rdquo; Mark Root-Wiley said. &ldquo;What makes criticism objectionable is when it strays past details of software and into harmful criticism of people and communities, and it seems like the existing standards cover that.&rdquo;</p>\n\n\n\n<p>The <a href=\"https://make.wordpress.org/community/2021/04/19/discussion-companies-who-run-competitive-ads-against-wordpress-and-apply-to-sponsor-wordcamps/\">discussion</a> will be open until April 29, 2021, when comments will be closed and the discussion will move to final review. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 23 Apr 2021 22:01:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"WPTavern: Plausible Analytics Adds Statistics Dashboard to the WordPress Admin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=115526\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:201:\"https://wptavern.com/plausible-analytics-adds-statistics-dashboard-to-the-wordpress-admin?utm_source=rss&utm_medium=rss&utm_campaign=plausible-analytics-adds-statistics-dashboard-to-the-wordpress-admin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5460:\"<p class=\"has-drop-cap\">Earlier this week, <a href=\"https://plausible.io/\">Plausible Analytics</a> released version 1.2 of its <a href=\"https://wordpress.org/plugins/plausible-analytics/\">WordPress plugin</a>. The update includes a missing feature that should make it more appealing to end-users. The plugin now supports an &ldquo;embedded mode&rdquo; that displays a site&rsquo;s stats directly in the WordPress admin interface.</p>\n\n\n\n<p>Without counting the self-hosted users of its open-source project, Plausible Analytics recently surpassed 14,000 users on its hosted service. That is a step forward in its two-year path toward making a dent in the analytics market.</p>\n\n\n\n<p>&ldquo;We&rsquo;ve taken 1.4 billion pageviews directly from Google Analytics to date,&rdquo; said Plausible&rsquo;s co-founder Marko Saric&rdquo;. We&rsquo;re about to reach 3,000 paying subscribers by the end of the week.&rdquo;</p>\n\n\n\n<p>It is an exciting moment for the small, EU-based team. However, the work does not stop there. The plugin has gained 500 active installs after its recent launch. It is a small number, but Saric seems happy that the plugin is simply showing up in the directory when people search for &ldquo;web analytics&rdquo; at this point, hoping that it will bring more WordPress users around to a privacy-first solution.</p>\n\n\n\n<p>It is a slow burn and organic growth. However, WordPress users are stepping up and filing tickets through the plugin&rsquo;s <a href=\"https://github.com/plausible/wordpress/issues\">GitHub repository</a> now. Activity and feedback are the lifeblood of young products, giving developers goals to reach toward.</p>\n\n\n\n<p>The latest version of the Plausible Analytics plugin gives users access to their stats dashboard from the WordPress admin. Hooking it up is as simple as generating a shared link via the service&rsquo;s website.</p>\n\n\n\n<img />Generating a shared link from the Plausible Analytics site.\n\n\n\n<p>Earlier versions of the plugin did not include this functionality because the team was still building their public API, a necessary feature for sharing the data outside of their system.</p>\n\n\n\n<p>The new stats API is not just for the plugin. Developers can build on top of the system, retrieve stats, and present them however they want. <a href=\"https://dailytics.com/\">Dailytics</a>, a third-party service, already integrates with it and sends out daily analytics emails.  The team has <a href=\"https://plausible.io/docs/stats-api\">detailed documentation</a> on using it.</p>\n\n\n\n<img />Realtime stats embedded into the WordPress admin.\n\n\n\n<p>The latest version of the self-hosted Plausible script is available too. It features all of the same capabilities. However, the WordPress plugin does not yet support embedded mode for analytics just yet.</p>\n\n\n\n<p>&ldquo;The development of the WordPress plugin started before this self-hosted release was completed, so WP dashboard for self-hosters is not part of the 1.2 plugin release, unfortunately,&rdquo; said Saric. &ldquo;I&rsquo;ve now spoken with Mehul Gohil, who is the WordPress developer that has helped us with the plugin, and we will try to do a mini-release of the plugin in the upcoming days to allow the self-hosters to get their stats within the WordPress interface too.&rdquo;</p>\n\n\n\n<h2>Version 1.3 and Beyond</h2>\n\n\n\n<p class=\"has-drop-cap\">Saric said his team already has a roadmap for the next version of the plugin. Several new features should land in version 1.3, such as excluding authors and editors being counted in the stats. This option exists for administrators at the moment.</p>\n\n\n\n<p>&ldquo;The second one is a widget that gives a quick overview of the most import metrics such as unique visitors and pageviews, so you don&rsquo;t need to go into the analytics section if you don&rsquo;t want to,&rdquo; he said.</p>\n\n\n\n<p>The team is also looking at out-of-the-box integration with some popular third-party plugins to support event tracking. At the moment, this is primarily a developer-friendly feature because it requires a bit of JavaScript to track signups and conversions. Making it work by default is the goal.</p>\n\n\n\n<p>&ldquo;We&rsquo;ve already done some work to make it easier, such as the recent introduction of the ability to group pages,&rdquo; said Saric. &ldquo;For instance, you can now group WooCommerce checkout pages for your eCommerce, so now we just need to enable that out of the box in the plugin.&rdquo;</p>\n\n\n\n<p>They are shooting for a self-hosted or proxied version of their script from the plugin in the long term. This would allow users to run the script from their domain directly as a first-party connection, providing more accurate data. This is a manual process right now, but the team wants the process to be easy for those users going down the self-hosted path.</p>\n\n\n\n<p>&ldquo;Obviously, in addition to the WordPress-specific improvements, we&rsquo;re constantly working on improving Plausible Analytics itself,&rdquo; said Saric. &ldquo;WordPress users automatically get all of those into their dashboard as we improve and update the main site. No need to wait for WordPress plugin updates for those to make it into the WordPress dashboard. One metric we&rsquo;re hoping to release over the upcoming weeks is the inclusion of states and city data in addition to the countries that we have now. Many of our users have asked for this, so we&rsquo;re prioritizing it in our development.&rdquo;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 23 Apr 2021 15:49:57 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"WPTavern: With Some Hits and Misses, the Guten Blog WordPress Theme Has Potential\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=115543\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:205:\"https://wptavern.com/with-some-hits-and-misses-the-guten-blog-wordpress-theme-has-potential?utm_source=rss&utm_medium=rss&utm_campaign=with-some-hits-and-misses-the-guten-blog-wordpress-theme-has-potential\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5677:\"<p class=\"has-drop-cap\">Any time I see a new block-ready WordPress theme, I am like a toddler in a toyshop. I cannot wait to bring it home, rip off the packaging, and play with it. Sometimes it is the type of fun that will create lasting, years-long memories. Other times, the toy is not all it is cracked up to be. It does not deliver on the promises on its packaging. It is too hard to play with or just not what you expected. You discard it and move on to one of your other trusted toys, ones with guaranteed fun built-in.</p>\n\n\n\n<p>The latter feeling is where I am at with <a href=\"https://wordpress.org/themes/guten-blog/\">Guten Blog</a> by Avid Themes. I want to love it. It has many elements that could make for a great theme. At first glance, I even believed it could be one of only a handful of quality, block-supported themes in the directory.</p>\n\n\n\n<img />Guten Blog default demo homepage.\n\n\n\n<p>However, I was that kid all over again, let down by the shiny veneer of colorful packaging. The upside is that there is potential. It has all the elements needed to be among the great blogging themes. With more work, it could go from mediocre to top-10 material.</p>\n\n\n\n<p>The most disappointing thing about the theme is the following homepage section:</p>\n\n\n\n<img />Common three-box design pattern.\n\n\n\n<p>It is a typical design on the web today &mdash; a section containing some intro text with three boxes. I do not dislike the design. The problem is how it is handled by the theme. It relies exclusively on the <a href=\"https://wordpress.org/plugins/gutentor/\">Gutentor plugin</a> to build this, and there are zero reasons to do so. The block editor is capable of handling this on its own.</p>\n\n\n\n<p>This would have been an easy win for the theme to package this section design as a custom block pattern.</p>\n\n\n\n<p>For some blocks, I get it; WordPress&rsquo;s built-in blocks do not cut it yet. For example, the various post-related blocks do not exist yet. Of course, the Query block is slated to land in WordPress 5.8. That would be an opportune moment to make the switch.</p>\n\n\n\n<p>However, the above section is representative of all the imported demo content. Everything from columns to quotes to paragraphs &mdash; yes, paragraphs &mdash; is built with Gutentor&rsquo;s blocks.</p>\n\n\n\n<p>One of my primary fears with theme developers is that they will continue to over-rely on plugins for basic features that exist in WordPress. This teaches end-users to also rely on these plugins, and it is a shame. This creates less flexibility for users, tying basic content to a third-party tool.</p>\n\n\n\n<p>There are some stunning <a href=\"https://avidthemes.com/preview/?product_id=gutenblog-free-1\">pre-made demos</a> that users can import. In total, the theme offers 18 options. Seven of those are available for free. The other demos are part of the <a href=\"https://avidthemes.com/guten-blog-pro/\">&ldquo;pro&rdquo; package</a>, ranging from $49.99 to $79.99 depending on the number of sites the customer wants support and updates.</p>\n\n\n\n<img />Pre-made, importable demos.\n\n\n\n<p>In particular, I am a fan of its third free option for lifestyle-type blogs:</p>\n\n\n\n<img />Lifestyle-type free, importable demo.\n\n\n\n<p>The importable demos are the bright spot of the theme, most of which showcase various homepage options. The development team simply bypassed the tools available in core WordPress. There are no block styles or patterns, and the demos offer a plethora of opportunities to flesh out custom designs for users to insert with one click.</p>\n\n\n\n<p>The theme technically works without extra plugins. It is billed as a blogging theme, so the hope is that it holds up in that regard. With a content size between 730 &ndash; 800 pixels and text of 16 pixels, it does not. The text is practically unreadable when it comes to long-form content. It may as well be a jumbled mass of words where you continually lose your place from line to line.</p>\n\n\n\n<p>This is not <em>Justin-is-having-a-bad-day-so-let&rsquo;s-dump-on-a-theme</em>. I genuinely love the potential Guten Blog has. I want it to be better. The overall design is something I could imagine myself using on various websites I am involved with. Its font choices, minimalist layout, and generous use of whitespace are right up my alley.</p>\n\n\n\n<p>However, it has some issues. For example, it updates a database option for a third-party plugin on every page load (I am not sure how that made it through the review process). It also missed a lot of opportunities to showcase the core block editor.</p>\n\n\n\n<p>Other issues are with the theme&rsquo;s primary admin notice. The small text that reads &ldquo;Clicking on get started will activate Advanced Import&rdquo; felt shady. Literally, the text was intentionally styled with a 10-pixel font size, which was incredibly difficult to read, so tough that I did not catch it until I unwittingly began installing a third-party plugin. It also installed Gutenblog Demo Import and the Gutentor plugin without authorization at that moment.</p>\n\n\n\n<p>These are fixable issues. I hope the theme development team can take my complaints and build something that eventually exceeds my expectations. The potential is there.</p>\n\n\n\n<p><strong>Update (April 26):</strong> I did not notice during the initial review, but I have since confirmed that this theme changed my site title to &ldquo;WP GutenBlog&rdquo; at some point in the process, likely during the demo import.</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p><strong>Disclosure:</strong> This theme makes use of a library I built for breadcrumbs. It is using a version that is at least three years out of date.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 22 Apr 2021 23:12:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:113:\"WPTavern: Google Delays Page Experience Ranking Signal Rollout until June 2021, Adds New Report to Search Console\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=115367\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:269:\"https://wptavern.com/google-delays-page-experience-ranking-signal-rollout-until-june-2021-adds-new-report-to-search-console?utm_source=rss&utm_medium=rss&utm_campaign=google-delays-page-experience-ranking-signal-rollout-until-june-2021-adds-new-report-to-search-console\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2764:\"<p>Google <a href=\"https://developers.google.com/search/blog/2021/04/more-details-page-experience\">announced</a> this week that it will be delaying the rollout of the new page experience ranking signal to mid-June 2021. Page experience will be included along with existing search signals like&nbsp;mobile-friendliness,&nbsp;safe-browsing,&nbsp;HTTPS-security, and&nbsp;intrusive interstitial guidelines. The rollout, previously planned to begin in May, will be gradual and page experience will not be in full force as a ranking signal until August.</p>\n\n\n\n<p>In the meantime, Google has been elaborating on <a href=\"https://support.google.com/webmasters/answer/10218333\">how page experience is evaluated</a> and has published an <a href=\"https://support.google.com/webmasters/thread/86521401\">FAQ</a> page with common questions they have been answering:</p>\n\n\n\n<ul><li>If I built AMP pages, do they meet the recommended thresholds?</li><li>Can a site meet the recommended thresholds without using AMP?</li><li>Is there a difference between desktop and mobile ranking?</li></ul>\n\n\n\n<p>Google also announced a new&nbsp;<a href=\"https://support.google.com/webmasters/answer/10218333\">Page Experience report</a> in the Search Console that displays the percentage of URLs with good page experience and search impressions over time. Currently, page experience only applies to mobile search. Good URLs refers to the percentage of mobile URLs with both&nbsp;Good&nbsp;status in Core Web Vitals and no mobile usability issues according to the Mobile Usability report.</p>\n\n\n\n<img />\n\n\n\n<p>Google News will also be getting some important AMP-related updates during the rollout, with the removal of the AMP badge icon and the inclusion of non-AMP content in the mobile apps:</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>As part of the page experience update, we&rsquo;re expanding the usage of non-AMP content to power the core experience on&nbsp;<a href=\"https://news.google.com/\">news.google.com</a>&nbsp;and in the Google News mobile apps.</p><p>Additionally, we will no longer show the AMP badge icon to indicate AMP content. You can expect this change to come to our products as the page experience update begins to roll out in mid-June.</p></blockquote>\n\n\n\n<p>Non-AMP pages will also be eligible to appear in the Top Stories carousel as another planned part of this update.</p>\n\n\n\n<p>Google Search has been updated to include support for signed exchanges (SXG) on all pages, previously only available on AMP-generated pages. This allows for pre-fetching resources, such as HTML, JavaScript, CSS, images, or font, in order to render pages faster. <a href=\"https://web.dev/signed-exchanges/#tooling\">Web.dev</a> has a guide and tools for monitoring and debugging SXG.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 22 Apr 2021 14:26:45 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"WPTavern: Themes Set Up for a Paradigm Shift, WordPress 5.8 Will Unleash Tools To Make It Happen\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=115466\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:235:\"https://wptavern.com/themes-set-up-for-a-paradigm-shift-wordpress-5-8-will-unleash-tools-to-make-it-happen?utm_source=rss&utm_medium=rss&utm_campaign=themes-set-up-for-a-paradigm-shift-wordpress-5-8-will-unleash-tools-to-make-it-happen\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:9813:\"<p class=\"has-drop-cap\">For much of WordPress&rsquo;s history, the foundational elements of building a theme have been slow to change. Every so often, developers would get a new feature, such as child themes, featured images, nav menus, and template parts. Each of these was epic in its own way. However, theme authors had ample time to adapt to these single feature introductions.</p>\n\n\n\n<p>When the block editor landed, it did so with a bang. Love it or hate it, it shifted how we think about design for the web. It was not one of those one-off enhancements, regardless of how many times we were told it would &ldquo;just work&rdquo; with any theme. It sometimes does not <em>technically</em> break things. Support and integration are necessary for an ideal user experience, and theme authors have been slow to catch up.</p>\n\n\n\n<p>With WordPress 5.8, theme authors are gearing up for another paradigm-shifting set of changes. Josepha Haden Chomphosy, WordPress Executive Director, announced last week that several Full Site Editing (FSE) sub-components will begin <a href=\"https://wptavern.com/full-site-editing-is-partly-a-go-for-wordpress-5-8\">shipping with the next release</a>.</p>\n\n\n\n<p>In the <a href=\"https://wptavern.com/podcast/2-anne-mccarthy-on-how-full-site-editing-will-impact-wordpress\">latest episode</a> of the WP Tavern Jukebox podcast, Nathan Wrigley hosted guest Anne McCarthy. He asked her to calm people&rsquo;s fears over upcoming changes. &ldquo;So, as an example, let&rsquo;s imagine that we&rsquo;re a theme developer. We may be getting concerned that themes are going to become a thing of the past, that the livelihood that we&rsquo;ve created for ourselves is going to disappear before our eyes.&rdquo;</p>\n\n\n\n<p>It is a common question. Since the inception of Gutenberg, particularly its features that fall under FSE, themers have wondered if there would be a place at the table for them. If WordPress is moving toward a grander page-building experience, where do themes fit in? If users can change the layout or manipulate all of the styles, what is the theme&rsquo;s job?</p>\n\n\n\n<p>These questions are finally getting some answers. We can see the real-world changes introduced in recent months. They paint a much clearer picture, defining the role of themes in WordPress&rsquo;s future.</p>\n\n\n\n<p>&ldquo;And for theme authors, themes are going to be so important in a full site editing world,&rdquo; said McCarthy. &ldquo;And one of the things I am so excited about is that there&rsquo;s going to be a ton of what they&rsquo;re calling&hellip;the idea of these hybrid universal themes that can work with, for example, template editing.&rdquo;</p>\n\n\n\n<p>She is referring to a <a href=\"https://github.com/WordPress/gutenberg/issues/29024\">recent discussion</a> that <a href=\"https://github.com/WordPress/gutenberg/issues/29024#issuecomment-792796711\">makes some distinctions</a> between universal and hybrid themes. Essentially, universal themes would work in both a classic or block editor context, depending on what the user chose. A hybrid might support parts of the block experience but have a path to becoming a universal theme that fully caters to any user down the road.</p>\n\n\n\n<p>While this does not wholly address theme authors&rsquo; concerns, these are the building blocks that Gutenberg contributors are thinking about. First and foremost, they want a solid user experience. However, the discussions show that they also recognize that theme developers need to opt into new things at their own pace, supporting features as they understand them and learn how to implement them. This provides a path forward for traditional themes to transition into the new era and be built from scratch with new tools.</p>\n\n\n\n<p>Themes may well be more vital to WordPress&rsquo;s future than they were in the past.</p>\n\n\n\n<h2>New Tools Coming in WordPress 5.8</h2>\n\n\n\n<img />\n\n\n\n<p class=\"has-drop-cap\">The site editor and global styles features are not planned to ship with WordPress 5.8. However, the upcoming release is set to introduce some powerful tools for theme authors. This will be a pivotal moment for theme development companies that want to make their mark in the space. The right team with a forward-looking mindset stands to disrupt the market and make millions. And, there is room for the authors who just want to build cool stuff.</p>\n\n\n\n<p>It all starts with the new template-related blocks that should be enabled in the next major update. In particular, the Query block provides an alternative to what was formerly only possible via code and carefully constructed theme options. Coupling it with existing features opens us to a world of possibilities.</p>\n\n\n\n<p>For example, I chose a theme from the most popular list on WordPress.org that looked to have one of the most complex query and loop setups of the bunch. The following is the homepage of <a href=\"https://wordpress.org/themes/enternews/\">EnterNews</a>:</p>\n\n\n\n<img />EnterNews WordPress theme homepage.\n\n\n\n<p>Anyone familiar with theme development can tell you that it would take at least eight different queries to create that homepage design without looking at the code. The only way to build that and allow users to customize which posts appear is through a series of theme options (probably category-based dropdown select boxes).</p>\n\n\n\n<p>If the Query block ships with WordPress 5.8 as expected and is also enabled for any theme, this layout is suddenly possible directly from the block editor &mdash; <em>no site editor necessary</em>. Via block patterns, users can insert these &ldquo;sections&rdquo; of different Query blocks in their page and reorder them. However, it requires buy-in from the theme author.</p>\n\n\n\n<p>As I said earlier, theme authors have been slow to adopt block-related features as a whole. Undoubtedly, the system for the EnterNews homepage is already getting the job done. And, if it works for the theme&rsquo;s current user base, there may seem to be little incentive to change.</p>\n\n\n\n<p>However, there are real benefits from a development angle to transitioning to a new system. The most obvious is that it requires little code compared to the PHP needed for building customizer options. Block patterns are little more than HTML with bits and pieces of JSON configuration in the mix. Developers can literally build them from the editor and copy/paste the code part.</p>\n\n\n\n<p>By writing less code, it lowers the potential for security issues and other bugs. Theme authors can also be less rigid in their design, allowing users to move pieces of the layout around.</p>\n\n\n\n<p>The Query block is not the only one slated for inclusion in 5.8 outside of a block-based theme context. The Navigation, Site Title, Site Logo, and more are ready to ship. Most such blocks are vital components for building an entire page. Theme authors could start handing over the tools for building complex landing pages on launch day this July.</p>\n\n\n\n<h2>Stepping Stones</h2>\n\n\n\n<img />\n\n\n\n<p class=\"has-drop-cap\">Not every theme author needs to step up and attempt to revolutionize the theme space &mdash; though I am looking forward to those who do. Others might want to take a more measured approach. FSE is a set of many sub-components, some of which are shipping with WordPress 5.8. Many of these do not require developers to opt into them. They will &ldquo;just work.&rdquo; <em>Sort of. Mostly.</em></p>\n\n\n\n<p>Users will be able to switch to a template-editing mode directly from the block editor. From there, they can create entire page templates of their choosing. Theme authors can either stand in their way by not styling for blocks or make the experience more enjoyable.</p>\n\n\n\n<p>The widgets screen and customizer will allow end-users of traditional themes to insert blocks in any of their sidebars. Some theme authors will need to account for this in their designs. The HTML output might throw off some layouts. For those who are not ready, they should disable block-based widget support.</p>\n\n\n\n<p>The most crucial tool, however, is entirely optional for theme authors. That is the introduction of <code>theme.json</code> support. The <code>theme.json</code> file is the cornerstone of future theme development. It acts as a config file for block settings and styles, allowing theme authors to set up the defaults for anything.</p>\n\n\n\n<p>In a nutshell, theme developers can set up any of the block options from this file, and those options are automatically handled in the editor and on the front end.</p>\n\n\n\n<p>Themes can also define defaults for block options that do not yet exist in the interface. The system will automatically output these as styles, even if users cannot change them in 5.8.</p>\n\n\n\n<p>Again, this means less code work for themers in the long run. While there will likely always be a place for custom CSS, some themes could essentially be built from <code>theme.json</code> configurations. That is not possible today. However, theme authors can start taking advantage of this tool.</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>Themes are not going the way of the dinosaur. All of that overly complex PHP code work necessary in the past might just be. The shift is putting themes back into their proper place: design. Previously available tools such as patterns and styles coupled with the new pieces like <code>theme.json</code> and template-related blocks will be the backbone of the new system. It is all starting to come together.</p>\n\n\n\n<p>The transition will take some time, and each themer will need to decide for him or herself how much they want to take on. But, the time is near. I might even crank up the old code editor and start putting together a project myself. There has never been a better time to be excited about theme development than now.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 21 Apr 2021 23:32:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:10;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"WordPress.org blog: Become an Early Adopter With the Gutenberg Plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://wordpress.org/news/?p=10164\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://wordpress.org/news/2021/04/become-an-early-adopter-with-the-gutenberg-plugin/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4168:\"<p><strong><em>Copy by Anne McCarthy (<a href=\"https://profiles.wordpress.org/annezazu/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>annezazu</a>) and Design by Mel Choyce-Dwan (<a href=\"https://profiles.wordpress.org/melchoyce/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>melchoyce</a>)</em></strong></p>\n\n\n\n<div class=\"wp-block-image\"><img src=\"https://i2.wp.com/wordpress.org/news/files/2021/04/Frame-1.png?resize=632%2C354&ssl=1\" alt=\"\" class=\"wp-image-10165\" width=\"632\" height=\"354\" /></div>\n\n\n\n<p>In WordPress circles (whether it’s your local meetup, a trusted publication, or your networking group), you may have heard terms like Core Editor, Gutenberg, and the Block Editor used interchangeably over the last four years. And if you’re following contributor work on the project itself, you may also have heard some additional nuances—Gutenberg plugin, Gutenberg, or Block Editor.&nbsp;</p>\n\n\n\n<p>It can get a little confusing, so let’s take a look at four terms that will help you find your way:&nbsp;</p>\n\n\n\n<ul><li>WordPress &#8211; WordPress refers to the open source software but also to the community that surrounds it.&nbsp;</li><li>Gutenberg &#8211; Gutenberg is the code name for a multi-year project to update editing areas for the WordPress software.</li><li>Editor &#8211; The editor refers to a section of the software that allows you to update content on your site’s posts and pages.&nbsp;</li><li>Gutenberg Plugin &#8211; The Gutenberg plugin is where early work to update the editor is shared.</li></ul>\n\n\n\n<h2>The Gutenberg Plugin</h2>\n\n\n\n<p>Now that we’ve cleared up the definitions, let’s talk about the plugin. When might you use it? What would you use it for? You can think of it as an early access program or a “WordPress lab.” The plugin is updated every two weeks, which means that bugs that have been reported are often fixed and that what you see changes rapidly.&nbsp;</p>\n\n\n\n<p>The Gutenberg plugin also contains features that aren’t yet ready for their WordPress debut but are ready for curious users to test and provide feedback. This is a common practice that allows stable features to make it to your site in WordPress releases while allowing experimental features to be tested and refined. To get a sense of whether using the Gutenberg Plugin might be something you want to explore to get access to earlier features, check out the <a href=\"https://make.wordpress.org/core/tag/gutenberg-new/\">“What’s New” release posts </a>and the <a href=\"https://make.wordpress.org/core/tag/core-editor-improvement/\">Core Editor Improvement post series</a>. </p>\n\n\n\n<h2>Do I Need the Plugin to Use Gutenberg?</h2>\n\n\n\n<p>It depends on your comfort level! Generally speaking, it is not recommended to use the plugin on a site that has launched and is actively in use unless you’re very comfortable with the code side of WordPress. Fortunately, each WordPress release comes ready to go with <a href=\"https://developer.wordpress.org/block-editor/handbook/versions-in-wordpress/\">multiple versions of the Gutenberg plugin</a>.&nbsp;</p>\n\n\n\n<p>But if you are a keen beta tester who loves reporting feedback, or you feel comfortable navigating how to opt-in/out of the experimental aspects of the plugin, here are a few reasons you might want to dig into what the Gutenberg Plugin has to offer:</p>\n\n\n\n<ul><li>Test new features and give helpful feedback. For example, you can use the plugin to <a href=\"https://make.wordpress.org/test/handbook/full-site-editing-outreach-experiment/how-to-test-fse/\">help test Full Site Editing</a>.&nbsp;</li><li>Get early access to the latest &amp; greatest while navigating when to opt-in or out of experimental features.&nbsp;</li><li>Prepare for the future whether you’re a theme author, plugin developer, agency owner, etc.&nbsp;</li></ul>\n\n\n\n<p><em>Do you use the Gutenberg plugin and </em><a href=\"https://github.com/WordPress/gutenberg/issues\"><em>share feedback on GitHub</em></a><em>? Thank you! This kind of feedback is what helps ensure stability in what’s shipped in WordPress releases.&nbsp;</em></p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 21 Apr 2021 21:03:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Chloe Bringmann\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:11;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"WPTavern: #2 – Anne McCarthy on How Full Site Editing Will Impact WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://wptavern.com/?post_type=podcast&p=115391\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:197:\"https://wptavern.com/podcast/2-anne-mccarthy-on-how-full-site-editing-will-impact-wordpress?utm_source=rss&utm_medium=rss&utm_campaign=2-anne-mccarthy-on-how-full-site-editing-will-impact-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:68360:\"<h2 class=\"is-style-default\">About this episode.</h2>\n\n\n\n<p>So the podcast today features Anne McCarthy. Anne is Developer Relations Wrangler for Automattic. Her work is focussed on the WordPress.org space, and she is leading the Full Site Editing Outreach Program.</p>\n\n\n\n<p>Full Site Editing is an endeavour to make it easier to manage how your WordPress website works. It&rsquo;s hoped that tasks which once required a fairly technical understanding of the WordPress code, will become available to all. Creating headers and footers, deciding what information to pull from the database and where it should be displayed. These will become part of the Block Editor interface. Complexity replaced by simplicity; or at least that&rsquo;s the goal.</p>\n\n\n\n<p>This, as you might imagine, is not an easy task. Now that WordPress is pushing beyond 40% of the web, there&rsquo;s a lot to consider, and that&rsquo;s what Anne is doing. She&rsquo;s part of the team trying to work out how this might look, how it should work and when it will be ready.</p>\n\n\n\n<p>We start off with an introduction from Anne and how she became involved with WordPress and the Full Site Editing initiative in particular.</p>\n\n\n\n<p>Then the discussion moves to an explanation of what Full Site Editing hopes to achieve. Which areas of a website are intended to be made available with Full Site Editing?</p>\n\n\n\n<p>We then get into the specific details of what constraints the project faces; and there are many points to consider. Backwards compatibility, accessibility and how commercial and free plugins feed into the project roadmap.</p>\n\n\n\n<p>Towards the end of the podcast we get into the process of how Full Site Editing is moving forwards, who is making the decisions and how the WordPress community can get involved in shaping WordPress&rsquo; future through endeavours like Anne&rsquo;s Outreach Program.</p>\n\n\n\n<p>It&rsquo;s a very timely episode. Many of the areas discussed will be landing in WordPress soon.</p>\n\n\n\n<p>If any of the points raised here resonate with you, be sure to leave a comment below.</p>\n\n\n\n<h2 class=\"is-style-default\">Useful links.</h2>\n\n\n\n<p>Full Site Editing is moving fast. Since the recording of this episode, there&rsquo;s been some movement. To get the latest information and learn more, see the following links:</p>\n\n\n\n<p><a rel=\"noreferrer noopener\" href=\"https://make.wordpress.org/test/handbook/full-site-editing-outreach-experiment/\" target=\"_blank\">Full Site Editing Outreach Program</a></p>\n\n\n\n<p><a href=\"https://www.youtube.com/watch?v=aPPzATDkHzg\" target=\"_blank\" rel=\"noreferrer noopener\">Full Site Editing for WordPress Overview</a></p>\n\n\n\n<p><a rel=\"noreferrer noopener\" href=\"https://make.wordpress.org/core/2021/04/15/full-site-editing-go-no-go-april-14-2021/\" target=\"_blank\">Full Site Editing Go/No Go | April 14, 2021</a></p>\n\n\n\n<p><a rel=\"noreferrer noopener\" href=\"https://make.wordpress.org/core/2021/04/20/full-site-editing-go-no-go-next-steps/\" target=\"_blank\">Full Site Editing Go/No Go: Next steps</a></p>\n\n\nTranscript<div><div class=\"chat-transcript\"><div class=\"chat-stanza chat-row chat-speaker-1\"><div class=\"chat-author chat-author-nathanwrigley vcard\"><cite class=\"fn\">Nathan Wrigley</cite> [00:00:00]</div> <div class=\"chat-text\"><p>Welcome to the second edition of the Jukebox podcast from WP Tavern. My name is Nathan Wrigley. Our aim here is to create a podcast and transcript for people who are interested in WordPress and the WordPress community. We&rsquo;re going to create one episode each month, for the time being, but that might change in the future.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-1\"> <div class=\"chat-text\"><p>We&rsquo;d love to hear your feedback about the podcast. Perhaps there&rsquo;s a subject that you&rsquo;d like us to feature, a person who you think would make a great guest or anything else that comes to mind. We&rsquo;re very open to suggestions so long as it&rsquo;s to do with WordPress and the wider WordPress community. You can do that by going to WP Tavern dot com forward slash contact forward slash jukebox. And there you&rsquo;ll find a contact form for you to complete. Once again, WP Tavern dot com forward slash contact forward slash jukebox, and thanks in advance if you reach out.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-1\"> <div class=\"chat-text\"><p>Okay, so the podcast today features Anne McCarthy. Anne is a developer relations wrangler for Automattic. She focuses on the wordpress.org space and is leading the full site editing outreach program. Full site editing is an endeavor to make it easier to manage how your WordPress website works. It&rsquo;s hoped that tasks, which once required a fairly technical understanding of the WordPress code will become available to all. Creating headers and footers, deciding what information to pull from the database and where it should be displayed.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-1\"> <div class=\"chat-text\"><p>These will become part of the block editor interface. Complexity replaced by simplicity, or at least that&rsquo;s the goal. This, as you might imagine, is not an easy task. Now that WordPress is pushing beyond 40% of the web, there&rsquo;s a lot to consider, and that&rsquo;s what Anne is doing. She&rsquo;s part of the team, trying to work out how this might look, how it should work and when it will be ready.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-1\"> <div class=\"chat-text\"><p>We start off with an introduction from Anne and how she became involved with WordPress and the full site editing initiative in particular. Then the discussion moves to an explanation of what full site editing hopes to achieve, which areas of a website are intended to be made available with full site editing.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-1\"> <div class=\"chat-text\"><p>We then get into the specific details of what constraints the project faces, and there are many points to consider. Backwards compatibility, accessibility, and how commercial and free plugins feed into the project roadmap. Towards the end of the podcast, we get into the process of how full site editing is moving forwards, who is making the decisions and how the WordPress community can get involved in shaping WordPress&rsquo;s future through endeavors like Anne&rsquo;s outreach program.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-1\"> <div class=\"chat-text\"><p>It&rsquo;s a very timely episode. Many of the areas discussed will be landing in WordPress soon. If any of the points raised here resonate with you, be sure to head over and find the post at wptavern dot com forward slash podcast, and leave a comment there. And so without further delay, I bring you Anne McCarthy.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-1\"> <div class=\"chat-text\"><p>I am here with Anne McCarthy, Anne welcome to the podcast.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"><div class=\"chat-author chat-author-annemccarthy vcard\"><cite class=\"fn\">Anne McCarthy</cite> [00:03:55]</div> <div class=\"chat-text\"><p>Thank you so much for having me.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-1\"><div class=\"chat-author chat-author-nathanwrigley vcard\"><cite class=\"fn\">Nathan Wrigley</cite> [00:03:57]</div> <div class=\"chat-text\"><p>You&rsquo;re very, very welcome. Now it&rsquo;s a regular question, I often ask them at the beginning of such podcasts, but I think it&rsquo;s important that we lay the foundations of who you are and how you&rsquo;ve come to be on the podcast.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-1\"> <div class=\"chat-text\"><p>Would you mind giving us a little bit of backstory about how it is that you came to be on this podcast today? What&rsquo;s your relationship with WordPress and perhaps tell us what the role is that you have currently?</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"><div class=\"chat-author chat-author-annemccarthy vcard\"><cite class=\"fn\">Anne McCarthy</cite> [00:04:20]</div> <div class=\"chat-text\"><p>Great question. It&rsquo;s hard to succinctly sum up who I am, but I&rsquo;ll give it a try. I first got started with WordPress in 2011 as a freshmen in college, and I was using blogger for many years before that to get out all my feelings on the internet as a millennial does.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>And eventually, it turned into three years working at the university and their ITS department, which led me eventually to finding out about Automattic. In 2014, I joined them as a happiness engineer and very recently, almost exactly a year ago, switched into a developer relations wrangler role focused on the wordpress dot org community. And currently part of why I&rsquo;m here today is cause I&rsquo;m spearheading the full site outreach program. So I&rsquo;m here to talk about that and talk about full site editing and all the fun stuff that&rsquo;s happening. Cause I know it&rsquo;s a lot to keep up with.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-1\"><div class=\"chat-author chat-author-nathanwrigley vcard\"><cite class=\"fn\">Nathan Wrigley</cite> [00:05:08]</div> <div class=\"chat-text\"><p>Yeah, there is a lot to keep up with, but it is a really interesting episode.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-1\"> <div class=\"chat-text\"><p>There&rsquo;s an awful lot to say when we&rsquo;re recording this, in the month of April 2021, this episode will probably air shortly after we record it, and there&rsquo;s an awful lot that has been going on, but there&rsquo;s an awful lot to happen during the course of the rest of this year. And we know that there&rsquo;s a lot of change coming.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-1\"> <div class=\"chat-text\"><p>First of all, just rewinding the clock. Would you just like to try and sum up what the ultimate ambition of the full site editing project is? I know that there may be things about that roadmap which change things you wish had been included that probably won&rsquo;t get included, but just sum it up. What is the full intention of the project?</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"><div class=\"chat-author chat-author-annemccarthy vcard\"><cite class=\"fn\">Anne McCarthy</cite> [00:05:48]</div> <div class=\"chat-text\"><p>That&rsquo;s a great question. I would simply say it&rsquo;s to empower users more and bring WordPress to the future. There&rsquo;s a reason these projects are taking so long. It really is about planting seeds for decades to come. And it&rsquo;s something that Matt, the co-founder I really admire in him as he thinks about those decades.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>And so this is a part of that push into using blocks as a paradigm into empowering users, more and bringing WordPress to the future.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-1\"><div class=\"chat-author chat-author-nathanwrigley vcard\"><cite class=\"fn\">Nathan Wrigley</cite> [00:06:10]</div> <div class=\"chat-text\"><p>Okay. So it&rsquo;s all about creating websites with blocks. What kind of areas is it getting into? What is it going to empower us to do? What things in the future will we be able to do inside the block editor?</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"><div class=\"chat-author chat-author-annemccarthy vcard\"><cite class=\"fn\">Anne McCarthy</cite> [00:06:24]</div> <div class=\"chat-text\"><p>Yeah, so everything you can edit any part of a global style on your site. So if you want to have every font color, be one thing, you can quickly change it. Even by block, you&rsquo;ll be able to change things by block, which is really exciting to have a global point of view of your site, and to be able to actually customize it to your liking unlocks things.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>There was recently a test that we did around, the 404 page. Normally that&rsquo;s something that a theme author decides. And you&rsquo;re locked into it, and if you want to change it, you have to go digging through the code. With full site editing, you can actually go straight ahead and customize it to your liking, make it real fun, make it really clever and make it really serious.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>Like you can do whatever you want with that. So a lot of template editing that normally you wouldn&rsquo;t have access to. So even editing, like if you land on your blog page, you can actually adjust how that looks, what shows up, what doesn&rsquo;t, in a really powerful way. I try and talk about the tangible aspects of it, but there&rsquo;s also a lot underneath the hood.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>So there&rsquo;s a lot of design tools for theme authors as well. That there&rsquo;ll be able to hook into that ideally will make it much easier to create themes and to focus more on the aesthetics and the experience rather than on coding up the basics. So there&rsquo;s a lot that I think across the board, whether you&rsquo;re a user or a theme developer or a plugin author, there&rsquo;s a lot to be excited about in the future.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-1\"><div class=\"chat-author chat-author-nathanwrigley vcard\"><cite class=\"fn\">Nathan Wrigley</cite> [00:07:34]</div> <div class=\"chat-text\"><p>One of the things that keeps coming on my radar is the comparison between what we&rsquo;ll call page builders, these plugins, or perhaps it&rsquo;s a theme we&rsquo;ve seen lots of commercial and free products available in the WordPress community, which enables you to achieve many of the goals that the full site editing hopes to achieve. So templates for this templates for that. Headers, footers, you can have global color palettes and all of the things, and it can be done within their interface. I guess the thing about those products is they are created by a team of developers and they are released presumably when they&rsquo;re mature and they&rsquo;re ready to go and the company believe that it&rsquo;s now suitable and people will purchase it or use it and deploy it. Now you&rsquo;ve got a very different set of constraints that you have to work within. And I think highlighting what those constraints are, would be really useful to give people some context as to why it isn&rsquo;t where some of these other solutions might be, because you&rsquo;ve got many, many things to be thinking about in the background. So if we just get into that, maybe one thing at a time, do you want to just rattle off a list of things that you&rsquo;ve got to be concerned about that perhaps we didn&rsquo;t know you needed to be concerned about.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"><div class=\"chat-author chat-author-annemccarthy vcard\"><cite class=\"fn\">Anne McCarthy</cite> [00:08:48]</div> <div class=\"chat-text\"><p>Yeah. I&rsquo;ll start with the most obvious ones, which is we&rsquo;re building things so that other people can build upon it, including page builders. So I think that&rsquo;s something that often gets overlooked. Like some of our audience members are these page builders. So it&rsquo;s an interesting dynamic there because it really is about that foundational level. Anyway, 40%, the internet, just the diversity of ways that people use WordPress, whether it&rsquo;s multi-site or what have you, there&rsquo;s a lot to consider.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>Then you add in internationalization, which is part of like future phase four. Accessibility is a huge issue. Something that really needs to be thought about including backwards compatibility, and that&rsquo;s another. A lot of page builders could easily say, hey, update to this version after this, x Y and Z will no longer be supported. Doing that with 40% of the internet is huge.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>Just recently actually, I did some outreach because in 5.2, which is many releases ago, some smaller APIs were deprecated. We&rsquo;re finally removing them from the Gutenberg plugin. And there were still three plugin authors who were using these APIs, and I reached out to them, let them know and made sure they were aware that this was coming, but that&rsquo;s something that a page builder is not building the same APIs that are going to be used across the internet in the same way.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>So there&rsquo;s a lot of just scale that I think has to be thought of, which is partly why things get pulled from releases until they&rsquo;re ready. But it&rsquo;s also why sometimes we have to include things in releases in order to get feedback in order to, hear from people what needs to be improved and what we haven&rsquo;t thought of, because inherently you can&rsquo;t talk to 40% of the internet at once.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>You just can&rsquo;t. So part of that is that dance of, hey, this is coming up, hey, this is what&rsquo;s new. And seeing how 40% response. What did we miss and how can we do better next time? And the way I think of it as it&rsquo;s this nice chance with every single release of thanks for making me better. Thanks for making the web better.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>And when the feedback comes in, that&rsquo;s what it is. Whereas I think page builders and site builders have a unique position where they might have a very large user base, but it&rsquo;s not going to be 40% of the internet. You know, there&rsquo;s just a huge difference there.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-1\"><div class=\"chat-author chat-author-nathanwrigley vcard\"><cite class=\"fn\">Nathan Wrigley</cite> [00:10:42]</div> <div class=\"chat-text\"><p>So some of the constraints that you mentioned there were the audience size, 40% of the internet, you&rsquo;ve got to be mindful of the fact that they are going to expect things to break as little as possible.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-1\"> <div class=\"chat-text\"><p>You&rsquo;ve got accessibility and so on. And there were probably two or three other things that you mentioned there as well. In real terms, how does this constrain the development? How do these factors slow you down? Do they have a material impact in the amount of time it takes you to do things because you have to ask for more consultation or you have to receive feedback from various people before you can get the green light to push that and move onto the next thing.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"><div class=\"chat-author chat-author-annemccarthy vcard\"><cite class=\"fn\">Anne McCarthy</cite> [00:11:18]</div> <div class=\"chat-text\"><p>What you described is very, very accurate. I&rsquo;ll give a specific example. So the widgets editor, which is bringing blocks to the widgets editor. Originally, it was slated for 5.5. I&rsquo;m pretty sure. And it&rsquo;s gotten pulled from 5.5 from 5.6. Wasn&rsquo;t even considered for 5.7 and is now hopefully going to be slated for 5.8.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>And a big part of this was originally, it was just going to be a separate editor, separate from the customizer and with feedback, it became very clear, customizer is a key interaction that we need to prioritize. How do we bring blocks to the customizer, which is a whole unique experience to think about.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>And this is where the 40% of the internet comes into play, right? Because we understand that you&rsquo;re releasing new things, that&rsquo;ll cascade to new people. But what about the person who&rsquo;s had a site for five years? What benefits can we bring to them? Not just brand new users who are going to be using WordPress for the first time, because the majority of the users are people who have been using WordPress and who have trusted the community and the people building WordPress, with their site, with their, who knows what is their story, their business.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>So there&rsquo;s a level of thought that has to go into play with that, and I think part of it is why Gutenberg, the plugin does bi-weekly releases. And I think there&rsquo;s about 300,000 active installs, which is a much smaller compared to the 40% of the internet. And it allows us to test things out, have experiments, go do outreach, like the outreach program I&rsquo;m running, get the feedback that we need, reach out to specific plugin authors. And in the case of the widgets editor, it became clear with each release, it just wasn&rsquo;t ready. It wasn&rsquo;t in the place that it needed to be. It wasn&rsquo;t as stable as it needed to be. It wasn&rsquo;t refined, it wasn&rsquo;t intuitive enough.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>And in many ways, one of the things that slowed us down was wanting to have it in the customizer, which I think is a huge win. It&rsquo;s a main interaction that people are used to. It&rsquo;s something that people trust. So how can we go where people trust and extend that and provide an experience that they can also in the future trust and have actually unlock more things because when you&rsquo;re able to use blocks in the customizer, you&rsquo;re now able to add way more stuff than you would be able to and do way more things than you&rsquo;d be able to when it was just the customizer, which is pretty exciting. So it&rsquo;s both like trying to get user trust, but then also providing value at the same time and going to areas that people feel familiar with and slowly incrementally having stepping stones towards this eventual idea of full site editing, where everything is through a block paradigm, and you&rsquo;re able to extend your site, however you want.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-1\"><div class=\"chat-author chat-author-nathanwrigley vcard\"><cite class=\"fn\">Nathan Wrigley</cite> [00:13:35]</div> <div class=\"chat-text\"><p>Do you ever get feedback from people who use these tools? That sort of question I&rsquo;m trying to frame is something along the lines of. How do you cope with people who wish that it were already something that their current tool can do? Take the example of a commercial page builder. There&rsquo;s several, you could pick the names of, and they&rsquo;ve got this tool and they&rsquo;re quite happy with it. And it does all of the things that they would wish to achieve. And then they come over and they look at the project that you&rsquo;re involved with, the full site editing, and they see a real difference. They see that this tool over here, which I&rsquo;m familiar with that works. I&rsquo;m very happy with it and it works and it does all these things that you are, you&rsquo;re still trying to put together. How do you bridge the gap between what their expectations are and what you&rsquo;re trying to build? Do you have conversations with people? In fact, you even download some of these commercial products and check them out and see what it is that people get excited about, about them.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"><div class=\"chat-author chat-author-annemccarthy vcard\"><cite class=\"fn\">Anne McCarthy</cite> [00:14:33]</div> <div class=\"chat-text\"><p>I definitely check them out. I actually love, love, love hearing about new plugins because I do, I actually test full siting every single day. I have been, it&rsquo;s been a challenge of mine like last couple of weeks, but I do also love when people flag things and say, hey, this new page builder or this new plugin provides a really interesting experience.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>One of the recent ones, I actually went back and checked out was the Iceberg plugin that simplifies the Gutenberg editor. And I recently checked that out again cause I was actually talking to someone in a completely different, it was a developer relations, a Slack community, and I have an alert word set up, anytime someone says, WordPress, I love doing that&rsquo;s my favorite little hack, life hack for everyone just joined a bunch of communities and then set up alert words. Yeah. He was just like, oh, man, this editor sucks. I don&rsquo;t know what to do with it. I immediately reached out to him and said, hey, no pressure. If you&rsquo;re game to talk about this, I&rsquo;d love to hear your concerns are what features are missing or what has you blocked? And I ended up sharing the Iceberg plugin with him and then went back through and tried it out again. And I bring this up because I think something to be said is that, the hope is that WordPress can provide common tools so that people, for example, aren&rsquo;t locked into one single page builder.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>Like you can move around, and I get the rush to say man, I want to use the core system, but right now I&rsquo;m relying on this page builder, and we&rsquo;re frustrated with that too. There is a sense of urgency and Matias and Josepha touched on that in a WP Briefing podcast very recently that there&rsquo;s this urgency of getting features out to people now, because we know that it will benefit them.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>And I think that as a really exciting position to be in. I know where we&rsquo;re coming&hellip; It&rsquo;s going to come, I promise, hang in in there. Which I think is a neat space rather than this impatience or hesitancy, which I also think happens, but I do seek out feedback like that, and I do enjoy talking to people whenever they explicitly have a bad experience. And one of the best questions that I ask is, what features about this page builder do you really like, what would you want to see in the core experience. And then from there, I can be honest with them and say, oh yeah, we&rsquo;re working on that. That&rsquo;s going to be like, here are a couple of Github issues that you might be interested in that this is the design. This is whatever it is. But then on the flip side, There is also going to be a role that plugins have to play into the future. Same with the Gutenberg editor right now, and the core editor right now with Iceberg, for example, like where it simplifies the editor.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>I imagine in the future with full site editing, there will be both plugins that really open up the options in the settings, and I also can imagine there&rsquo;ll be plugins that really simplify things and make it really easy for certain users to use it and people can pick and choose and customize as they&rsquo;d like, same to what we see with plugins now, anyway. And the biggest thing I often say to people whenever they talk about page builders, I&rsquo;m like, that&rsquo;s fine, if you&rsquo;re not ready to switch, that&rsquo;s totally fine. But at the end of the day, when you&rsquo;re starting with new client or you&rsquo;re starting a new site, or you&rsquo;re redoing your site at some point, you&rsquo;re going to have to learn something new, and it&rsquo;s better to learn the sure thing. Doesn&rsquo;t mean you only have to learn this your thing. I can imagine a world where people have these like hybrid experiences for some time, but the hope is that we can provide common tools so that people are not locked into one single page builder. Ideally the page builder is actually build alongside full site editing and the editor tools that we have. And then from there, people can customize to their liking either having more options show up or having less, and I do love hearing, what do you want? What&rsquo;s missing? Cause it helps sharpen our thinking, and oftentimes I hear about things that I would never think of. That&rsquo;s the beauty of having 40% of the internet is it&rsquo;s like, whoa, I never thought about that. You&rsquo;re right. That is a really interesting use case.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>Like someone recently a good example with the custom 404 test, as part of the outreach program, we had people build fun, custom 404 pages and someone reached out and said, well right now, it&rsquo;d be really awesome to have different templates depending upon how the person landed on the 404, having some level of customization of what you present.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>So maybe you have four different 404 templates and it cycles through them. They were like, is this possible? I would want to put a feature request in. And it was pretty easy for me to say, you know what? That probably will be done by a plugin. So, that&rsquo;s a great idea. That&rsquo;s a really interesting use case, and I do think that&rsquo;s something that&rsquo;s desired, but this is also where plugins will still play a role. And being able to tell people that, so that expectations are in line as much as possible, I think is really important. There are going to be aspects that will not be covered by the site editor and that&rsquo;s good.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-1\"><div class=\"chat-author chat-author-nathanwrigley vcard\"><cite class=\"fn\">Nathan Wrigley</cite> [00:18:39]</div> <div class=\"chat-text\"><p>Commercial page builders if you like, the process which I often see is they&rsquo;ll release a statement out into their email list or what have you, and they&rsquo;ll describe the features that they have been working on that have now been released and so on. And so in many cases you don&rsquo;t really know what is happening unless you probably take great interest in their team and what have you. So I&rsquo;m curious to know what is the actual process that is going on in the background that iterates your project, the full site editing project. How did the little leaps forward get made? Who is involved? How can people get involved? How can they find out what it is that you&rsquo;re working on currently? And ways in which they can help you. And there&rsquo;s a lot in that question, so probably the first thing I&rsquo;ll just rewind a little bit and say, could we just concentrate on how the full site editing, the team that&rsquo;s behind that, how does it actually work? What is it that you do? How do you communicate with each other? How do you ensure that things are being built that people want to have in.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"><div class=\"chat-author chat-author-annemccarthy vcard\"><cite class=\"fn\">Anne McCarthy</cite> [00:19:38]</div> <div class=\"chat-text\"><p>Yeah, that&rsquo;s a great question. To start, I would say Matias is kind of, I think Josepha described him as the spark behind Gutenberg, and I really love that title, so I&rsquo;m going to use it, reuse it. He is the project architect. So imagining multiple steps ahead, thinking about where we need to go, thinking about truly the infrastructure of what&rsquo;s being built, APIs, is design tools, all that sort of stuff. And really thinking about based on many, many, many years of experience in the WordPress community, what do we know for sure that people need? And then from there, a lot of it is just this back and forth with the community, releasing stuff, doing calls for testing. The outreach program is a big part of that. So getting feedback from the outreach program, but one of the things that I recently came up that I am working on doing a better job of communicating is the outreach program is bringing in feedback, but that feedback and the high level, top feedback items are likely going to be different than what are the top issues to solve for full site editing if that makes sense. So there&rsquo;s the feedback there&rsquo;s actually using the tool, and then there are, these are the things that have to be solved and sometimes there&rsquo;s overlap where sometimes some of the feedback becomes a top issue. But not all the time. And that&rsquo;s partly because the MVPs is a work in progress.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>And as those things get clear, for example, I think after April is gonna be a jam packed month, but once there&rsquo;s that decision point that go no go date, there will be a time where the full site editing outreach program can start switching into a more narrowed experience of testing. And I&rsquo;m really excited for that, where it&rsquo;s okay, here&rsquo;s the MVP. Here&rsquo;s what we&rsquo;re thinking for 5.8 which are two separate goals, by the way, there&rsquo;s like building MVP, and then there&rsquo;s, what&rsquo;s going to go in 5.8 and I think that&rsquo;s important to keep in mind as well. And yeah, one of the biggest ways that we get feedback and figure out what needs to be done next, especially now that we&rsquo;re in a more refinement period is through the outreach program is through people filing feature requests and just doing as much testing as possible. Ideally this is also where a theme authors start exploring what it&rsquo;s like to build block-based themes and give feedback on that experience. So, yeah, there&rsquo;s a lot of ways that the feature development goes on. I will say a lot of the work happens in Github and then every, probably I think, a two month cadence, there&rsquo;s some high-level posts about full site editing, whether it&rsquo;s about a specific release or just like a check-in post, or if it&rsquo;s about FSE and themes. There have been various posts over the last six months and I expect to see a lot more in the coming months leading up to 5.8 so that people are aware and they don&rsquo;t have to pay attention to the day to day with Github. Another really good post to keep an eye out on is the what&rsquo;s next post. And that&rsquo;s posted each month and kind of defines, this is what the team is working on next.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>And a lot of that does come down to, what issues of have come up in testing, what issues does Matias think are high priority to solve? What else is remaining in the MVP that&rsquo;s been discovered previously? And one thing that I think is really easy to miss with full site editing, and it almost feels weird to just say. This monolithic full site editing when actually it&rsquo;s this really diverse set of projects, and each is further along than others.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>So there&rsquo;s this very interesting battle that goes on in my mind, whenever I talk about full site editing, cause what I really want to do is talk about a specific piece of full site editing, but that also can get too granular in a way that can be really confusing. But it&rsquo;s something I like to mention where if you try out the experience and one part seems really good and one part you&rsquo;re like what&rsquo;s happening here, that&rsquo;s on purpose. Because at the end of the day, I don&rsquo;t expect the entire experience to go into 5.8. I expect certain things to fit in and for there to be a drip campaign, probably through even the 6.0 release, who knows, but definitely through the 5.9.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-1\"><div class=\"chat-author chat-author-nathanwrigley vcard\"><cite class=\"fn\">Nathan Wrigley</cite> [00:23:02]</div> <div class=\"chat-text\"><p>Let&rsquo;s say somebody is listening to this and they&rsquo;ve got no experience contributing to any software project, and they&rsquo;re interested, they like the idea of full site editing and they&rsquo;ve got a few things they&rsquo;d like to get off their chest and they want to be of some help. What are the most effective things that can help to push the project forward right now? That could be an answer as to which website to go to, and get involved in, or it could be, well, actually, no, we need help about this specific thing right now over the next month or two, you can take that in any way you like.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"><div class=\"chat-author chat-author-annemccarthy vcard\"><cite class=\"fn\">Anne McCarthy</cite> [00:23:35]</div> <div class=\"chat-text\"><p>I mean the simplest answer that I would love to see is people joining the Core Editor meeting. If you can. If you can&rsquo;t reading the notes and starting there, which you can see them posted on make.wordpress.org backslash core, there&rsquo;s actually a tag for the Core Editor meeting. But I would start there, and I say that partially because we&rsquo;re in a pandemic. Most places in the world, you can&rsquo;t meet up in person. So getting connected with the people behind this work before you step into Github, before you step into anything else, I think is really important. There are humans doing this work. There are humans who are listening, who are caring, who are staying up late, thinking about problems. So join the meetings if you can, if you can&rsquo;t asynchronous contributions are very welcome. So if you can comment on the post with a question and have it answered, but I want to start there with the human element, especially right now. So my answer, you&rsquo;re listening to this many years in the future, hopefully we&rsquo;re beyond this, but for now I really want to connect people with other people. And then from there, start as simple as just testing, get a test site up, try things out. There&rsquo;s another make site, which is where we communicate in the project, make.wordpress.org backslash test. That&rsquo;s where I post a lot of the stuff around this outreach program. So if you just want dip your toes in, that&rsquo;s a great place to start. It walks you through, there&rsquo;s instructions on how to set up everything, what to use what to pay attention to, how to actually go through the call for testing. It&rsquo;s very purposely constrained right now, so that it makes it easy for people to jump in. But if you&rsquo;re more advanced, I would just say, start scrolling th through Github. Look at different labels. There&rsquo;s a really good label that I check regularly, the overview label. So if you want to get a sense of the top issues, or I guess the summarized issues, the overview label is my jam. I love going through that and seeing what&rsquo;s new and also just seeing the status of things. It&rsquo;s a really great way to dig into the project, but not too deeply. And if you&rsquo;re someone who&rsquo;s been around WordPress for awhile I would say starting to, try to create a block plugin or build a block based theme.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>We&rsquo;re going to need to see the community in the future, really adopt these things and starting early while things are almost refined, I think is super helpful because it helps us define them in a place that there&rsquo;s early enough for things to shift. Getting that feedback is pretty key so that we are creating tools that you can actually use, because the whole point is this is all being built, so other people can use it. Other people can&rsquo;t use it, and we don&rsquo;t know that. That&rsquo;s a problem and it&rsquo;s hugely helpful and valuable to do that.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-1\"><div class=\"chat-author chat-author-nathanwrigley vcard\"><cite class=\"fn\">Nathan Wrigley</cite> [00:25:48]</div> <div class=\"chat-text\"><p>You highlight the fact that you obviously need help with the things that you just described. All those technical areas. If I was to be listening to this and I am a more casual user of WordPress, I use it to create blog posts and I&rsquo;m good at writing, but I&rsquo;m not really into the code, and that side of things is of no interest to me, are there avenues that would still be open to me to assist with this?</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"><div class=\"chat-author chat-author-annemccarthy vcard\"><cite class=\"fn\">Anne McCarthy</cite> [00:26:09]</div> <div class=\"chat-text\"><p>Yeah, I would actually say the testing should be pretty basic enough that you can dig into it. I&rsquo;m saying this as the person who writes the test, I purposely try to make them very contained, so anyone can jump in and if they want to spend five minutes, ten minutes, that&rsquo;s great. You don&rsquo;t need to spend hours on this. Some people do, some people really like to go deep with it, but the whole point is that it&rsquo;s something that anyone can jump into.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>And even if a call for testing is passed, it&rsquo;s still great to go back through previous calls for testing and I actually have videos as part of the calls for testing so that you can see me walk through it. So if you get stuck, if you&rsquo;re reading my instructions and you&rsquo;re like, what is this person saying?</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>You can watch the video and watch me go through it. And even just watching that and giving feedback and saying, hey, this is really weird, or, I really like when my page builder does this , do you all have plans for that? And another thing that&rsquo;s actually coming up that I plan to do that anyone can participate in is another big call for questions. So there was a lull in testing. I was waiting for a new Gutenberg release and a couple of months ago, I did just, anyone could ask anything about full siding and I would find the answer for it. And we ended up getting, I think it was 46, 47 questions, which was fantastic. And I grouped them into different chunks, answered them, all, publish them, pass them on to the documentation team, the marketing team, but that allowed people where if they don&rsquo;t have time to test, but they&rsquo;re nervous about it, or they&rsquo;re curious about it or they&rsquo;re excited for it, or they&rsquo;re impatient, whatever their emotional state is. Ask any question and I&rsquo;ll answer it. And I plan to do those, another round of that definitely in the future. Probably at the end of April, and if that&rsquo;s of interest paying attention to the, make.wordpress.org backslash test as the best place to pay attention or in Slack there&rsquo;s in wordpress.org Slack, there&rsquo;s a FSE hyphen outreach hyphen experiment that you can join, and you can just sit back and listen to me update you as I go, but that&rsquo;s also a great way is asking questions, sharing concerns. That is actually hugely helpful. It sets the foundation for documentation. It helps the people building it know what the points of confusion are likely to be. So yeah, if you just want to ask a question by all means that&rsquo;s a very easy pathway to jump into.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-1\"><div class=\"chat-author chat-author-nathanwrigley vcard\"><cite class=\"fn\">Nathan Wrigley</cite> [00:28:10]</div> <div class=\"chat-text\"><p>Thank you. I&rsquo;ll be sure to take those links off you before we finally hang up the call today and we&rsquo;ll make sure they make it into the show notes. Do you feel that you have. Enough people giving you feedback to justify the decisions that you made. I mean obviously in any software development, the answer I guess, is going to be, well, it would be great to have more. Do you feel that there is enough people assisting you at the moment so that you can be confident in the direction that you&rsquo;re going? We&rsquo;re doing this, we&rsquo;ve got some feedback, but curious whether or not, if we have more feedback, we&rsquo;d go in a different direction or not.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"><div class=\"chat-author chat-author-annemccarthy vcard\"><cite class=\"fn\">Anne McCarthy</cite> [00:28:44]</div> <div class=\"chat-text\"><p>That&rsquo;s a great question. I am always someone who wants more people involved. I don&rsquo;t think I&rsquo;ll ever be happy with the numbers. Right now we have between 10 to 15 people with each test. And one of the things I actually recently consulted some of our design team with an Automattic, and I asked, I said, with usability testing what kind of numbers do you look for when you all did this with 5.0 what did you look for how many people? And a lot of times I got feedback saying, Oh my gosh. Anne, five to 10 people, it was great. You can calm down. It&rsquo;s fine. I&rsquo;m like, no, no, no. I need like 50, you know, it is this weird sense of no, no, I want more and more and more. And I can tell you, I don&rsquo;t think we can ever get too much feedback, especially if it&rsquo;s relevant and its&hellip; I mean, obviously there&rsquo;s like irrelevant feedback where it&rsquo;s make WordPress like Facebook. I mean, whatever, it could be something outrageous. That&rsquo;s not terribly helpful, you know? But imagine if we just got completely inundated with feedback in the outreach program, that would be amazing. My goal, my personal goal that I&rsquo;ve been trying to say outwardly in hopes it encourages people is I would love to have 20 to 25, really dedicated, diverse testers, each release and not each release each call for testing. That&rsquo;s my ideal. And the reason I mentioned engaged testers is because I want people who are along for the journey a little bit,ideally. Obviously I think it&rsquo;s great if people jump in and out, I think there&rsquo;s something to be said for really new perspectives and I love when people comment saying, hey, this is my first time using full site editing and here are my thoughts. That&rsquo;s excellent. But the idea of quality over quantity, I think is really key, for this phase of testing. I think when things actually get merged into core and certain aspects get merged into core, that&rsquo;s when things can open up and be a bit more, having 2000 people give feedback, but yeah, I don&rsquo;t think there&rsquo;s ever enough testing and honestly, I do worry about that.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>And it&rsquo;s something, one of the things I&rsquo;ve been very intentional about is reaching out to the accessibility team to try and get people to help give feedback so that we&rsquo;re thinking about accessibility needs and reaching out to folks in the polyglot space so that we have translations of these posts so that people can participate. I only speak English and I had been in countries where all of a sudden, you see something in English and it&rsquo;s like this it&rsquo;s like such a relief to have a menu in English. Like, Oh yes, this is so nice. And I want that outreach to happen because I think sometimes the software development I&rsquo;ve seen this like arrogance of, oh well, we&rsquo;ll just be doing the work and if they&rsquo;re curious, they can come to us. And I actually think this is one of those situations where we need to go to them. And that&rsquo;s what the outreach program is all about is meeting people where they are doing the outreach. Bringing people along with us and learning from them as we go. Part education, part feedback loop, and part, hey, here&rsquo;s a really easy way to get involved and walk you through what&rsquo;s coming.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>I would love to see more engagement from folks who are non-English speaking. We&rsquo;ve had Italian, Spanish and Japanese translations very consistently. I&rsquo;m so grateful for the people who&rsquo;ve done that. I think it&rsquo;s just, oh, I&rsquo;m so bad at languages that it just amazes me. I also think everything looks better in a different language. So it&rsquo;s neat to see my own words translated, which is a kind of a wild experience that I never thought would happen, but I&rsquo;d love to see more engagement. In those polyglot and local spaces, because the last thing you want is for all of a sudden it to land and only a specific audience benefits or sees this or understands it or knows what&rsquo;s coming, right. There&rsquo;s a big responsibility for 40% of the internet. And I&rsquo;ll never forget the day that Matt at a State of the Word said that non-English downloads passed English downloads. And so when you think about that 40% I think a lot of us English speaking, Western world think of a certain type of person, but really it&rsquo;s much more expansive than that.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>So I&rsquo;ve been really hammering the polyglot space as much as I can, as much as volunteer time people can give to translate those posts and to try and get feedback. But it&rsquo;s something that I&rsquo;d love to see more of.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-1\"><div class=\"chat-author chat-author-nathanwrigley vcard\"><cite class=\"fn\">Nathan Wrigley</cite> [00:32:22]</div> <div class=\"chat-text\"><p>I&rsquo;m curious actually, if you&rsquo;ve got a really nice concrete example of an instance where somebody&rsquo;s feedback turned into something actual. It was realized off the back of a piece of feedback, which you passed on to the team, and somebody reached out said, I would like this. And you were able to provide this, Hearing those stories. Ah, it is possible.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"><div class=\"chat-author chat-author-annemccarthy vcard\"><cite class=\"fn\">Anne McCarthy</cite> [00:32:44]</div> <div class=\"chat-text\"><p>Yeah, I can think of a really specific example that I was actually thinking about this morning when I was making coffee. A blind developer, I got connected with her through actually posting in a different Slack community. So, you would not believe how many Slack communities I&rsquo;m a part of and how much I try to drop links and engage people in different spaces. And I got connected because someone said, hey, I have a friend she&rsquo;s blind, she&rsquo;s a WordPress developer, and she cannot use full site editing. And I was like, whoa, tell me everything.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>How can I get in touch, and got in touch, her name&rsquo;s Taylor. And she very kindly jumped on for about 30 minutes. We recorded the session so that I could pass along the feedback. She just walked me through the experience of both using of using two different screenreader tools. And. It was fascinating. It was awesome.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>We found so many bugs. It was one of those things where I think the biggest, the most jarring one that I keep thinking about that I actually want to see if we can get some development in on ASAP, is that the save button, and the saving process for full site editing right now is pretty non-intuitive, it&rsquo;s a little bit clunky and it&rsquo;s something that&rsquo;s come up with sighted folks as well. What is the saving process, how does it work? But for people who rely on screen readers, it&rsquo;s really impossible to save. Like you basically have to search for the phrase save in order to find the save button because there isn&rsquo;t an aria label. And so that&rsquo;s a big one that came up and on top of that in just the session, I worked with her another piece of feedback that came up with the columns block.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>So if you have columns and you&rsquo;re imagining, let&rsquo;s say two columns and you are using a screen reader, it doesn&rsquo;t tell you which column is which. So all of you here just announces column, column it doesn&rsquo;t say like column one or column two or right column or left column. There&rsquo;s no identifier for how to navigate.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>And so that&rsquo;s actually, there&rsquo;s a PR right now that&rsquo;s underway. I actually just filed it for the accessibility team last week to see if someone could review and someone already stepped in to offer some thoughts to fix that, to actually announce, I think they&rsquo;re going with like column one and column two and column three rather than right and left due to internationalization. And that&rsquo;s going to be a huge improvement because right now Taylor was just like, columns block is so confusing. This is almost useless. Another one is the spacer block. I&rsquo;d love to hear. If you use a screen reader, I&rsquo;d love to hear your experiences with the spacer block, because that&rsquo;s a really confusing block for people I&rsquo;m relying on screen readers.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>And I opened up an issue for that, and we&rsquo;ve had some discussion back and forth about improvements that need to be made there as well. So those are some of the, and I can tell you, there&rsquo;s probably about. I think six issues I opened just from that 30 minute conversation. Some are like a work in progress, but this was very recent and something I keep thinking about, especially as we start to refine things and decision points come up because we don&rsquo;t want to release something that has such blatant problems with it.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-1\"><div class=\"chat-author chat-author-nathanwrigley vcard\"><cite class=\"fn\">Nathan Wrigley</cite> [00:35:24]</div> <div class=\"chat-text\"><p>It marks a very big change for WordPress this last couple of years have been really extraordinarily different, the experience that we&rsquo;re all going through, but in particular, around full site editing How do you calm people&rsquo;s fears that things in the future are going to be going in the direction that they wish it to go in. So, as an example, let&rsquo;s imagine that we&rsquo;re a theme developer. We may be getting concerned that themes are going to become a thing of the past that the livelihood that we&rsquo;ve created for ourselves is going to disappear before our eyes. People concerned that the way that they&rsquo;re working with at the moment, the way that they&rsquo;ve taught their clients to work, this is how WordPress works, and this is how you can manage your website for yourself, and so on. What do you say to people? What is the golden light on the hill? The thing that you draw attention to, to say, look, all of this will be worth it. How do you keep people focused on the positives and not worrying about all the different things that are going on left right and center?</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"><div class=\"chat-author chat-author-annemccarthy vcard\"><cite class=\"fn\">Anne McCarthy</cite> [00:36:20]</div> <div class=\"chat-text\"><p>Yeah. The biggest thing I say is there&rsquo;s a reason that the last milestone is gradual adoption. And one of the things that I also love to talk about is the fact that full site editing is a bunch of sub projects actually gives us the flexibility to ship reliable items rather than shipping it all at once.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>Yes, they&rsquo;re interdependent. Yes. And some cases they rely on each other and there needs to be probably a certain order or approach to releasing things. But by having so many different tools that provide value. It actually gives us the ability to step back and say, okay, what&rsquo;s ready. And that should be a big relief to people.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>It&rsquo;s not like there&rsquo;s going to be this on-off switch full savings here is taking over your site. Good luck. That&rsquo;s not going to happen. Gradual adoption is the game plan. It is the final step. And I imagine right now, a gradual adoption as a milestone is not fleshed out. But I imagine, especially you have to 5.8, that will become a much more fleshed out milestone in the same way you see other milestones, I think, Josepha has talked a lot about this, and I really love the way she basically says we want to fulfill the WordPress promise. We want to keep that trust and we want to release things in the best state possible while at the same time, recognizing that there&rsquo;s this urgency to offer tools that people are just lacking right now, at some point, we need to get those out in front of people and to provide value and making that determination is super tricky. But the good news is like I was saying earlier, we have that flexibility built into the fact that these are all sub projects and that many of them can be shipped independently.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>And for theme authors, Themes are going to be so important in a full siding world. And one of the things I am so excited about is that there&rsquo;s going to be a ton of what they&rsquo;re calling. I .. the idea of these hybrid universal themes that can work with for example, template editing.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>So going and being able to edit like your single page template, your homepage template, or your 404 template. You could have a theme, that&rsquo;s a classic theme or traditional theme, whatever you want to call it. And you could use template editing. You could update your theme to hook into the tools have been made to allow for template editing.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>Same thing goes for global styles. You could just use one part of the full site editing machine, so to speak and all the projects and slowly integrate, more and more, as you want to, like theme authors will have a lot of control of what they opt into and what they opt out of. And for us building it, it&rsquo;s on us to make it so desirable to opt in.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>Right, and that&rsquo;s where the gradual adoption, so many pathways are going to be created. And I&rsquo;m actually really excited to see people move from this framework of anxiety to looking out across the space and going, hmm, what can I use? What is it that I hear from people all the time that I can integrate into this and moving into an exciting creative space rather than thinking, hh, I got to get caught up, I&rsquo;m behind. This is so bad. Like that kind of feeling, which I hear from a lot of people was like, I don&rsquo;t have time to get up to speed. And the ideal is that we&rsquo;re actually providing tools that save you time and add value. And that makes me really excited. I fully understand the fear. I fully understand the fear.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>I don&rsquo;t say that lightly. As someone who is thinking about like how it&rsquo;s going to land in 40% of the internet and who every single day is talking to people who are giving feedback about, what&rsquo;s not quite there, I don&rsquo;t spend a lot of time talking to people who are just like, oh, I&rsquo;m so excited about this.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>People don&rsquo;t go out of their way to tell you that you often hear from the people who are upset or something&rsquo;s missing or promises broken or whatever it is. And it&rsquo;s something I think about a lot. And I understand why there is panic there, especially with livelihood in the situation that we&rsquo;re in.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>And I have a lot of empathy for that. And I think in the future, and one of the things that I think you&rsquo;ll hear from leadership and you&rsquo;ve, everyone&rsquo;s priority heard this from leadership. It&rsquo;s just that we are purposely moving slowly and things get pooled for a reason. And it is to fulfill that promise and to think about backwards compatibility, but at the same time, balancing that with wanting to provide value for users and empowering users, especially in a day and age, when a lot of tech companies are actually taking away a lot of the power, whether it&rsquo;s in the form of privacy or what have you.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>I think open source and the way WordPress is working is actually trying to resist that and really focus on giving everything we can to the user, to build the site that they want and to have the experience that they want. And also to free them up, to focus on what the site actually gives them, whether it&rsquo;s a business or platform.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>I think that&rsquo;s the part that makes me&hellip; that hopefully makes other people excited. And that makes me really excited.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-1\"><div class=\"chat-author chat-author-nathanwrigley vcard\"><cite class=\"fn\">Nathan Wrigley</cite> [00:40:26]</div> <div class=\"chat-text\"><p>Speaking to that. You&rsquo;ve done an incredible job answering all of my questions and you&rsquo;ve obviously got to wear the Automattic hat during a discussion like this. I&rsquo;m curious if we cast away the Automattic hat just for a moment and we ask you personally, what in the next six months to a year, what&rsquo;s the one single thing, the thing that you are most excited about, the thing that you most want to see happen, the thing that gets you personally switched on about the project.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"><div class=\"chat-author chat-author-annemccarthy vcard\"><cite class=\"fn\">Anne McCarthy</cite> [00:40:54]</div> <div class=\"chat-text\"><p>It&rsquo;s a great question. I would have to say block patterns, because we&rsquo;re talking about all these tools and features and things coming along, but ultimately as a user, it&rsquo;s like, what can I do, and what can I do quickly? And block patterns will really be the glue that ties together all these projects. You can insert a block pattern, manipulate it as you want to. And when you&rsquo;re manipulating it, you probably won&rsquo;t be thinking about the fact that you might be using global styles or that the block pattern is relying on block styles or whatever it is.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>But the power of that. And the promise of that, I think is just such a high impact, such a high impact feature that will really be like a cherry on top. And we&rsquo;ll bring together a lot of the things that we&rsquo;re talking about in a way that will be really tangible. And especially in this world of, you know, we&rsquo;re not able to gather in person we&rsquo;re not able to have those moments.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>I think having something that is easy to understand almost the point of being, so intuitive that it&rsquo;s like, why didn&rsquo;t we do this years ago? That&rsquo;s what I want the feeling to be. And that&rsquo;s when I had someone in design, tell me this one time. And it always stuck with me as like the best ideas are the ones where you&rsquo;re like, well, no, duh, like, yeah, of course.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>And that&rsquo;s what block patterns I think you&rsquo;re going to feel like, and I think it&rsquo;s really gonna fulfill a lot of these things and bring a lot of these things that we&rsquo;re talking about together in a way that will be really fun to play with. And also people will be able to submit to the block pattern directory, ideally in the future, similar to the block plugin directory.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"><p>So personally, I&rsquo;m most excited to see the marriage between block patterns and full site editing along with these hybrid themes.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-1\"><div class=\"chat-author chat-author-nathanwrigley vcard\"><cite class=\"fn\">Nathan Wrigley</cite> [00:42:24]</div> <div class=\"chat-text\"><p>I know there will be no metric to judge this, but it would be fascinating in a couple of years time. Were we able to measure it, to see just how much of humanity&rsquo;s time has been saved by something like block patterns, the fact that you don&rsquo;t have to do things over and over again. Yeah. I completely understand why you&rsquo;ve selected that one. We have gone through so many questions. If somebody at the end of this, has been listening to this and thinks I would like to help, but I want to contact Anne directly before I go to these Slack channels and Github repos and so on. How might somebody get in touch with you should they wish to?</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"><div class=\"chat-author chat-author-annemccarthy vcard\"><cite class=\"fn\">Anne McCarthy</cite> [00:43:01]</div> <div class=\"chat-text\"><p>I would say go to my website. I am a weird millennial without social media. I jump on and off of Instagram. That&rsquo;s my one holdout. I love photography too much, but yeah, my website is nomad.blog and I have a contact page and I truly welcome to hear from anyone seriously. All I ask, and this is on my website as well. I like to do pen pal. Kind of writing back and forth. I think we don&rsquo;t rely, I think email, I&rsquo;ve read too many books about this, but I think email has ruined our ability to relax and unwind, and I refuse to opt into this always responding world. So as long as you&rsquo;re patient with me, and if I get a bunch of emails, as long as you&rsquo;re patient with me responding, I promise I will respond genuinely with a lot of thought. I do not like to do short, low quality responses. So if you&rsquo;re willing to engage there, that would be awesome to hear from you. I&rsquo;m also an annezazu in WordPress dot org Slack, if you end up joining there as well.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-1\"><div class=\"chat-author chat-author-nathanwrigley vcard\"><cite class=\"fn\">Nathan Wrigley</cite> [00:43:53]</div> <div class=\"chat-text\"><p>Well, thank you very much. I appreciate all of the hard work that you and everybody connected in the project is doing. It&rsquo;s making great inroads into our editing experience in WordPress. Greatly appreciated. Thanks for coming on the podcast.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"><div class=\"chat-author chat-author-annemccarthy vcard\"><cite class=\"fn\">Anne McCarthy</cite> [00:44:06]</div> <div class=\"chat-text\"><p>Of course. Thank you so much for having me.</p>\n</div></div><div class=\"chat-stanza chat-row chat-speaker-2\"> <div class=\"chat-text\"></div></div></div></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 21 Apr 2021 14:00:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Nathan Wrigley\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:12;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"HeroPress: You Don’t Have To Want What Everyone Else Wants\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://heropress.com/?post_type=heropress-essays&p=3539\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:166:\"https://heropress.com/essays/you-dont-have-to-want-what-everyone-else-wants/#utm_source=rss&utm_medium=rss&utm_campaign=you-dont-have-to-want-what-everyone-else-wants\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6216:\"<img width=\"1024\" height=\"512\" src=\"https://s20094.pcdn.co/wp-content/uploads/2021/04/042121-min.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: You don\'t have to want what everyone else wants.\" /><p>I launched a WordPress-based business sometime around 2013. Starting a business is a goal for a lot of people, but it was never something I intentionally set out to do. I was in university at the time and blogging about books &#8212; just doing something I loved. But then I had an idea for a WordPress plugin that would make book bloggers’ lives easier. Although I did decide to sell it instead of releasing it for free, making a lot of money was never my goal. I thought maybe I’d make $500 overall if I was lucky. But three months in I’d already made nearly $1500 and those numbers would only continue to climb.</p>\n<p>By the time I graduated university, this little business of mine was already fully paying my bills. I went straight from graduation to running a full time business. Over the next few years, I sold pre-made plugins, built custom plugins, launched custom websites for authors and bloggers, dipped into the managed WordPress hosting space, and created WordPress e-courses. Objectively, business was great.</p>\n<blockquote><p>But by 2016, I was waking up every morning and thinking, <i>“What the hell am I doing?”</i></p></blockquote>\n<p>The more my business grew, the more I was afraid it was about to crash and burn.</p>\n<p>The more I diversified, the less confident I felt about what I was doing.</p>\n<p>Above everything, I was <i>tired</i>.</p>\n<h2>Turns out, I’m not a businesswoman</h2>\n<p>I was tired of selling, of marketing, of advertising, of promoting. I was tired of asking myself <i>“will this sell?”</i> before I started a new project. I missed creating just for the sheer fun and joy of it, which was how my very first plugin even came to be. I just wanted to build cool things and quietly release them into the wild. I love to <i>create</i> but I don’t love to <i>sell</i>.</p>\n<p>Perhaps I could have hired people to help me with the aspects of my business I didn’t enjoy, but although business was going well for a one person show, I didn’t feel like it was going well enough to hire more people and confidently feel like I could pay their salary every month. And the thought of having that responsibility just brought me even more anxiety.</p>\n<blockquote><p>I felt stuck and, honestly, ashamed of how I felt about my business. Was I being ungrateful?</p></blockquote>\n<p>I had this incredible thing going for me &#8212; I was paying all my bills, working flexible hours (and from home!), and calling all the shots. This is what other people aspire to have, and I had it! I was embarrassed to admit that maybe I didn’t like it anymore. I didn’t want to be in charge. I didn’t want to have the entire success or failure of a business resting on my shoulders.</p>\n<p>I remember looking through job listings trying to imagine myself doing something else &#8212; anything else. But another problem I had was that running my own business straight out of school had spoiled me. I didn’t want to be in charge, but I also still wanted to work from home. I still wanted flexible hours. I didn’t want to sacrifice my 3pm gym session. I still wanted a certain degree of freedom in what I did each day. I wanted all the benefits of running my own business, without any of the downsides I had come to dread.</p>\n<h2>A well timed opportunity</h2>\n<p>In late 2016, sheer luck and good timing brought me to Sandhills Development. I was offered a job at a company that could amazingly check every box on my dream list. I could work from home, set my own hours, have a weird schedule, still make the gym at 3pm, and most importantly: my job would just be <i>one</i> thing. I could focus on building really cool stuff, and nothing else. I wouldn’t have to think about marketing or sales or profit.</p>\n<p>It’s been over four years since then and I’m now the lead developer for Easy Digital Downloads &#8212; the plugin I originally used to sell my first product. So I think things are going pretty well! My old business does still exist, but in a very low key way. I still work on and maintain the products out of love and passion for them, but with zero pressure to actually make sales or be successful.</p>\n<blockquote><p>The biggest difference is the boundaries I’ve been able to create in my life.</p></blockquote>\n<p>When running my own business, I didn’t work all day long, but I did tend to think about work all the time. Growth was always on my mind because making that happen was purely up to me. I was putting so much pressure on myself to do well, that I couldn’t stop thinking about it. But now, work goes away as soon as I decide I’m done for the day. I don’t think about it after hours. There’s comfort in the fact that although I care about the company, it’s not <i>my</i> company, and the success &#8212; or failure &#8212; of the company isn’t purely up to me; if something does go wrong when I’m gone, there’s someone else capable of handling it.</p>\n<h2>What works for someone else may not work for you</h2>\n<p>Some people would consider it a downgrade to go from business owner to employee, but it was absolutely the right move for me. Running your own business is often glamorized, but not everyone is cut out to wear all the hats that a one-person business requires, and not everyone has the drive to grow a business into something larger. And that’s okay. At the time, it was immensely hard for me to admit that out loud because I thought it would make me a failure.</p>\n<p>There is no “one size fits all” dream job and I learned that being the owner of a company is not mine. If what you’re doing now isn’t working then there’s absolutely no shame in bowing out, even if you’re currently living someone else’s dream.</p>\n<p>The post <a rel=\"nofollow\" href=\"https://heropress.com/essays/you-dont-have-to-want-what-everyone-else-wants/\">You Don&#8217;t Have To Want What Everyone Else Wants</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 21 Apr 2021 08:27:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Ashley Gibson\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:13;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"WPTavern: WordPress Contributors Propose Blocking FLoC in Core\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=115316\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:169:\"https://wptavern.com/wordpress-contributors-propose-blocking-floc-in-core?utm_source=rss&utm_medium=rss&utm_campaign=wordpress-contributors-propose-blocking-floc-in-core\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7493:\"<p>WordPress contributors are <a href=\"https://make.wordpress.org/core/2021/04/18/proposal-treat-floc-as-a-security-concern/\">proposing</a> the project take an active position on Google&rsquo;s Federated Learning of Cohorts (FLoC). This particular mechanism is Google&rsquo;s alternative to third-party cookies that doesn&rsquo;t require collecting users&rsquo; browsing history. The <a href=\"https://github.com/WICG/floc\">GitHub repository for FLoC</a> explains how Google will group people together and label them using machine learning:  </p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>We plan to explore ways in which a browser can group together people with similar browsing habits, so that ad tech companies can observe the habits of large groups instead of the activity of individuals. Ad targeting could then be partly based on what group the person falls into.</p><p>Browsers would need a way to form clusters that are both useful and private: Useful by collecting people with similar enough interests and producing labels suitable for machine learning, and private by forming large clusters that don&rsquo;t reveal information that&rsquo;s too personal, when the clusters are created, or when they are used.</p></blockquote>\n\n\n\n<p>WordPress contributors are proposing blocking FLoC in core, citing the Electronic Frontier Foundation&rsquo;s article titled &ldquo;<a href=\"https://www.eff.org/deeplinks/2021/03/googles-floc-terrible-idea\">Google&rsquo;s FLoC Is a Terrible Idea</a>.&rdquo; </p>\n\n\n\n<p>&ldquo;WordPress powers approximately 41% of the web &ndash; and this community can help combat racism, sexism, anti-LGBTQ+ discrimination and discrimination against those with mental illness with a few lines of code,&rdquo; the proposal states.</p>\n\n\n\n<p>One of the more controversial aspects of the original proposal was that it was spectacularly miscategorized as a security concern, clouding the issue at hand. It identified FLoC as a security issue for the sake of getting it into core on a more aggressive timeline, which was outlined as follows:</p>\n\n\n\n<ol><li>Include the&nbsp;patch&nbsp;the next&nbsp;minor release, rather than waiting for the next&nbsp;major release;</li><li>Back-port the patch to previous versions of WordPress.</li></ol>\n\n\n\n<p>The proposal was later revised to clarify that treating FLoC like a security concern referenced only the timeline of accelerated development and back-porting.</p>\n\n\n\n<p>Although blocking FLoC seemed to have wide support in the comments on the post, the premature suggestion of treating it as a security concern weakened the proposal. </p>\n\n\n\n<p>WordPress core committer Ryan McCue said that while he is in agreement with the overall sentiment, rolling it out like a security updatet would abuse users&rsquo; trust in automatic updates:</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>The implicit contract with users for security autoupdates is that they are used in order to protect the user from their site (data or codebase) being compromised imminently. This isn&rsquo;t the case with FLoC, and may in some cases damage the site&rsquo;s behaviour.</p><p>More concretely: as someone who operates a hosting service where we keep users up-to-date with security patches, this changes our approach substantially. Right now, we can confidently roll out security updates trusting the update has minimal effect outside of purely security changes, but breaching that barrier means that now scrutiny needs to be applied to every security update in order to avoid rolling out potentially breaking changes to our clients.</p><p>That erosion of trust would ultimately hurt WP&rsquo;s users.</p></blockquote>\n\n\n\n<p>The proposal has started an active discussion with more than 100 commenters, including participation from the Chrome DevRel team who added more context on the current status of the experiment.</p>\n\n\n\n<p>&ldquo;It&rsquo;s also worth noting that because this is an origin trial it means that nothing is set in stone &mdash; this is an experiment to gather feedback,&rdquo; Chrome Developer lead Rowan Merewood said. &ldquo;The API may change, the opt-out mechanism may change, the eligibility criteria may change. Any code changes relating to an origin trial should also be treated as temporary and experimental.&rdquo;</p>\n\n\n\n<p>Those who were critical of the proposal consider FLoC a personal privacy issue that is not WordPress&rsquo; problem to solve. Others believe a proposal to block FLoC is reactionary at this point, since Google has not yet finalized its FLoC experiment. </p>\n\n\n\n<p>&ldquo;Thinking about users&hellip; i.e. the readers of a&nbsp;blog, they deserve choice,&rdquo; Andy Beard commented.</p>\n\n\n\n<p>&ldquo;They can choose which browser they use.<br />&ldquo;They can choose settings in the browser.<br />&ldquo;They can choose some overall options on a Google privacy site.<br />&ldquo;They can install a multitude of plugins.</p>\n\n\n\n<p>&ldquo;Alternatively, if WordPress blocks FLoC by default, that actually removes a choice &ndash; the choice of a user to see more relevant advertising.&rdquo;</p>\n\n\n\n<p>Several participants in the discussion were opposed to FLoC but also not supportive of a WordPress core effort to block it.</p>\n\n\n\n<p>&ldquo;While I&rsquo;m not pro-FLoC (and won&rsquo;t have my browsers using it) I certainly wouldn&rsquo;t expect a website to make the choice to opt-out for me, and I can&rsquo;t see why the majority of WordPress users and people visiting WordPress sites would expect that either,&rdquo; WordPress lead developer Dion Hulse commented.</p>\n\n\n\n<p>&ldquo;Perhaps more importantly, would WordPress also continue to opt out all future browser protocols too? Once you delve into blocking one, you&rsquo;ve either got to block them all, or you&rsquo;re playing favorites.&rdquo;</p>\n\n\n\n<p>Mika Epstein, who also expressed her opinion as anti-FLoC, said she is not in support of backporting a block due to the practicality of such an effort.</p>\n\n\n\n<p>&ldquo;If the decision is made to include this, I would support it as a&nbsp;<em>filterable privacy&nbsp;enhancement</em>&nbsp;only, not security,&rdquo; Epstein said.</p>\n\n\n\n<p>&ldquo;That said, I do&nbsp;<strong>not</strong>&nbsp;support backporting with the precedent that we did not&nbsp;backport&nbsp;the GDPR exporting stuff. Having it exist as a&nbsp;plugin&nbsp;(there are three already) is sufficient for those who are on older versions. The undue strain of increased backporting needs to be minimized, not maximized in my opinion.&rdquo;</p>\n\n\n\n<p>Others commented on the harm to independent publishers whose main source of revenue is often advertising.</p>\n\n\n\n<p>WordPress lead developer Helen Hou-Sandi requested the proposal be re-written to clarify the differences between disabling FLoC on a site level vs the browser level as a consumer. She also discouraged referring to the matter as a security issue and recommended the proposal&rsquo;s proponents justify the work required to backport the block. Hou-Sandi recommended opening a trac ticket as a more appropriate avenue of discussion regarding core implementation and inclusion, as contributors have not yet reached a consensus.</p>\n\n\n\n<p>The topic will be up for discussion at the next core developers&rsquo; chat on Wednesday, April 21, 2021. Representatives from the Chrome team <a href=\"https://make.wordpress.org/core/2021/04/20/dev-chat-agenda-for-april-21-2021/#comment-41165\">will also be attending</a> to answer any questions about FLoC.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 21 Apr 2021 05:17:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:14;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:114:\"WPTavern: Patchstack Whitepaper: 582 WordPress Security Issues Found in 2020, Over 96% From Third-Party Extensions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=115396\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:267:\"https://wptavern.com/patchstack-whitepaper-582-wordpress-security-issues-found-in-2020-over-96-from-third-party-extensions?utm_source=rss&utm_medium=rss&utm_campaign=patchstack-whitepaper-582-wordpress-security-issues-found-in-2020-over-96-from-third-party-extensions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4647:\"<p class=\"has-drop-cap\">Patchstack, which recently <a href=\"https://wptavern.com/webarx-rebrands-to-patchstack-combines-services-to-focus-on-wordpress-plugin-and-theme-security\">rebranded from WebARX</a>, released its <a href=\"https://patchstack.com/wordpress-security-2020/\">2020 security whitepaper</a>. The report identified a total of 582 security vulnerabilities. However, only 22 of the issues came from WordPress itself. Third-party plugins and themes accounted for the remaining 96.22%.</p>\n\n\n\n<p>&ldquo;These are all security issues disclosed by the Patchstack internal research team, Patchstack Red Team community, by third-party security vendors, and by other independent security researchers,&rdquo; said Oliver Sild, Patchstack founder and CEO. &ldquo;So it includes all public information about vulnerabilities.&rdquo;</p>\n\n\n\n<p>Patchstack is a security company that focuses on third-party extensions to WordPress. Its <a href=\"https://patchstack.com/database/\">vulnerability database</a> is public and available for anyone to view.</p>\n\n\n\n<p>In the second quarter of 2020, Patchstack surveyed nearly 400 web developers, freelancers, and agencies about web security. &ldquo;Over 70% responded that they were increasingly worried about the security of their website, and the top reason was &lsquo;vulnerabilities in third-party plugins,\'&rdquo; according to the whitepaper. &ldquo;About 45% of respondents saw an increase in attacks on websites they were managing, and 25% had to deal with a hacked website in the month prior to participating in the survey.&rdquo;</p>\n\n\n\n<p>Ranking at the top, 211 of the vulnerabilities found were Cross-Site Scripting (XSS) issues, 36.2% of the total.</p>\n\n\n\n<p>&ldquo;XSS in WordPress plugins almost always happens because user input data is directly printed onto the screen without any sanitization,&rdquo; said Sild. &ldquo;<code>esc_html</code> would be used to convert certain characters to their HTML entities, so it will be literally printed onto the screen. Then you also have <code>esc_attr</code> for user input variables, which need to be used in HTML attributes. There are many good resources published by <a href=\"https://owasp.org/\">OWASP</a> (The Open Web Application Security Project), such as the &lsquo;Secure Coding Practices.\'&rdquo;</p>\n\n\n\n<p>Injection vulnerabilities ranked second with 70 unique cases. It was followed by 38 Cross-Site Request Forgery (CSRF) issues and 29 instances of sensitive data exposure.</p>\n\n\n\n<p>&ldquo;The vulnerabilities found in plugins and themes tend to be more severe than those found in WordPress core,&rdquo; wrote Sild in the whitepaper. &ldquo;What makes matters worse is that many popular plugins have millions of active installations, and the numbers aren&rsquo;t pretty when we look at how many websites are affected by the vulnerable plugins.&rdquo;</p>\n\n\n\n<p>The total number of active and vulnerable theme and plugin installations throughout the year was 70 million. <a href=\"https://central.wordcamp.org/about/\">According to WordCamp Central</a>, WordPress is installed on 75 million websites. Many sites likely had more than one vulnerable plugin during 2020 rather than 70 million individual sites being at risk.</p>\n\n\n\n<p>Patchstack surveyed 50,000 websites and found that they averaged 23 active plugins at a time. About four on each site were outdated with an upgrade available, which often increases the risk of a security issue.</p>\n\n\n\n<p>WordPress plugins accounted for 478 vulnerabilities in the report. However, there were only 82 unique theme issues. While themes are typically far more limited in scope, they can do anything a plugin can do with a few exceptions.</p>\n\n\n\n<p>It is not surprising to see that number lower for themes. However, one has to wonder if the <a href=\"https://wptavern.com/upcoming-changes-and-steps-for-an-overhauled-wordpress-theme-review-system\">ongoing plan</a> to loosen the WordPress.org theme directory review guidelines will factor into that in the coming year or two. Currently, reviewers for the official directory perform extensive code checks that may be more likely to catch issues before themes arrive in users&rsquo; hands. If the trade-off is better automation, it could also mean stricter coding standards and fewer security issues that human reviewers might miss.</p>\n\n\n\n<p>&ldquo;Vulnerabilities from third-party code remain as one of the biggest threats to websites build on WordPress,&rdquo; concluded Sild in the report. &ldquo;We already see a growth in unique vulnerabilities reported in the WordPress plugins and themes comparing 2020 with the beginning of 2021.&rdquo;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 20 Apr 2021 20:47:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:15;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"WPTavern: Recreating the Classic Wedding WordPress Theme Homepage With the Block Editor\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=115369\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:219:\"https://wptavern.com/recreating-the-classic-wedding-wordpress-theme-homepage-with-the-block-editor?utm_source=rss&utm_medium=rss&utm_campaign=recreating-the-classic-wedding-wordpress-theme-homepage-with-the-block-editor\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6345:\"<p class=\"has-drop-cap\">I simply do not understand it. For at least the better part of a decade, theme authors have asked for the tools to create more complex layouts with WordPress. They have asked for the ability to allow end-users to more easily recreate their demos. They have wanted methods to bypass the &ldquo;restrictive&rdquo; theme review guidelines.</p>\n\n\n\n<p>Over the past couple of years, WordPress has consistently delivered features that theme authors have asked for. Yet, themes that use them are few and far between.</p>\n\n\n\n<p>During my weekly perusal of the latest themes to land in the directory, a new <a href=\"https://wordpress.org/themes/classic-wedding/\">wedding theme</a> caught my attention last week. Of course, I downloaded, installed, and activated it only to find that I had no idea how to recreate the homepage design. There were no instructions. The theme options in the customizer seemed to make little sense. Nearly all of the decorative images were non-existent in the theme folder.</p>\n\n\n\n<p><em>Did I need to upgrade to the pro version to get what was in the screenshot?</em> There seems to be a plan for such a version, but it is not available yet.</p>\n\n\n\n<img />Classic Wedding theme screenshot.\n\n\n\n<p>I am no rookie, but I was stuck. I liked the simplicity of the design. However, I could not imagine setting up a wedding site with this theme. From a user&rsquo;s standpoint, it should not take more than a few mouse clicks. After that point, it should only be a matter of customizing the content.</p>\n\n\n\n<p>I recognize that there is still a sort of love/hate divide for the block editor in the <em>inner</em> WordPress community. However, theme authors are not doing any favors for the overall WordPress user base by not taking advantage of the tools available.</p>\n\n\n\n<p>So, I recreated the Classic Wedding theme homepage from scratch. Using the block editor. With a theme that supports it.</p>\n\n\n\n<h2>Creating a Wedding Homepage</h2>\n\n\n\n<p class=\"has-drop-cap\">My goal was simple. There was no demo to work from, and all I had to go on was an 800-pixel wide screenshot from the <a href=\"https://www.theclassictemplates.com/themes/free-wedding-wordpress-theme/\">theme page</a> on the author&rsquo;s site. Like I <a href=\"https://wptavern.com/recreating-the-music-artist-wordpress-theme-homepage-with-the-block-editor\">recreated the Music Artist homepage</a> several weeks ago, I wanted to do the same for Classic Wedding. With a couple of exceptions, which could have been handled by the theme, I was successful.</p>\n\n\n\n<p>Because Classic Wedding does not support the block editor itself, I could not recreate its homepage via the block editor while using the theme. It was not happening &mdash; I tried. I knew that the <a href=\"https://wptavern.com/eksell-portfolio-theme-now-available-in-wordpress-themes-directory\">Eksell WordPress theme</a> had a &ldquo;canvas&rdquo; template that allowed users to edit the entire page, so it was an easy choice.</p>\n\n\n\n<p>I also loaded the Kaushan Script and Lora fonts to more closely match the original theme. This was unnecessary for the experiment, but I wanted my recreation to at least look somewhat similar.</p>\n\n\n\n<p>I immediately knew that I would have one hurdle to overcome. The theme used an image that overlapped both the section above and below it. This requires margin controls, particularly the ability to add negative margins. Unfortunately, this is a missing component of the block editor today. It does not mean that theme authors cannot do it with custom block styles or patterns. It simply means that end-users are unable to control it from the interface.</p>\n\n\n\n<p>Because I did not want to spend my time writing the code for this, I leaned on my usual safety net, the <a href=\"https://wordpress.org/plugins/editorplus/\">Editor Plus</a> plugin. While it can be a little clunky sometimes and feel like overkill, it does include those missing features like margin options.</p>\n\n\n\n<img />Adding negative margin to an image.\n\n\n\n<p>I used <code>px</code> units there because it was easy. In a real-world project, <code>%</code> or <code>rem</code> would have been better. But I was just doing a quick proof-of-concept.</p>\n\n\n\n<p>Everything else in the content area was straightforward. I needed a Cover block with an Image, Heading, Paragraph, and Button tucked inside. I needed a Group block as a container for Image, Heading, and Paragraphs in the bottom section.</p>\n\n\n\n<p>Because the theme did not package its decorative images &mdash; <em>again, how would users recreate the homepage without them?</em> &mdash; I opted for a simple striped SVG background instead of the flowers in the original. Since I already had Editor Plus installed, I added an SVG from <a href=\"https://heroicons.com/\">Hero Icons</a> as the main background.</p>\n\n\n\n<img />Wedding page content recreation.\n\n\n\n<p>My original idea was to recreate the &ldquo;content&rdquo; part of the homepage only. However, it was a bit boring on its own. Therefore, I transformed everything into a Columns block and added the sidebar. I recreated the primary elements using the Image, Heading, Paragraph, and Navigation blocks. Then, I added a Social Icons block for fun.</p>\n\n\n\n<img />Full wedding homepage design.\n\n\n\n<p>I did hit one snag with the Navigation block. WordPress does not currently offer a method of centering each link in the list when using the vertical block variation. I had to write a couple of lines of CSS to make this happen. This seems like an oversight and one area where the block editor failed to meet my expectations. Of course, this could be handled on the theme side of things.</p>\n\n\n\n<p>Overall, this was a relatively simple project. However, this experiment added some complexities that were not present when I recreated the Music Artist homepage. Margin controls and vertical Navigation block alignments are must-haves. Using a third-party plugin and writing custom CSS is not ideal, and these were requirements to make this happen straight from the editor.</p>\n\n\n\n<p>All of this is possible from the theme end. Each piece of this design could have been packaged as a block pattern. The overlapping image effect would have made for a neat block style. I just wish that theme authors would start utilizing the features that are being hand-fed to them.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 19 Apr 2021 21:42:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:16;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"WPTavern: Automattic Launches Jetpack Boost: A New Performance Plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=114913\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:181:\"https://wptavern.com/automattic-launches-jetpack-boost-a-new-performance-plugin?utm_source=rss&utm_medium=rss&utm_campaign=automattic-launches-jetpack-boost-a-new-performance-plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4877:\"<p>The Jetpack team has been quietly testing a new plugin called <a href=\"https://wordpress.org/plugins/jetpack-boost/\">Jetpack Boost</a>, which addresses website owners&rsquo; performance and SEO concerns. Version 1.0 was released today, one month after the final pre-release came out in March.</p>\n\n\n\n<p>Boost is a separate plugin under the Jetpack brand and it does not require Jetpack core to work. The first iteration bundles three performance modules:</p>\n\n\n\n<ol><li><em><strong>Local Critical CSS</strong></em>&nbsp;generates optimized styles for the homepage, posts, and pages to display content faster, especially for visitors on mobile devices.</li><li><em><strong>Defer Non-Essential Javascript</strong></em>&nbsp;moves some tasks to after the page loads, so visible items load faster.</li><li><em><strong>Lazy Image Loading</strong></em>&nbsp;loads images as the visitor scrolls them into view. </li></ol>\n\n\n\n<div class=\"wp-block-image\"><img /></div>\n\n\n\n<p>Once the plugin is installed, users can toggle the modules on or off. Optimizing the site&rsquo;s CSS can be a lengthy process but it shows a progress bar and alerts you if are trying to navigate away from the page before it&rsquo;s finished. Jetpack Boost displays an initial score when it&rsquo;s first installed and will update after optimizations are put in place. </p>\n\n\n\n<p>Here&rsquo;s an example score from a relatively unoptimized simple blog with 20 active plugins:</p>\n\n\n\n<div class=\"wp-block-image\"><img /></div>\n\n\n\n<p>After installing Jetpack Boost, there was a significant improvement on scores in the dashboard. It&rsquo;s not a magic wand but it&rsquo;s a fairly user-friendly way to tackle some basic performance issues that may translate into a better visitor experience. </p>\n\n\n\n<div class=\"wp-block-image\"><img /></div>\n\n\n\n<p>Checking the before and after scores on <a href=\"https://web.dev/measure/\">web.dev</a> demonstrates a noticeable improvement on the Core Web Vitals assessment. For some websites this could mean the difference between passing or not (meaning 75% of pages on the domain pass).</p>\n\n\n\n<div class=\"wp-block-image\"><img />Before installing Jetpack Boost</div>\n\n\n\n<img />After installing Jetpack Boost\n\n\n\n<p>Automattic engineer Nauris P&#363;&#311;is, who worked on the project, said one reason the plugin was created was to help users &ldquo;get their Web Vitals up and make the web a better place.&rdquo;</p>\n\n\n\n<p>Google Search will be <a href=\"https://wptavern.com/google-search-to-add-page-experience-to-ranking-signals-in-may-2021\">adding Page Experience to ranking signals</a> in May 2021, and WordPress sites need all the help they can get. Page Experience is measured by a website&rsquo;s <a href=\"https://web.dev/vitals/#core-web-vitals\">Core Web Vitals</a>&nbsp;metrics, but these scores are not easy to improve without some technical knowledge and troubleshooting.</p>\n\n\n\n<p>Despite Jetpack already including so many different, varied features, Automattic opted to put the Boost modules in a separate plugin. </p>\n\n\n\n<p>&ldquo;We want Jetpack Boost to have a life of its own &ndash; focused on performance and make it available to everyone, including people who don&rsquo;t want to use the main Jetpack plugin,&rdquo; P&#363;&#311;is said.</p>\n\n\n\n<p>The plugin was built with the same modular structure as Jetpack core, so users can easily deactivate modules they don&rsquo;t want to use. This is helpful for ensuring compatibility with other performance or caching plugins that website owners may already be using.<br /><br />&ldquo;You&rsquo;ve probably noticed that both Jetpack and Boost have lazy loading images &ndash; it&rsquo;s the exact same module,&rdquo; P&#363;&#311;is said. &ldquo;If the user happens to have both Jetpack and Jetpack Boost active &ndash; it&rsquo;ll just use the most recent version of Lazy Loading Images.&rdquo;</p>\n\n\n\n<p>The features in version 1.0 are just the beginning of Automattic&rsquo;s plans for Jetpack Boost. The project appears to be on track to become a full-blown performance plugin that may even migrate some of Jetpack core&rsquo;s performance-related functionality.</p>\n\n\n\n<p>&ldquo;Version 1.0.0 is being released the &ldquo;<a href=\"https://ma.tt/2010/11/one-point-oh/\">one-point-oh</a>&rdquo; way,&rdquo; P&#363;&#311;is said. &ldquo;We&rsquo;re releasing as early as we can call it stable &ndash; but there&rsquo;s so much that we want to do. Starting with simple modules that package up other typical optimization techniques (like concatenation, minification, maybe even photon?) &ndash; all the way to more advanced ideas like performance tracking, intelligent performance suggestions, etc.&rdquo; </p>\n\n\n\n<p>P&#363;&#311;is said none of these ideas are set in stone and the team is open to exploring and building modules that will have the highest performance impact after getting more feedback.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 19 Apr 2021 17:37:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:17;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:100:\"Gutenberg Times: Page Template Editor for WordPress 5.8, Videos and Plugins – Weekend Edition #166\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://gutenbergtimes.com/?p=17602\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:105:\"https://gutenbergtimes.com/page-template-editor-for-wordpress-5-8-videos-and-plugins-weekend-edition-166/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:14988:\"<p>Howdy, </p>\n\n\n\n<p>Yes, it&#8217;s been a while that you received a fully curated Weekend edition. After the move it took a while to get my office operational again. We still have too many boxes to unpack, though.  </p>\n\n\n\n\n\n<p>Nevertheless, let&#8217;s catch up on Gutenberg news together! </p>\n\n\n\n<p>All the best, <br />Birgit ?</p>\n\n\n\n<h2>Gutenberg 10.4 Released (and 10.4.1) </h2>\n\n\n\n<p>The <strong><a href=\"https://gutenbergtimes.com/podcast/changelog-42-full-site-editing-scope-for-wordpress-5-8/\">Gutenberg Changelog episode 42</a></strong> is now available. <strong>Grzegorz (&#8220;Greg&#8221;) Ziolkowski </strong>and I discuss Full-site Editing Scope for WordPress 5.8, Gutenberg’s 10.4,  Gallery Block Refactor and Block-Based Theme updates.</p>\n\n\n\n<hr class=\"wp-block-separator is-style-wide\" />\n\n\n\n<p><strong>Sarah Gooding</strong> of the WP Tavern wrote about the Gutenberg 10.4 release: <a href=\"https://wptavern.com/gutenberg-10-4-introduces-block-widgets-in-the-customizer\">Gutenberg 10.4 Introduces Block Widgets in the Customizer</a></p>\n\n\n\n<hr class=\"wp-block-separator is-style-wide\" />\n\n\n\n<h2>Full-Site Editing and WordPress 5.8 </h2>\n\n\n\n<p>If you now find yourself in the position to learn more about the extent of Full-Site Editing experience, I have a real treat for you: <a href=\"https://gutenbergtimes.com/video-full-site-editing-overview-with-anne-mccarthy/\">A 30-min video Full-Site Editing Overview by</a>, Anne McCarthy, Developer Relations for the Gutenberg project. </p>\n\n\n\n<hr class=\"wp-block-separator is-style-wide\" />\n\n\n\n<p>On April 14, 2021, the Gutenberg and 5.8 release leads held a meeting, with Matias Venture giving a tour of the current state of the Phase 2 of Gutenberg development. The outcome of the meeting was a decision on Go/NoGo for component that make it into core for WordPress 5.8.</p>\n\n\n\n<p><strong>Josepha Haden Chomphosy</strong> provide in <a href=\"https://make.wordpress.org/core/2021/04/15/full-site-editing-go-no-go-april-14-2021/\">her follow-up post </a>a list of the detailed scope, the video of the meeting and a transcript of the recording. </p>\n\n\n\n<h3>The block editor scope </h3>\n\n\n\n<ul><li>Improvements from Gutenberg 9.9 to 10.7 plugin version. </li><li>Introduce 25 new blocks (Query, Site Logo, Navigation,Posts, Comments, Archives etc. ), the most valuable among them will be the Query Block. </li><li><code>theme.json</code> Mechanism for Theme builders (<a href=\"https://developer.wordpress.org/block-editor/how-to-guides/themes/theme-json/\">see developer documentation</a>)</li><li>Template Editor for Pages/Blank Template. (<a href=\"https://youtu.be/c4IFn73Nzvk?t=2859\">see demo by Marcus Kazmierczak</a>)</li><li>Widgets Screen &amp; Block widgets in Customizer.</li><li>Design tools: Duotone, Layout controls, padding, etc.</li></ul>\n\n\n\n<p>There is the caution stated in the post: <em>&#8220;Not all the above are currently ready, but there’s some level of confidence that they can be by the time of 5.8.&#8221;</em></p>\n\n\n\n<hr class=\"wp-block-separator is-style-wide\" />\n\n\n\n<p>For the <strong>Template Editor for Pages/Blank Template</strong> you can see it <a href=\"https://youtu.be/c4IFn73Nzvk?t=2859\">in action in a demo</a> by <strong>Marcus Kazmierczak</strong>, he gave at the Mega Meetup last week. </p>\n\n\n\n<hr class=\"wp-block-separator is-style-wide\" />\n\n\n\n<p><strong>Bud Kraus</strong> of JoyofWP showed us in his video, <a href=\"https://joyofwp.com/whats-the-future-of-the-wordpress-widget/\">how the Widget screen will look like in the future.</a> It does not show the Widget handling in the Customizer yet, but that is to come to WordPress 5.8. You could see a short piece of it in Matias Ventura&#8217;s demo video from the release leads meeting. It is now already available in the latest Gutenberg plugin release. </p>\n\n\n\n<hr class=\"wp-block-separator is-style-wide\" />\n\n\n\n\n<p><strong> <a href=\"https://make.wordpress.org/core/handbook/references/keeping-up-with-gutenberg-index/\" target=\"_blank\" rel=\"noreferrer noopener\">&#8220;Keeping up with Gutenberg &#8211; Index 2021&#8221;</a> </strong><br />A chronological list of the WordPress Make Blog posts from various teams involved in Gutenberg development: Design, Theme Review Team, Core Editor, Core JS, Core CSS, Test and Meta team from Jan. 2021 on. <a href=\"https://make.wordpress.org/core/handbook/references/keeping-up-with-gutenberg-index/keeping-up-with-gutenberg-index-2020/\">The index 2020 is here</a></p>\n\n\n\n\n<p><strong>Justin Tadlock</strong> summarized last week&#8217;s announcements in <strong><a href=\"https://wptavern.com/full-site-editing-is-partly-a-go-for-wordpress-5-8\">Full Site Editing Is Partly a ‘Go’ for WordPress 5.8</a></strong></p>\n\n\n\n<h2>Testing Full-Site Editing</h2>\n\n\n\n<p>As the latest Full-Site Editing Call of Testing, <strong>Anne McCarthy</strong> has a <strong><a href=\"https://make.wordpress.org/test/2021/04/14/fse-program-testing-call-5-query-quest/\">Query Quest for you.</a></strong> Again with a great set of test instruction, you are guided towards usage and various features of the Query Block and its accompanying new post blocks for title, content, comments, feature image and pagination.</p>\n\n\n\n<hr class=\"wp-block-separator is-style-wide\" />\n\n\n\n<p><strong>Justin Tadlock</strong> discussed this task a bit further in his article: <strong><a href=\"https://wptavern.com/fse-outreach-round-5-venturing-out-a-query-quest\">FSE Outreach Round #5: Venturing out a Query Quest</a>.</strong> &#8220;Testing never has to be boring. I encourage participants to grab inspiration from their lives as they venture out on their Query Quest.&#8221; he wrote. </p>\n\n\n\n<hr class=\"wp-block-separator is-style-wide\" />\n\n\n\n<p>Apropos Testing: <strong>Sarah Gooding</strong> wrote about our Gutenberg Nightly plugin to get the latest development of the block-editor in an easy to handle plugin. <strong><a href=\"https://wptavern.com/set-up-a-gutenberg-test-site-in-2-minutes-with-the-gutenberg-nightly-plugin\">Set Up a Gutenberg Test Site in 2 Minutes with the Gutenberg Nightly Plugin</a></strong>.</p>\n\n\n\n<hr class=\"wp-block-separator is-style-wide\" />\n\n\n\n\n<p><strong><a href=\"https://gutenbergtimes.com/need-a-zip-from-master/\">Need a plugin .zip from Gutenberg&#8217;s main (trunk) branch?</a></strong><br />Gutenberg Times provides daily build for testing and review. <br />Have you been using it? Hit reply and let me know.</p>\n\n\n\n<p><img alt=\"GitHub all releases\" src=\"https://img.shields.io/github/downloads/bph/gutenberg/total?style=for-the-badge\" /></p>\n\n\n\n<p></p>\n\n\n\n\n<p><strong>Anne McCarthy</strong> curated all the feedback from the fourth testing call: <a href=\"https://make.wordpress.org/test/2021/03/30/fse-program-custom-404-page-testing-summary/\"><strong>FSE Program Custom 404 Page Testing Summary</strong></a></p>\n\n\n\n<h2>Block-Based Themes</h2>\n\n\n\n<p><strong>Helen Hou-Sandi</strong> streamed on Twitch her <a href=\"https://www.twitch.tv/videos/981424705\">exploration session to create a block-based theme</a> for the Full-Site Editing.</p>\n\n\n\n<hr class=\"wp-block-separator is-style-wide\" />\n\n\n\n<p><strong>Kjell Reigstad</strong> opened an issue for <a href=\"https://github.com/WordPress/gutenberg/issues/30508\"><strong>Query Block Pattern inspirations.</strong></a> There are great examples posted that could be converted to pattern, that could be bundled with WordPress 5.8  </p>\n\n\n\n<hr class=\"wp-block-separator is-style-wide\" />\n\n\n\n<p><strong>Marcus Kazmierczak</strong> also used Twitch to stream his <a href=\"https://www.twitch.tv/mkaz7000\">Lunch &amp; Learn series on Block-based themes.</a></p>\n\n\n\n<hr class=\"wp-block-separator is-style-wide\" />\n\n\n\n<p>Keep abreast on specific Theme related development and discussions with the weekly round-up from the Themes Team. <strong>Kjell Reigstad</strong> posted this week&#8217;s edition. <a href=\"https://make.wordpress.org/themes/2021/04/16/gutenberg-themes-week-of-apr-12-2021/\"><strong>Gutenberg + Themes: Week of Apr 12, 2021</strong></a></p>\n\n\n\n<hr class=\"wp-block-separator is-style-wide\" />\n\n\n\n<p>A couple of PRs that should help with <strong>transitioning existing themes to be block-based:</strong></p>\n\n\n\n<ul><li><a href=\"https://github.com/WordPress/gutenberg/pull/30345\"><strong>Add do_block_template_part function</strong></a><br />New gutenberg_block_template_part(), gutenberg_block_header_area(), and gutenberg_block_footer_area() functions to help pull block-based template parts into existing PHP templates: </li><li><a href=\"https://github.com/WordPress/gutenberg/pull/30438\"><strong>Allow creating custom block templates in classic themes</strong></a> Allowing people to create and use block-based page template for certain pages on their site, even while using a non-block-based theme.</li></ul>\n\n\n\n<hr class=\"wp-block-separator is-style-wide\" />\n\n\n\n<p>In their latest episode of WPCafe co-hosts <strong>Mark Wilkinson</strong> and <strong>Keith Devon</strong> talked about <a href=\"https://www.youtube.com/watch?v=jAIlY3lTAos\">Building Twenty-Twenty-One with Caroline Nymark and Mel Choyce-Dwan</a>. </p>\n\n\n\n<h2>Plugins for the Block Editor</h2>\n\n\n\n<p><strong><a href=\"https://wordpress.org/plugins/gutentor/\">Gutentor</a></strong> published a collection of 70+ Blocks and layouts for Gutenberg Editor. </p>\n\n\n\n<hr class=\"wp-block-separator is-style-wide\" />\n\n\n\n<p>If you are working on your set of Blocks for the editor, <strong>Justin Tadlock</strong> has some thoughts to consider: <a href=\"https://wptavern.com/yet-another-wordpress-block-library-plugin\"><strong>Yet Another WordPress Block Library Plugin</strong></a>. He is making a well though through case to suggest more unique blocks to fill the gap to the core blocks. It seems to me that, two years of seeing block collections being acquired by big companies like Atom Blocks, Co Blocks and latest <a href=\"https://wptavern.com/ithemes-acquires-kadence-wp-plans-to-sunset-legacy-themes-in-2022\">Kadence Blocks</a>, might tempt a small developer team to come up with  another set of blocks matching a specific theme and hope for an acquisition by another big company in the space. There might be space for a few more, indeed. </p>\n\n\n\n<p>Tadlock&#8217;s longs for something new, a unique extension of core or a missing tool:</p>\n\n\n\n<ul><li><a href=\"https://wptavern.com/display-digital-sheet-music-with-the-wordpress-block-editor\">Display Digital Sheet Music With the WordPress Block Editor</a></li><li><a href=\"https://wptavern.com/block-a-saurus-embeds-a-side-scrolling-t-rex-game-via-the-block-editor\">Block-a-saurus Embeds a Side-Scrolling T-Rex Game via the Block Editor</a></li><li><a href=\"https://wptavern.com/emoji-conbini-and-the-case-for-a-block-enhancements-directory\">Emoji Conbini and the Case for a Block Enhancements Directory</a></li><li><a href=\"https://wptavern.com/insert-font-awesome-icons-into-the-block-editor-via-the-jvm-gutenberg-rich-text-icons-plugin\">Insert Font Awesome Icons Into the Block Editor via the JVM Gutenberg Rich Text Icons Plugin</a></li><li><a href=\"https://gutenbergtimes.com/writers-rejoice-iceberg-delivers-distraction-free-writing-for-wordpress/\">Writers Rejoice! Iceberg Delivers Distraction-free Writing for WordPress</a></li></ul>\n\n\n\n<hr class=\"wp-block-separator is-style-wide\" />\n\n\n\n<p><strong><a href=\"https://wordpress.org/plugins/conditional-blocks/\">Conditional Blocks</a></strong> by Morgan Hvidt allows you to create block that are displayed when certain conditions apply. We saw other plugins that offer that, like <a href=\"https://wordpress.org/plugins/block-visibility/\">Block Visibility by Nick Diego</a>. This one is a bit different. It allows you to change content depending on HTTP referrer, so if someone comes from Twitter, they could see a different message than someone coming from a Google Search or a link in a newsletter or an affiliate link. The plugin is also available as a pro version with premium features at <a href=\"https://conditionalblocks.com\">conditionalblocks.com</a>. </p>\n\n\n\n\n<p> <a href=\"https://gutenbergtimes.com/podcast/changelog-42-full-site-editing-scope-for-wordpress-5-8/\"><strong>Episode #4</strong>2 is now available</a>, with new co-host <strong>Grzegorz Ziolkowski</strong></p>\n\n\n\n<p> <strong>Subscribe to the&nbsp;<a href=\"https://gutenbergtimes.com/podcast/\">Gutenberg Changelog</a>&nbsp;podcast </strong><br />?️&nbsp;<a href=\"https://open.spotify.com/show/620NwVKQJGdTupy36zYxvg?mc_cid=4b6c9f88fe\">Spotify</a>&nbsp;|&nbsp;<a href=\"https://podcasts.google.com/feed/aHR0cHM6Ly9ndXRlbmJlcmd0aW1lcy5jb20vZmVlZC9wb2RjYXN0\">Google</a>&nbsp;|&nbsp;<a href=\"https://podcasts.apple.com/us/podcast/gutenberg-changelog/id1469294475\">iTunes</a>&nbsp;|&nbsp;<a href=\"https://pca.st/podcast/f8445ec0-7508-0137-f267-1d245fc5f9cf\">PocketCasts</a>&nbsp;|&nbsp;<a href=\"https://www.stitcher.com/show/gutenberg-changelog\">Stitcher</a>&nbsp;|<br />?️&nbsp;<a href=\"https://www.podbean.com/podcast-detail/chi7j-9904a/Gutenberg-Changelog-Podcast\">Pod Bean</a>&nbsp;|&nbsp;<a href=\"https://castbox.fm/channel/Gutenberg-Changelog-id2173375\">CastBox</a>&nbsp;|&nbsp;<a href=\"https://www.podchaser.com/podcasts/gutenberg-changelog-878239/\">Podchaser</a>&nbsp;|&nbsp;<a href=\"https://gutenbergtimes.com/feed/podcast\">RSS Feed</a>&nbsp;</p>\n\n\n\n<img />\n\n\n\n\n<h2>People and Community</h2>\n\n\n\n<p>It&#8217;s been already a year that <strong>Anne McCarthy</strong> joined the Gutenberg team as a developer relations wrangler. It has been a great pleasure meeting Anne and collaborating with her has been quite inspiring, and I learned a lot from her wisdom and her wealth of ideas. She has also become a good friend. She is som much better and being a remote friend that I ever will be. On her personal block Anne published <a href=\"https://nomad.blog/2021/04/17/one-year-in-devrel/\"><strong>One year in DevRel</strong></a></p>\n\n\n\n<p>Anne&#8217;s pioneer work with WordPress open-source project has been so successful that <a href=\"https://boards.greenhouse.io/automatticcareers/jobs/2937422\">Automattic wants to sponsor another person for developer relations.</a></p>\n\n\n\n<h2>Developing with ReactJS and Gutenberg Blocks. </h2>\n\n\n\n<p><strong>Rob Stinson</strong> wrote a tutorial on how <a href=\"https://studiopress.blog/the-ultimate-guide-to-building-custom-collections-in-genesis-blocks/\">to building custom Collections in Genesis Blocks.</a> Now Collections in this context are Layout templates, that extend existing Genesis blocks. </p>\n\n\n\n<hr class=\"wp-block-separator is-style-wide\" />\n\n\n\n<p><strong> Mark Howells-Mead </strong>uses <a href=\"https://permanenttourist.ch/2021/04/using-react-and-wordpress-to-build-an-interactive-performant-single-page-application\">ReactJS to build interactive single page applications with WordPress</a> and wrote a tutorial. It&#8217;s not at all about Blocks and Gutenberg, but it&#8217;s related to the skill set of learning ReactJS and hopefully inspired developer to gradually make the transition. </p>\n\n\n\n\n\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 18 Apr 2021 23:33:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Birgit Pauli-Haack\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:18;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WPTavern: Gutenberg 10.4 Introduces Block Widgets in the Customizer\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=115274\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:179:\"https://wptavern.com/gutenberg-10-4-introduces-block-widgets-in-the-customizer?utm_source=rss&utm_medium=rss&utm_campaign=gutenberg-10-4-introduces-block-widgets-in-the-customizer\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3021:\"<p>The latest release of the Gutenberg plugin (<a href=\"https://make.wordpress.org/core/2021/04/14/whats-new-in-gutenberg-10-4-14-april/\">10.4)</a> brings <a href=\"https://github.com/WordPress/gutenberg/issues/29285\">block widgets into the Customizer</a>. When customizing widget-enabled areas, a new block inserter icon is now available for dropping blocks into sidebars. This is the first iteration of <a href=\"https://github.com/WordPress/gutenberg/issues/26900\">block management in the Customizer</a>, tackling the technical integration for editing blocks while also taking advantage of the live preview in the Customizer.</p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n\n</div>\n\n\n\n<p>Version 10.4 includes several design updates to the&nbsp;Site Editor List View, bringing more consistency to the icon sizing and spacing, as well as&nbsp;new colors for hover, focus, and select states. The publishing UI has been updated to <a href=\"https://github.com/WordPress/gutenberg/pull/30231\">display the site icon and name</a>, adding a more personal touch to this flow while also making it more clear for full-screen or mobile users.</p>\n\n\n\n<img />Gutenberg 10.4 <a href=\"https://make.wordpress.org/core/2021/04/14/whats-new-in-gutenberg-10-4-14-april/\">release post</a>\n\n\n\n<p>More progress on site editing experiments includes the following notable updates:  </p>\n\n\n\n<ul><li>the ability to revert template customizations directly in the editor</li><li>many improvements to the Navigation block, including&nbsp;a&nbsp;<a rel=\"noreferrer noopener\" href=\"https://github.com/WordPress/gutenberg/pull/30403\" target=\"_blank\">new &ldquo;Post Format Link&rdquo; variation</a>, a&nbsp;<a rel=\"noreferrer noopener\" href=\"https://github.com/WordPress/gutenberg/pull/30281\" target=\"_blank\">clearer placeholder state</a>, and more style updates</li><li><a href=\"https://github.com/WordPress/gutenberg/pull/30521\">Better labeling</a> for differentiating &ldquo;Custom Styles&rdquo; vs global style changes in the site editor saving panel </li><li>New &ldquo;<a href=\"https://github.com/WordPress/gutenberg/pull/29839\">manage with live preview link</a>&rdquo; in the Widgets editor</li></ul>\n\n\n\n<p>The block editor still <a href=\"https://github.com/WordPress/gutenberg/issues/29976\">fails to deliver a consistent preview</a> of core blocks on the frontend in many cases. Version 10.4 brings greater parity between the editor/frontend with more consistent markup for archives, latest comments, quote, and separator blocks, with improved default padding to match the browser&rsquo;s default.  The GitHub <a href=\"https://github.com/WordPress/gutenberg/issues/29976\">issue</a> for this improvement contains a to-do list for additional blocks that need more polishing on previews, including search, paragraph, columns, embed, post title, and more.</p>\n\n\n\n<p>For a full list of all the enhancements and bug fixes, check out the <a href=\"https://make.wordpress.org/core/2021/04/14/whats-new-in-gutenberg-10-4-14-april/\">10.4 release post</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 17 Apr 2021 13:59:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:19;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"Gutenberg Times: Video: Full-Site Editing Overview with Anne McCarthy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://gutenbergtimes.com/?p=17545\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://gutenbergtimes.com/video-full-site-editing-overview-with-anne-mccarthy/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:52174:\"<p>As part of the <a href=\"https://www.youtube.com/watch?v=c4IFn73Nzvk\">Meta Meetup on April 15th 2021</a>, Anne McCarthy gave a presentation on what Full-Site Editing entails, the updated scope of WordPress 5.8, what the FSE outreach program is and what issues surfaced during the four calls for testing from the group. </p>\n\n\n\n<p>It&#8217;s a fantastic and fast-paced presentation and covers a lot of ground. It&#8217;s ideal for WordPress users that just now want to catch up on all the buzz around Full&#8211;Site Editing and learn what will come to WordPress in the 5.8 release in July 2021. </p>\n\n\n\n<p>Big Thank You to Anne for allowing us to publish the video here with the transcript. </p>\n\n\n\n<p><em>For those interested how the template editor works,  <a href=\"https://youtu.be/c4IFn73Nzvk?t=2909\">jump right in to Marcus Kasmierczak&#8217;s live demo</a> portion of the WordPress Mega Meetup recording</em></p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n<div class=\"toolbelt-video-wrapper\"></div>\n</div>\n\n\n\n<h2 id=\"0-sha\">Shared Resources</h2>\n\n\n\n<ul><li><a href=\"https://wordpress.org/about/roadmap/\">Roadmap showing phase 2</a>&nbsp;&nbsp;</li><li><a href=\"https://github.com/WordPress/gutenberg/issues/24551\">Full Site Editing Milestones</a>&nbsp;&nbsp;</li><li><a href=\"https://github.com/WordPress/gutenberg/issues/30662\">Special shoutout to the Gradual Adoption Milestone</a>&nbsp;&nbsp;</li><li><a href=\"https://make.wordpress.org/test/2021/04/14/fse-program-testing-call-5-query-quest/\">Query Quest &#8211; Call for testing the Query Block</a>&nbsp;&nbsp;</li><li><a href=\"https://make.wordpress.org/core/2021/04/15/full-site-editing-go-no-go-april-14-2021/\">Go/No go</a> &nbsp;</li><li><a href=\"https://github.com/WordPress/gutenberg/issues/29398\">Preview</a>&nbsp;&nbsp;</li><li><a href=\"https://make.wordpress.org/test/handbook/full-site-editing-outreach-experiment/\">FSE Outreach Program</a>:&nbsp;&nbsp;</li><li><a href=\"https://make.wordpress.org/core/2021/03/16/high-level-feedback-from-the-fse-program-march\">High-level feedback from the Full Site Editing Program thus far</a></li><li><a href=\"https://critterverse.blog/2021/03/23/full-site-editor-404-test/\">404 design</a></li><li><a href=\"https://www.twitch.tv/mkaz7000\">Marcus Kazmierczak Streams on Twitch</a>  </li></ul>\n\n\n\n<p><em><a href=\"https://gutenbergtimes.com/feed/#transcript\">See transcript below</a></em></p>\n\n\n\n<div class=\"ngl-articles ngl-articles-50_50 ngl-articles-frontend\">\n\n\t\n\t<!-- Begin articles display -->\n\t<div class=\"ngl-articles-wrap\">\n\t\n\t\t\t<div class=\"ngl-article ngl-article-img-left\">\n\n\t\t\t\t\n\t\t\t\t<div class=\"ngl-article-left-mobile -emogrifier-keep\"><div class=\"ngl-article-featured\"><a href=\"https://gutenbergtimes.com/full-site-editing/\" target=\"_self\" rel=\"\"><img src=\"https://i2.wp.com/gutenbergtimes.com/wp-content/uploads/2021/02/vidar-nordli-mathisen-4NlLMwdFoLY-unsplash.jpg?w=640&ssl=1\" /></a></div></div><div class=\"ngl-article-left\"><div class=\"ngl-article-featured\"><a href=\"https://gutenbergtimes.com/full-site-editing/\" target=\"_self\" rel=\"\"><img src=\"https://i2.wp.com/gutenbergtimes.com/wp-content/uploads/2021/02/vidar-nordli-mathisen-4NlLMwdFoLY-unsplash.jpg?w=640&ssl=1\" /></a></div></div><div class=\"ngl-article-right\"><div class=\"ngl-article-title\"><a href=\"https://gutenbergtimes.com/full-site-editing/\" target=\"_self\" rel=\"\"><span>Full-Site-Editing &#8211; the Ultimate Resource List</span></a></div><div class=\"ngl-article-excerpt\">Nothing in life is to be feared, it is only to be understood. Now is the time to understand more, so that we may fear less.&nbsp;— Marie Curie&nbsp;</div><div class=\"ngl-article-date\">18 Apr 2021</div></div>\n\t\t\t</div>\n\n\t\t\n\t\t\t<div class=\"ngl-article ngl-article-img-left\">\n\n\t\t\t\t\n\t\t\t\t<div class=\"ngl-article-left-mobile -emogrifier-keep\"><div class=\"ngl-article-featured\"><a href=\"https://gutenbergtimes.com/full-site-editing-mvp-can-i-build-a-landing-page/\" target=\"_self\" rel=\"\"><img src=\"https://i2.wp.com/gutenbergtimes.com/wp-content/uploads/2021/03/kelly-sikkema-gcHFXsdcmJE-unsplash.jpg?w=640&ssl=1\" /></a></div></div><div class=\"ngl-article-left\"><div class=\"ngl-article-featured\"><a href=\"https://gutenbergtimes.com/full-site-editing-mvp-can-i-build-a-landing-page/\" target=\"_self\" rel=\"\"><img src=\"https://i2.wp.com/gutenbergtimes.com/wp-content/uploads/2021/03/kelly-sikkema-gcHFXsdcmJE-unsplash.jpg?w=640&ssl=1\" /></a></div></div><div class=\"ngl-article-right\"><div class=\"ngl-article-title\"><a href=\"https://gutenbergtimes.com/full-site-editing-mvp-can-i-build-a-landing-page/\" target=\"_self\" rel=\"\"><span>Full-site Editing MVP: Can I Build a Landing Page?</span></a></div><div class=\"ngl-article-excerpt\">Josepha Haden Chomphosy was the featured guest on the inaugural episode of the WPTavern Jukebox podcast, hosted by Nathan Wrigley. Chomphosy explained her unofficial benchmark for the Go/NoGo decision on Full-site Editing for the WordPress core merge.&nbsp;</div><div class=\"ngl-article-date\">27 Mar 2021</div></div>\n\t\t\t</div>\n\n\t\t\n\t\t\n\t\t</div>\n\n</div>\n\n\n<p class=\"has-large-font-size\" id=\"transcript\">Transcript </p>\n\n\n\n<div class=\"wp-block-group has-background\"><div class=\"wp-block-group__inner-container\">\n<div class=\"wp-block-sortabrilliant-guidepost\"><ul><li><a href=\"https://gutenbergtimes.com/feed/#0-sha\">Shared Resources</a></li><li><a href=\"https://gutenbergtimes.com/feed/#0-strong-milestones-of-full-site-editing-experience-strong\">Milestones of Full-Site Editing Experience</a><ul><li><a href=\"https://gutenbergtimes.com/feed/#1-strong-infrastructure-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-strong\">Infrastructure&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li><li><a href=\"https://gutenbergtimes.com/feed/#2-strong-browsing-templates-and-template-parts-strong\">Browsing Templates and Template Parts</a></li><li><a href=\"https://gutenbergtimes.com/feed/#3-strong-styling-global-styles-theme-json-strong\">Styling &#8211; Global Styles + theme.json</a></li><li><a href=\"https://gutenbergtimes.com/feed/#4-strong-20-theme-blocks-strong\">20+ Theme Blocks</a></li><li><a href=\"https://gutenbergtimes.com/feed/#5-strong-query-block-the-loop-or-post-list-strong\">Query Block &#8211; The Loop or Post List</a></li><li><a href=\"https://gutenbergtimes.com/feed/#6-strong-navigation-block-strong\">Navigation Block</a></li><li><a href=\"https://gutenbergtimes.com/feed/#7-strong-gradual-adoption-widgets-customizer-hybrid-themes-nbsp-strong\">Gradual Adoption &#8211; Widgets, Customizer, Hybrid Themes&nbsp;</a></li></ul></li><li><a href=\"https://gutenbergtimes.com/feed/#8-strong-whats-coming-to-word-press-5-8-strong\">What&#8217;s coming to WordPress 5.8</a><ul><li><a href=\"https://gutenbergtimes.com/feed/#9-strong-short-demo-template-editing-navigation-block-and-multi-entity-saving-strong\">Short Demo: Template Editing, Navigation Block and Multi-Entity Saving</a></li></ul></li><li><a href=\"https://gutenbergtimes.com/feed/#10-strong-timeline-of-5-8-release-strong\">Timeline of 5.8 Release</a></li><li><a href=\"https://gutenbergtimes.com/feed/#11-strong-what-is-the-fse-outreach-experiment-program-strong\">What is the FSE Outreach Experiment Program?</a><ul><li><a href=\"https://gutenbergtimes.com/feed/#12-strong-whats-the-goal-strong\">What&#8217;s the goal</a></li><li><a href=\"https://gutenbergtimes.com/feed/#13-strong-why-was-it-started-strong\">Why was it started?</a></li><li><a href=\"https://gutenbergtimes.com/feed/#14-strong-how-to-join-fse-outreach-experiment-strong\">How to Join FSE Outreach Experiment</a></li></ul></li><li><a href=\"https://gutenbergtimes.com/feed/#15-strong-high-level-feedback-from-calls-for-testing-strong\">High-Level Feedback from Calls for Testing</a><ul><li><a href=\"https://gutenbergtimes.com/feed/#16-strong-preview-content-strong\">Preview Content</a></li><li><a href=\"https://gutenbergtimes.com/feed/#17-strong-saving-process-strong\">Saving Process</a></li><li><a href=\"https://gutenbergtimes.com/feed/#18-distinction-between-editing-area\">Distinction between editing area.</a></li><li><a href=\"https://gutenbergtimes.com/feed/#19-rethinking-width-and-alignment\">Rethinking Width and Alignment.</a></li><li><a href=\"https://gutenbergtimes.com/feed/#20-strong-general-usability-improvements-strong\">General usability improvements.</a></li><li><a href=\"https://gutenbergtimes.com/feed/#21-strong-improving-placeholders-strong\">Improving Placeholders.</a></li></ul></li><li><a href=\"https://gutenbergtimes.com/feed/#22-strong-will-full-site-editing-take-over-my-site-strong\">Will full site editing take over my site?</a></li><li><a href=\"https://gutenbergtimes.com/feed/#23-strong-what-about-the-block-based-navigation-and-widget-screens-strong\">What about the block-based navigation and widget screens?</a></li><li><a href=\"https://gutenbergtimes.com/feed/#24-strong-site-builders-strong\">Site builders</a></li><li><a href=\"https://gutenbergtimes.com/feed/#25-strong-how-is-this-going-to-impact-themes-strong\">How is this going to impact themes?</a></li><li><a href=\"https://gutenbergtimes.com/feed/#26-strong-what-pathways-are-going-to-be-created-strong\">What pathways are going to be created?</a></li><li><a href=\"https://gutenbergtimes.com/feed/#27-strong-whats-the-best-way-to-prepare-nbsp-strong\">What&#8217;s the best way to prepare?&nbsp;</a></li><li><a href=\"https://gutenbergtimes.com/feed/#28-strong-stay-connected-with-anne-mc-carthy-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-strong\">Stay connected with Anne McCarthy</a></li></ul></div>\n</div></div>\n\n\n\n<p class=\"has-small-font-size\"><em>Featured image: 404 template by Channing Ritter on critterverse.blog</em></p>\n\n\n\n<p>Howdy. To start, thanks so much for having me. This is a presentation about full site editing. I&#8217;m very excited to talk with you. This is a feature I&#8217;ve been thinking a lot about over the last year and I&#8217;m excited to share with you all. I&#8217;m also really keen to learn from each of you what you&#8217;re worried about, what you&#8217;re excited about, how you think full-site editing can improve your workflows, and more. So this is prerecorded because I wanted to make sure with so much information going around, wanted to make sure I had all the details lined up and so I could pause and rework certain sections. But please know that I welcome questions. So while you can&#8217;t interrupt me during the presentation, there will be a whole section at the end. Pull out your pen and paper, write them down, and know that they&#8217;re very, very welcomed. But for now, let&#8217;s dig in.</p>\n\n\n\n<p>So briefly about me, I&#8217;m actually originally from Winter Park, Florida. So I haven&#8217;t been home in about a year and a half, and thank you for letting me virtually return home by participating in this meetup. In 2011, I first found WordPress as a student at UNC Chapel Hill. I worked on their multi-site, had a great time. 2013, I went to my first ever WordCamp. 2014, joined Automatic as a happiness engineer focused on VaultPress and had a great time focusing on security of websites. It gave me a really interesting look into concerns people have about websites that most people don&#8217;t think about. Then 2020, I switched into the developer relations position at Automatic and have been there ever since.</p>\n\n\n\n<p>So let&#8217;s get meta and talk about the talk. (laughing). So to start, I&#8217;m going to zoom out really big and then slowly put pieces together until we kind of get a nice map of what full-site editing is with all the details. So this will look kind of like first answering some big, high-level questions, digging into then how the work is actually being done, so going from high level, &#8220;What is this? Why does it help me?&#8221; to &#8220;How is this work actually being approached? What are the pieces of the work that I need to know, the role of the outreach program?&#8221; Then I want to address some key topics and questions that I often get asked when I&#8217;ve presented at other places and talked on other podcasts about full-site editing or just one-on-one with people. I love to talk about full-site editing. So hopefully some of the key topics and questions can help get people thinking about other things they want to ask about.</p>\n\n\n\n<p>So let&#8217;s dig into the first big picture question. Why is this being done at all? Simply put, it&#8217;s to empower users. Rather than having a specific part of the site locked away in a theme or requiring a plugin, full-site editing will basically open it up to customize any part of your site the way you want to, or, on the flip side, you can let it be, or if you&#8217;re an agency, you could lock certain sites down or certain parts of a site down, depending upon how you want users to have access. So it&#8217;s a pretty powerful, big mission to actually deliver on full site editing.</p>\n\n\n\n<p>So I answered why is this being done. Now let&#8217;s dig into how does this fit into the WordPress roadmap? So full-site editing is a major part of phase two of the current roadmap. It&#8217;s not the only part, though. There&#8217;s actually other interrelated projects, including things like block patterns, the block directory, block-based themes. So it&#8217;s just one piece of this larger roadmap, but it&#8217;s one of the major grounding points of phase two of the roadmap.</p>\n\n\n\n<p>So what is full-site editing at a high level? Essentially, it&#8217;s a collection of features, and it&#8217;s important that you get the collection part. But it&#8217;s a collection of features that bring the familiar experience of blocks to all parts of your site, rather than just posts and pages. But Anne, what does a collection of features mean? Basically, I&#8217;ve noticed people tend to refer to full-site editing as one big thing. It&#8217;s like an on-off switch. It&#8217;s this monolith, and it&#8217;s actually not. It&#8217;s not this binary thing. It&#8217;s way better to talk about how there&#8217;s different pieces that fit together and interrelate, because it actually gives flexibility for release squads to release what&#8217;s ready, rather than all of it at once. So while it might be easier to talk about how it&#8217;s this one big thing, I encourage you all to kind of think about the different pieces, if you can, and I&#8217;ll touch on this more in a bit.</p>\n\n\n\n<p>Okay. So what does full-site editing actually allow me to do, right? So cool, Anne, a collection of features, but show me the money. (laughing). So this is an example of a 404 page. So a 404 page, typically you&#8217;re not actually able to edit, but with full-site editing, you could actually create this 404 page. This was actually done by one of the automatic designers, Channing. Shout-out to Channing. She did this as part of one of the tests for full-site editing, the outreach program. So it&#8217;s a pretty beautiful thing. While we all might not have the design chops that Channing does, it is pretty neat to see kind of a very tangible, hands-on example of what full-site editing unlocks you to be able to do.</p>\n\n\n\n<p>To get more specific, basically, if you&#8217;re a user, imagine editing the template that a specific post has for a specific category. For theme authors, you&#8217;ll be able to tap into design tools that allow you to focus more on actually creating a really compelling experience and less on getting the code in place and hacking things up. You can also out in and out of whatever you&#8217;re ready for, which is really exciting. But ideally, for theme authors, it&#8217;s going to be a huge change. It&#8217;ll allow creating themes to be much, much easier. If you&#8217;re an agency, you&#8217;ll have greater control over what you can offer clients, including setting custom brand colors with presets to locking down various aspects for consistency, such as typography or wanting only certain default colors to be used.</p>\n\n\n\n<h2 id=\"0-strong-milestones-of-full-site-editing-experience-strong\">Milestones of Full-Site Editing Experience</h2>\n\n\n\n<p>So how is this work being done? So rather than trying to go through everything in one go, this project has actually been broken down into seven different milestones. Some of these milestones are completely separate, their own thing. Some are very interrelated. Some mix and match in different ways. But we&#8217;re going to go through each of them so you can get a sense of how this is being done. I&#8217;m going to try to stay at a high level before going into a very brief demo midway through the presentation. But hopefully this&#8217;ll give you a sense of what this looks like.</p>\n\n\n\n<h3 id=\"1-strong-infrastructure-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-strong\">Infrastructure&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>\n\n\n\n<p>So milestone one, this was actually such a big milestone that it was broken into two parts. Essentially, this is all about laying the foundation, everything from multi-entity saving, which is actually being displayed here in the GIF that you see, where you can actually update multiple things at once, including a template part. You update your header, you update a post, and you update your footer. It&#8217;ll show all the changes happening and allow you to check and uncheck different boxes to save. Basically, just think about this as building the foundation of the experience, the technical foundation, unlocking things like being able to edit a template directly to working on specific blocks for full-site editing, like the site title. So we have a site title block, and it updates everywhere you have it listed.</p>\n\n\n\n<h3 id=\"2-strong-browsing-templates-and-template-parts-strong\">Browsing Templates and Template Parts</h3>\n\n\n\n<p>Milestone two, browsing. Again, there&#8217;s another little visual so you can see what this actually looks like. This is basically giving you a map and a GPS to know your location, how to get where you need to go for your site. So because there are these new parts of editing your site that are unlocked with full-site editing, like template editing and template parts, like a header or footer, there needs to be a way to navigate between them. So this milestone is dedicated to that. How can we make it as easy as possible for you to you get where you need to go?</p>\n\n\n\n<h3 id=\"3-strong-styling-global-styles-theme-json-strong\">Styling &#8211; Global Styles + theme.json</h3>\n\n\n\n<p>Milestone three, styling. So this actually covers a couple different layers. I&#8217;m going to break it down in this slide and then the next one to help give you a sense visually of what this looks like. But this includes everything from the technical requirements to make various levels work and the UI for users. So you can actually see a depiction of the future design for the UI that users will interact with in the imagery here. So there&#8217;s generally three layers, including selling for local blocks, theme defaults, and then global modifications or what we often call global styles. You can think of global styles as basically having the option to edit all aspects of your site. So if you want to set a typography that goes across your entire site, if you want to have certain colors for all H1 headers, you can set that up with global styles.</p>\n\n\n\n<p>Currently, much of the work has been focused on the technical underpinnings, especially around aspects like theme.json, which is a very key component for block themes and a really big tool for block theme authors. But for 5.8, the focus is generally going to be on merging the non-user interface parts of global styles. So don&#8217;t expect to interact with this system unless you&#8217;re a theme author. If you are a theme authro, get really excited. Here&#8217;s a little visual, just you can get a sense of it. So these are the different layers that have to interact in the styling system and hierarchy that needs to be thought of when working on this milestone.</p>\n\n\n\n<h3 id=\"4-strong-20-theme-blocks-strong\">20+ Theme Blocks</h3>\n\n\n\n<p>Milestone four, theme blocks. So because full-site editing opens up so many more aspects of the site to edit, new blocks had to be created, basically. So if you&#8217;re creating a new template for a specific category and you&#8217;re putting in post content and you want to add the post author block, which you can see here, you can quickly add it in, customize it to your liking, add in post comment, add in post data, remove the post date. You can edit each parts of these things, which pretty excited about this, is there&#8217;s actually 20-plus blocks that fall into this category. If all goes as planned, some of those will be released for 5.8 and available potentially for all sites. So even if you&#8217;re not using a block theme, you could have access to these theme blocks, which is pretty powerful and pretty cool.</p>\n\n\n\n<h3 id=\"5-strong-query-block-the-loop-or-post-list-strong\">Query Block &#8211; The Loop or Post List</h3>\n\n\n\n<p>Query block. So the query block has its own milestone, because it&#8217;s a pretty powerful block. It&#8217;s also meant to be a theme author tool, so in the long run, if you&#8217;re a user, imagine that you interact with what we call block variations, which basically are just different variations of a block, as the name implies. But imagine you want to add in your latest post. You&#8217;ll add the latest post block, but underneath it, what will be powering that experience of adding your latest post will be the query block. Essentially, as the name implies, it allows you to query posts and pages and display them in different arrangements on the page. I&#8217;m very excited, actually. In Gutenberg 10.5, which will be released in just about two weeks, there&#8217;s going to be some new patterns. You can see right here, large, medium, small are the current selection of patterns that you have for the query block. But pretty soon, there&#8217;s going to be a grid pattern and a couple other cool ones, which is pretty exciting. Generally speaking, though, if you&#8217;re an end user, don&#8217;t expect to interact with this. If you&#8217;re a theme author, get excited.</p>\n\n\n\n<h3 id=\"6-strong-navigation-block-strong\">Navigation Block</h3>\n\n\n\n<p>Navigation block. Again, this is just a single block, but don&#8217;t be fooled. It&#8217;s definitely a mighty one. So this last one is dedicated to all things navigation block, both in terms of structure and design. You can see in this little GIF I have going on, I&#8217;m just kind of making little design changes and moving things around so you can get a sense of what it&#8217;s like to interact with this block. This milestone actually includes everything from how do you build a really simple menu with a few items to thinking about how to create a really large mega menu and add in new blocks, like the search block that you can see here. We&#8217;re even adding sub-menus, different designs, different layouts, and more.</p>\n\n\n\n<h3 id=\"7-strong-gradual-adoption-widgets-customizer-hybrid-themes-nbsp-strong\">Gradual Adoption &#8211; Widgets, Customizer, Hybrid Themes&nbsp;</h3>\n\n\n\n<p>So the last piece of the milestones is the gradual adoption. I hope this GIF makes you laugh, but also seriously, this is the intent, is we slowly want people to be able to adapt in the way that they can. Once more of these pieces are completed, there&#8217;s basically a ton of room to start exploring how adoption might look like for those who can&#8217;t or don&#8217;t want to restructure a full theme. So this might be an intermix of block-based things and regular PHP templates, or it might be covered by projects like the block-based widget editor and the navigation screen. Both of those projects I&#8217;ll cover later, but for now, just keep in mind that this is intentionally a milestone. We want to allow for gradual adoption and want people to have lots of pathways in to taking advantage of full site editing.</p>\n\n\n\n<h2 id=\"8-strong-whats-coming-to-word-press-5-8-strong\">What&#8217;s coming to WordPress 5.8</h2>\n\n\n\n<p>So what&#8217;s coming to WordPress 5.8? So just last week, a post went out from Josepha, who is the executive director of the WordPress project. I want to read a quote from it just to kind of set the tone and give you a sense. So full-site editing is a collection of projects, and together, they represent a big change, arguably too much for a single release. The most important context to share is that it isn&#8217;t shipping as the full default experience for users. One of the clearest pieces of feedback from the phase one merge process was that there wasn&#8217;t enough time for extenders, agencies, theme authors, plugin developers, site builders, et cetera to prepare for the upcoming changes. With that in mind, this merge process won&#8217;t be an on-off switch, and you can see I&#8217;ve bolded various specific parts that I hope you take home with you.</p>\n\n\n\n<p>All right. So let&#8217;s talk WordPress 5.8 plans. This is up-to-date information as of today. A post was released from Josepha on [inaudible 00:12:21], if you&#8217;d like to check it out. From the call that the project leadership had, this is what they came up with for the 5.8 plans. This includes improvements from Gutenberg 9.9 and beyond. So we always package different versions of Gutenberg into major releases. This release is no different. There&#8217;ll be an introduction of new blocks, including query, site logo, navigation, et cetera. These are each very powerful blocks, very exciting to see. theme.json mechanism, this is part of what allows block themes to use different global styling, which will be very cool for block authors to get their hands on.</p>\n\n\n\n<p>The template editor for pages and a blank template, I&#8217;ll actually be showing a demo of this in a moment. So hang tight there, but it&#8217;ll all make sense in a bit. The widget screen and block widgets in the customizer, this is basically work being done to bring blocks to the widgets experience. I will talk more about that later, about how it&#8217;s a stepping stone towards full-site editing. Then finally, design tools, so even more design tools that people can hook into, including duotone, which adds a really cool color filter, layout controls, padding, and more.</p>\n\n\n\n<h3 id=\"9-strong-short-demo-template-editing-navigation-block-and-multi-entity-saving-strong\">Short Demo: Template Editing, Navigation Block and Multi-Entity Saving</h3>\n\n\n\n<p>So at this point, let&#8217;s pause for a minute and actually show off one of the features that is aimed to be included in 5.8.&nbsp;</p>\n\n\n\n<p>I&#8217;m going to show you template editing, the navigation block, and just some of the cool flows with multi-entity saving is one of the things that we talked about that will make it into this release. So I&#8217;m in the post editor. I have a new post. I love to blog and write and present. I hit Update. Super happy, whatever. Open up the post settings, and there&#8217;s this new section that allows you to both create a brand new template. This will ideally be used both in themes that are block-based themes, so they&#8217;re ready for full-site editing, and potentially for classic themes. There&#8217;s actually work underway so that this will be available in anything being used in WordPress right now.</p>\n\n\n\n<p>So right now, if I hit Edit, this will take me into the template that this post is using. So let&#8217;s do that now. So as you can see, this drops me into what looks like the entire site. So you can see I have my header up here, I have the footer down here, and I can make changes directly to them. So, for example, if I jump in here, this is the navigation block, and I haven&#8217;t yet set it up. So I can say add all pages, and I can start empty. In this case, I&#8217;ll say, &#8220;You know what? Let&#8217;s start empty.&#8221; Let&#8217;s say I want to add a custom link. One of the cool things you can actually do, you can quickly select from here, or let&#8217;s say I want to add a new post. Let me first select post link.</p>\n\n\n\n<p>So adventures around the world. Let&#8217;s pretend I&#8217;m just inspired where I&#8217;m writing this. I can actually create a draft post, which is pretty cool, and it&#8217;ll show up here. It will not show up on the front end, since it&#8217;s a draft, but it actually creates a page draft for this with this title automatically. So let&#8217;s say I&#8217;m scrolling through here. I&#8217;m going, &#8220;Oh, this looks pretty good. Actually, I kind of want to see what it looks like if I add an image to the post here.&#8221; Pull up an image block. Oh, my media library. Hammocks. Can&#8217;t get enough hammocks. Going to throw that in there. Great. So at this point, I&#8217;ve made changes to the actual header. I&#8217;ve made changes to the post. I&#8217;m just going to apply and see what happens.</p>\n\n\n\n<p>So this is the multi-entity saving that I mentioned earlier. Now, as you can see, it has a section for posts, so it&#8217;s saying, &#8220;Hey, you edited this post,&#8221; and it has a section saying, &#8220;Hey, you edited the header.&#8221; So at this point, I&#8217;m going to hit Save, because I want both those changes to propagate. Now I&#8217;m back into my post, into the writing flow, and I can easily switch back and forth. I can also select a new one. But yeah, hopefully this gives you a good sense of one of the key parts that&#8217;s being worked on for inclusion in 5.8. There will be a demo later, but this is just a taste.</p>\n\n\n\n<h2 id=\"10-strong-timeline-of-5-8-release-strong\">Timeline of 5.8 Release</h2>\n\n\n\n<p>To help set the stage for what you can prepare for, here are some upcoming dates to keep in mind. If you&#8217;re like me, time is moving really strangely, so I like to have dates to kind of anchor me. Feel free to take a screenshot of this or write it down if you&#8217;d like. So April 13th and April 27th, these are the go and no-go decision dates. So right now, project leadership actually has gathered. So you might notice if you are good with dates and good with time right now, April 13th has come and gone. So this date has passed, and project leadership has met actually to go through different FSE-related features and projects to figure out what might be ready for 5.8. I would expect to see more high-level posts throughout the month, especially after the second date, the April 27th date. That&#8217;s when final decisions will be made around 5.8.</p>\n\n\n\n<p>Then if all goes well, the beta period for WordPress 5.8 will start on June 8th. So people can actually start getting their hands on the tools that are going to be in place in the actual release and testing it and finding bugs and improving things from there. July 20th is the actual date of WordPress 5.8 and when it&#8217;s released. This is being considered as an open beta, where theme authors, plugin authors, agencies, and more can dig into the tools that are being offered and that I went over previously. Then in December 2021, that&#8217;s around the time when WordPress 5.9 will be released, and this is when I expect to move from tools for extenders into tools actually for users and more user-facing interactions with full-site editing and having things unlocked in the interface that previously in 5.8, most users won&#8217;t notice and won&#8217;t interact with. In 5.9, I expect that to be more visible.</p>\n\n\n\n<p>So some key takeaways. I know this is a lot of information. So only what&#8217;s ready from the various milestones will be shipped. This is not an on-off switch, and it won&#8217;t take over your site. The focus right now is on giving tools to extenders first, before user-facing changes. That&#8217;s a big lesson that was learned from the 5.0 merge, where Gutenberg and the core editor was brought into the WordPress experience. This is something that, thankfully, we&#8217;re in a position where because of these interrelated projects, we&#8217;re able to move in a more flexible and adaptable way to release what&#8217;s ready and not anything else.</p>\n\n\n\n<h2 id=\"11-strong-what-is-the-fse-outreach-experiment-program-strong\">What is the FSE Outreach Experiment Program?</h2>\n\n\n\n<p>All right. At this point, let&#8217;s jump into the full-site editing outreach program. As a reminder, this is the program that I actually run, so consider this free rein to ask me whatever question you&#8217;d like, because I think probably too much about this program. But it&#8217;s something I&#8217;m really excited to talk to you about, and I think it&#8217;s a really neat vehicle for both feedback and education about full site editing.</p>\n\n\n\n<p>So let&#8217;s go over some big picture questions, kind of like we did earlier on, and just get the details of the way. So let&#8217;s start. What is it? So essentially, it&#8217;s just a program focused on full-site editing. It&#8217;s in the form of a Slack channel right now. I&#8217;ll go over how to join it in a bit. But it has curated calls for testing, summary posts of the feedback that we get, and various educational opportunities that you can hop in on, mainly in the form of live streams. I&#8217;m running some hallway hangouts, which are basically just Zoom calls. People can come in, and we can talk about full site editing.</p>\n\n\n\n<h3 id=\"12-strong-whats-the-goal-strong\">What&#8217;s the goal</h3>\n\n\n\n<p>What&#8217;s the goal? So the goal is pretty simple, help improve full-site editing experience by gathering feedback from WordPress site builders. While the group originally started solely to be about feedback, there&#8217;s actually this really neat educational component that has come up as the feature has developed and as more people have gotten curious about it. So people can join just to build their own awareness about what&#8217;s happening with full-site editing and kind of just look at a glance or just help amplify the posts that are coming through.</p>\n\n\n\n<h3 id=\"13-strong-why-was-it-started-strong\">Why was it started?</h3>\n\n\n\n<p>Why was it started? So I&#8217;m going to quote Josepha from the kickoff post. During the WordPress 5.0 retrospective, which is when Gutenberg was merged and the core editor was merged, one of the things that came up routinely was the need for better engagement with users. It was generally agreed from all levels and area of contribution that users would be most impacted by Gutenberg, but the users were also the group we had the least channels of communication to. To help get user feedback to WordPress developers a little bit more seamlessly, I&#8217;m going to try and experiment outreach program. So basically, this is a lesson that was learned from the 5.0 release. In order to prevent another situation where people are caught by surprise, this program is in place to help people get excited and on ramped and on boarded onto full-site editing, as well as getting feedback so that we know if a major workflow change is coming into play, we can actually get user feedback to make it a little bit easier.</p>\n\n\n\n<h3 id=\"14-strong-how-to-join-fse-outreach-experiment-strong\">How to Join FSE Outreach Experiment</h3>\n\n\n\n<p>All right. At this point, I bet you&#8217;re just so stoked. You&#8217;re ready to dive in. Awesome. (laughing). All you&#8217;ve got to do is join FSE Outreach Experiment in Make WordPress Slack, and then you&#8217;re all set. You&#8217;ll just get a bunch of annoying pings for me with prompts for how to test, interesting posts related to full site editing, and more. I promise it&#8217;s also not as scary as this dive, which looks absolutely terrifying, but also beautiful.</p>\n\n\n\n<h2 id=\"15-strong-high-level-feedback-from-calls-for-testing-strong\">High-Level Feedback from Calls for Testing</h2>\n\n\n\n<p>So because at this point, we&#8217;re on our fifth call for testing, I want to go over some high-level pieces of feedback that we&#8217;ve actually gotten about the experience so far. Basically, across all the calls for testing, these are repeated themes that have come up. But keep in mind that because there are certain aspects that we actually haven&#8217;t tested, so global styles, for example, the UI isn&#8217;t available really for users, and it&#8217;s not refined for users, so it&#8217;s not something that we&#8217;ve had as a focus part of testing, even though there is a UI that is available. So certain things are left out purely because they aren&#8217;t necessarily ready for testing, but these are the top pieces of feedback. So bear with me.</p>\n\n\n\n<h3 id=\"16-strong-preview-content-strong\">Preview Content</h3>\n\n\n\n<p>Previewing content. Publish a post. You want to go preview it, or you&#8217;re editing a post. You want to go preview the content. The same thing is true with full site editing. This is a big thing that kept coming up. My question is, is this a necessary workflow, or is it a symptom of other problems? Because in general, the site editor should be as WYSIWYG, as what you see is what you get, as possible.</p>\n\n\n\n<p>So if you&#8217;re making a change, it should look exactly the same as the front end of your site, and because it doesn&#8217;t right now, it&#8217;s causing this tension. There actually is a preview site option under discussion, as well as a browse mode option, which basically, if you&#8217;re actually editing your site, it would turn off everything that wouldn&#8217;t actually show up on the front end. So if you only have one page of posts, but you have pagination set up so if you had multiple pages, that would actually go away. So as you can imagine, this is currently up for discussion, but there actually are a couple different pathways to try and address this problem. But it&#8217;s a very important one to address.</p>\n\n\n\n<h3 id=\"17-strong-saving-process-strong\">Saving Process</h3>\n\n\n\n<p>Saving process. I like to say it&#8217;s technically reliable, but not yet delightful. So basically, it&#8217;s left a lot to be desired right now, and it&#8217;s resulted in a fair bit of confusion. There&#8217;s a lot of feature requests and enhancements and bugs that have come up related to saving. This is likely because the multi-entity saving aspect that I demoed earlier is very new for WordPress users. It&#8217;s not something we&#8217;re used to having as part of our workflow. So it&#8217;s something that inherently needs some work on. So whether it was people requesting more granular saving options to show specifically what was being changed to issues with saving for screen readers to confusion around even just what the general parts mean, like what you&#8217;re actually selecting or unselecting, This was definitely a big, big area of feedback.</p>\n\n\n\n<h3 id=\"18-distinction-between-editing-area\">Distinction between editing area.</h3>\n\n\n\n<p>Distinction between editing area. So basically, because you can edit all parts of your site, it&#8217;s hard to know, &#8220;Am I editing the header for all of my site, or am I editing just a specific piece of content on a post?&#8221; This kind of distinction, jumping between different levels of, &#8220;Oh, you&#8217;re changing this. This will change everything&#8221; to &#8220;You&#8217;re just changing this one thing in this one spot&#8221; is pretty tricky. Right now, there&#8217;s not a lot of friction, and there&#8217;s not a lot clarity in the actual experience to show when you&#8217;re actually jumping between those different levels. So this was a big piece that&#8217;s come up, and it&#8217;s something that is an active area of iteration and exploration to kind of get the right amount of friction in place.</p>\n\n\n\n<h3 id=\"19-rethinking-width-and-alignment\">Rethinking Width and Alignment.</h3>\n\n\n\n<p>So rethinking width and alignment. Previously, alignment in full-site editing worked to optimize how traditional things worked, where basically, traditional things provided their own alignment styles. This worked okay for the project up until this point. But recently, work has been shipped to reimagine how this dynamic should work to allow for actually more control over alignments when using the site editor. This should actually help make sure that whether you want something that&#8217;s full width or you want to change the actual width of your content that&#8217;s showing up that it&#8217;ll actually be what you see is what you get. Right now, this is another piece of feedback at a high level that&#8217;s impacted what you see is what you get experience.</p>\n\n\n\n<h3 id=\"20-strong-general-usability-improvements-strong\">General usability improvements.</h3>\n\n\n\n<p>Generally usability improvements. I admit this is totally a catchall, and it covers a ton of stuff, but it&#8217;s actually a very important one to think of, because it&#8217;ll actually move the site editing experience from being just functional to actually delightful, which is really exciting. There&#8217;s a ton of issues that are included in this, including some enhancement requests, bug reports, all that good stuff. One of my favorites to talk about is creating a background image on a template part. So imagine you have a header. You&#8217;re working on it. You&#8217;re super excited, and you&#8217;re almost done. Then you&#8217;re like, &#8220;Oh, do you what would be really cool is if I had mountains in the background. Maybe I&#8217;ll add a cover block in the background and add an image and set the opacity pretty low, but have mountains going in the background of the site.&#8221; That&#8217;s really hard to do.(laughing). You basically would have to delete everything and add the block in and then add everything back. So those are the kinds of experiences that we&#8217;re trying to improve right now.</p>\n\n\n\n<h3 id=\"21-strong-improving-placeholders-strong\">Improving Placeholders.</h3>\n\n\n\n<p>Improving placeholders. So placeholders, especially for some of the newer blocks, are a powerful way to both guide people and a current point of confusion. So you probably saw this with the navigation block earlier, where it had those little grayed boxes. It&#8217;s like, &#8220;How do we explain to people, &#8216;Hey, this is something you have to set up and engage with, but here&#8217;s generally what it will look like and what it will do&#8217;?&#8221;&nbsp;</p>\n\n\n\n<p>The feedback for this mainly came into play with the query block, social icon block, featured image block, and the navigation block. Each currently actually also get users started in different ways. So not only are there different placeholders for different experiences, the actual experience of interacting with the placeholders are all pretty inconsistent right now. So I think in the long run, it seems that users will benefit a bunch from a standardized, consistent way to interact with placeholder content so that it becomes a really familiar interaction when you&#8217;re working with a more powerful block. This especially is true for the query block and navigation block.</p>\n\n\n\n<p>Okay, now that we&#8217;ve covered the milestones, the outreach program, high-level pieces of feedback, I&#8217;m going to quickly run through some key topics that I imagine you&#8217;re going to have questions about. Just because I cover them here does not mean I don&#8217;t want to answer questions, so please don&#8217;t see this as a sign that you can&#8217;t also still ask questions about these topics. This is just what I&#8217;ve been hearing from folks.</p>\n\n\n\n<h2 id=\"22-strong-will-full-site-editing-take-over-my-site-strong\">Will full site editing take over my site?</h2>\n\n\n\n<p>Hopefully by this point, you all can say no in a resounding way. But no, this is not something that&#8217;s going to all of a sudden, on-off switch, you upgrade to 5.8, it takes everything over. Not at all. You very much have to opt into it through using a theme blocking that supports, actually, these features. In time, more pathways are going to be built as well so that when you&#8217;re actually using full-site editing, you&#8217;ll likely be using pieces in all of it. So you could just be using the query block, or you could just be using global styles without it taking over your entire site.</p>\n\n\n\n<h2 id=\"23-strong-what-about-the-block-based-navigation-and-widget-screens-strong\">What about the block-based navigation and widget screens?</h2>\n\n\n\n<p>What&#8217;s the deal there? So in case you missed it, there&#8217;s actually two additional projects that are dedicated to bringing blocks to more areas of the site outside of full site, I think. This include the navigation screens. You can build out menus and the widget screens. You can build out your widget sections, and this is pretty powerful and high-impact work. They are both separate projects that are tangential to full-site editing, but you can think of them as stepping stones, basically. So you could have a theme that is a classic theme, but it uses a block-based widget screen so that people can have the power blocks with their widgets. Essentially, the whole point, like I said, it&#8217;s a stepping stone to get people used to using blocks more places.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\n\n\n\n<h2 id=\"24-strong-site-builders-strong\">Site builders</h2>\n\n\n\n<p>I could write a thesis about this, because there&#8217;s so much to talk about here. I imagine I&#8217;m going to get questions about this, but essentially, full-site editing is being built partially so people don&#8217;t get stuck or locked into one site builder or another. It&#8217;s also being built in a way that site builders can actually hook into what&#8217;s being created if they choose to. I&#8217;ve heard from a lot of folks, though, that they expect full-site editing to actually fully replicate their favorite site builder&#8217;s functionality, and I&#8217;m here to say that while the goals between full-site editing and site builders are pretty similar in terms of empowering users and giving better tools to customize a site, the difference is that we&#8217;re building for 40% of the Internet, and we&#8217;re building even for site builders, where site builders have a much more targeted approach.</p>\n\n\n\n<p>In the future, I do think there will always be room for specific takes of how to have an ideal site editing experience, whether that&#8217;s geared to a specific group, like a marketing style approach, or if you want to have things locked down or if you want to have things opened up. But generally speaking, full-site editing is meant to actually expand the way WordPress as a whole uses blocks, so don&#8217;t expect it to fully replicate any sort of site builder, your favorite site builder, essentially.</p>\n\n\n\n<h2 id=\"25-strong-how-is-this-going-to-impact-themes-strong\">How is this going to impact themes?</h2>\n\n\n\n<p>How is this going to impact themes? So in the long run, this should actually make theme development much easier. I think Marcus&#8217;s demonstration later will show that, and much simpler, especially with the design tools that will be essentially ready at your fingertips to tap into. Ideally, because of what&#8217;s being released, it should allow theme authors to focus less on coding and functions and more on design aesthetics, integrating block patterns, and all that good stuff. But because one of the key things I wanted to really drive home in this section, though, is that because full-site editing requires a block-based theme or a theme with certain functionality enabled, this makes theming extremely important to get right. So I&#8217;ve heard people say like, &#8220;Oh, themes are a thing of the past.&#8221; It&#8217;s very much not true. I&#8217;d actually argue the opposite, that theme is almost key to this experience, to having it be delightful and having it makes sense.</p>\n\n\n\n<h2 id=\"26-strong-what-pathways-are-going-to-be-created-strong\">What pathways are going to be created?</h2>\n\n\n\n<p>I know I&#8217;ve talked a lot about pathways this entire time, but it is the entire focus of the final month milestone for full-site editing. So expect a lot of pathways. For now, this includes everything from having a classic theme that can take advantage of global styles to template editing or a block-based widget screen. This also includes things like allowing certain full-site editing, really, blocks to be available for users, regardless of if they&#8217;re using a classic theme or a block theme or enabling the ability to edit block templates directly, kind of like I showed in the demo earlier. So there&#8217;s going to be a ton of options here, and I&#8217;m actually really excited to see what happens once 5.8 kind of sparks the creativity of the community, because I imagine both that people will create their own pathways and start experimenting, and we&#8217;ll also get a very clear sense of, &#8220;Hey, I actually really need X, Y, and Z pathway.&#8221; We&#8217;ll get a sense of demand from the community of core, which is super exciting to have.</p>\n\n\n\n<h2 id=\"27-strong-whats-the-best-way-to-prepare-nbsp-strong\">What&#8217;s the best way to prepare?&nbsp;</h2>\n\n\n\n<p>So this depends on who you are. (laughing). So depending on whoever you are, at a high level, this is what I recommend. Join the FSE Outreach Program. I know this is the thing that I run. I&#8217;m very biased. But seriously, join it. I think it&#8217;s really, really helpful to get a sense both of feedback, what&#8217;s being currently iterated on, and just general education opportunities. If you&#8217;re a theme author, I really recommend checking out the theme experiments repo and joining the block-based theme meetings to learn about the latest and greatest, because lots of good information is shared there. In general, too, it&#8217;s often also helpful to join the weekly core editor meetings, because there&#8217;s regular updates about the projects and PRs people working on. Finally, pay attention to upcoming content on Learn WordPress, because I think there&#8217;s going to be a ton of stuff coming up about full-site editing, depending upon what&#8217;s scoped for 5.8 and 5.9, including building a block-based theme, for example. That will really help, I think, everyone level up.</p>\n\n\n\n<h2 id=\"28-strong-stay-connected-with-anne-mc-carthy-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-nbsp-strong\">Stay connected with Anne McCarthy</h2>\n\n\n\n<p>All right. So we&#8217;re at the very end. At this point, if you want to stay connected with me or you have follow-up questions after this talk, I very much welcome them. You can find me on WordPress or on Slack @annezazu, or you can reach me at my site, nomad.blog. I will also try and drop my automatic email address separately. I just won&#8217;t on a live presentation, in case you want to follow up directly via email. I&#8217;m not on Twitter. I&#8217;m not on Facebook. I&#8217;m on and off of Instagram. So please don&#8217;t try to contact me those ways.</p>\n\n\n\n<p>Finally, I just want to say thanks so much for your time. Let&#8217;s hear your questions at this point. I&#8217;m really excited to hear what you all are thinking and curious about. I do want to say I don&#8217;t know everything, but I can find anything, and I&#8217;ve talked with David about how he can follow up after this presentation to get you all information and answers that you all want to questions that I might not be able to answer. So at this point, I&#8217;m going to pass it off to live and current Anne and give a high-five from past Anne.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 16 Apr 2021 18:21:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Birgit Pauli-Haack\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:20;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WPTavern: Enō: ‘Probably This Is the Best Blogging Theme Ever’\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=115149\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:163:\"https://wptavern.com/eno-probably-this-is-the-best-blogging-theme-ever?utm_source=rss&utm_medium=rss&utm_campaign=eno-probably-this-is-the-best-blogging-theme-ever\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4460:\"<img />\n\n\n\n<p class=\"has-drop-cap\">Sometimes a theme&rsquo;s description is so moving that one must install, activate, and test the project. I often rail against the obviously keyword-stuffed text in the free WordPress theme directory. But, I am pleasantly surprised from time to time.</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>En&#333; is an elegant, modern and functional WordPress theme. Probably this is the best blogging theme ever. Just see the demo at&hellip;It supports Gutenberg block editor and has a lot of Customizer options&hellip;</p></blockquote>\n\n\n\n<p>Thus began my journey into <a href=\"https://webminimalism.com/blog/eno-wordpress-theme/\">En&#333;</a>, an upcoming theme by Ivan Fonin. I could have been partially a language-barrier thing. Or, the author could have just been having a bit of fun. Nevertheless, it was the sort of description that stood out enough to pull into my test environment. Any blogging theme claiming the title of &ldquo;the best&rdquo; was at least worth a look.</p>\n\n\n\n<p>What I found was a well-designed theme that focused on some of those timeless elements, such as generous use of whitespace and sound typography. I would not go so far as crowning it the best ever created, but it will undoubtedly be the perfect fit for many bloggers in the future.</p>\n\n\n\n<p>Currently, the theme is awaiting a review before it lands in the official WordPress theme directory. However, those who want to try it out early can snag a copy of the ZIP file from its <a href=\"https://themes.trac.wordpress.org/ticket/97585\">Trac ticket</a>.</p>\n\n\n\n<p>En&#333; tackles the intricacies of block editor design like a pro. In areas where so many &ldquo;block-ready&rdquo; themes fail to live up to expectations, it is a textbook example of working alongside the block system.</p>\n\n\n\n<p>Where it falls short is that it does not go beyond nailing down the basics of block design. The theme bundles no patterns, which would allow users to quickly drop in more advanced layouts. It also does not include block styles or even a custom color palette. There are no unique elements in the design where the author stamps his own signature in bold. It is almost formulaic, but that is not necessarily a bad thing. Formula can feel good. It can be comforting when you need something that simply gets out of the way and allows your content to shine.</p>\n\n\n\n<p>While Fonin bills the project as a blogging theme, it stands out as a solid option for photographers. The open-canvas layout leaves ample room for large images and galleries, and the <a href=\"https://demo.webminimalism.com/eno/\">theme&rsquo;s demo</a> is filled with examples.</p>\n\n\n\n<img />Gallery examples from the  En&#333; theme.\n\n\n\n<p>What would make this theme even better would be a few image and gallery styles, allowing end-users to spruce up their blocks a little more.</p>\n\n\n\n<p>As much as I like the theme, it does tick one of the boxes from my most-irritating-things-that-themes-do checklist. It outputs the featured image on single post views above the post content. This creates the dreaded double-image issue when a user also uses the same image in the post itself. The easy fix for this is to provide a theme option for not showing the featured image on single posts.</p>\n\n\n\n<img />No customizer option to disable post featured image on single views.\n\n\n\n<p>It is a surprise that the theme does not have this option because it allows users to enable or disable nearly everything possible outside of the post content. It has three different areas where metadata can be shown: before the post title, after the title, and after the content. Users can pick and choose what appears where via a series of checkboxes. The approach is convoluted at best and is a good representation of why we need the site editor. This is not so much the fault of the theme as it is a limitation of the customizer. Instead of ticking and unticking boxes, users could simply move blocks around to their desired location.</p>\n\n\n\n<p>The comments are broken in the theme at the moment. Each comment&rsquo;s text is outputting a simple comma instead of the content. I am sure this will come up in the theme review and be addressed before it goes live.</p>\n\n\n\n<p>For users looking for a minimalist, block-ready theme, this will be a solid option once it makes it through the review process. I look forward to the day when themes like En&#333; are the baseline when designing for the block system.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 16 Apr 2021 17:20:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:21;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"WPTavern: Full Site Editing Is Partly a ‘Go’ for WordPress 5.8\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=115193\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:165:\"https://wptavern.com/full-site-editing-is-partly-a-go-for-wordpress-5-8?utm_source=rss&utm_medium=rss&utm_campaign=full-site-editing-is-partly-a-go-for-wordpress-5-8\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6930:\"<p class=\"has-drop-cap\">Today, Josepha Haden Chomphosy <a href=\"https://make.wordpress.org/core/2021/04/15/full-site-editing-go-no-go-april-14-2021/\">announced the results</a> of yesterday&rsquo;s &ldquo;go/no-go&rdquo; demo and decision on <a href=\"https://wptavern.com/will-full-site-editing-land-in-wordpress-5-8-a-decision-is-forthcoming\">whether Full Site Editing (FSE) would land in WordPress 5.8</a>. The site editor and global styles are not landing in the next release. However, several other features should launch and allow users to build their sites with blocks in new ways.</p>\n\n\n\n<p>The following people attended the demo:</p>\n\n\n\n<ul><li>Mat&iacute;as Ventura &ndash; Demo Host and Gutenberg Project Lead</li><li>Matt Mullenweg &ndash; WordPress Project Lead</li><li>Helen Hou-Sand&iacute; &ndash; Lead Developer</li><li>Josepha Haden Chomphosy &ndash; Executive Director</li><li>H&eacute;ctor Prieto &ndash; Technical Project Manager</li><li>Chlo&eacute; Bringmann &ndash; Assisting with administrative and operational logistics</li></ul>\n\n\n\n<p>Ventura walked the group through the various FSE features that could be ready for WordPress 5.8, taking questions and discussing along the way. There was also a discussion afterward that focused on ideas beyond the next release.</p>\n\n\n\n<p>The following FSE-related features are expected to ship:</p>\n\n\n\n<ul><li>Improvements from Gutenberg 9.9+.</li><li>New theme-related blocks like Query, Site Logo, Navigation, and more.</li><li><code>theme.json</code> integration, which allows themes to define block defaults and settings.</li><li>Template-editing mode for the block editor.</li><li>Block-based widgets screen and customizer integration.</li><li>New block design tools, such as duotone (SVG filters for images), layout controls, padding, and more.</li></ul>\n\n\n\n<p>&ldquo;Not all of the above are currently ready but there&rsquo;s some level of confidence that they can be by the time of 5.8,&rdquo; noted Haden Chomphosy in the post.</p>\n\n\n\n<p>This list feels like a solid compromise between launching some of the more polished FSE features and trying to force in those that are probably out of reach for a July 2021 release. The features also provide current users access to new block tools without activating a block-based theme.</p>\n\n\n\n<p>The group focused on the Query block for much of the early discussion. The Gutenberg development team will likely change the block&rsquo;s user-facing name to something less confusing. It also needs a bit more polishing to make things more user-friendly.  I am interested in seeing how theme authors use this in conjunction with patterns once this launches.</p>\n\n\n\n<p>One other feature that users should look forward to is the <a href=\"https://wptavern.com/first-look-at-initial-designs-for-wordpress-block-pattern-directory\">pattern directory</a>. While it is not ready for integration into the WordPress admin UI, it does not need to be. Users will be able to copy patterns from the directory and paste them directly into their editor. In time, it should become a part of the built-in experience.</p>\n\n\n\n<p>The group seems to have made a good call on which features to include. It is easy to want to push forward and get everything into the hands of users. It can be tougher to pull back and compromise.</p>\n\n\n\n<p>Full video of the demo:</p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n\n</div>\n\n\n\n<p>I had two takeaways that stood out to me more than anything in the meeting.</p>\n\n\n\n<h2>Takeaway #1: Page Template Editor</h2>\n\n\n\n<p class=\"has-drop-cap\">In WordPress 5.8, users should gain access to the <a href=\"https://wptavern.com/first-round-of-the-fse-outreach-program-concludes-identifies-template-editing-mode-problems\">template editor</a>. On the page-editing screen, it allows users to switch out of content-editing mode. From there, they can work on the overall template. Essentially, for this release, it would serve as a landing page builder.</p>\n\n\n\n<p>This is a sort of middle ground between just the block editor and the eventual site editor. I like this route because it does not overwhelm end-users with a complete site-editing experience at once. It is a helping hand, a transition from the current phase to the next, allowing users to familiarize themselves with more advanced tools.</p>\n\n\n\n<p>The template editor will work for all users too. They will not be required to run a block-based theme to access it. Because each template would be a one-off use case, WordPress can serve this up without theme authors opting into it.</p>\n\n\n\n<p>Many block-ready themes have already been including an &ldquo;open canvas&rdquo; type of template. This would remove the need for those unless also including it for third-party builders. It would also solve the portability issue when users switch from a theme that bundles the template and one that does not.</p>\n\n\n\n<h2>Takeaway #2: Many Block-Based Themes</h2>\n\n\n\n<p class=\"has-drop-cap\">At the end of the discussion, the group was more or less spitballing some ideas beyond version 5.8. In particular, Hou-Sand&iacute; shared a vision of what theme development for the official directory could look like in the era of FSE.</p>\n\n\n\n<p>&ldquo;Because the full site editing, like from a user-facing point of view, is not about page building all the time,&rdquo; she said. &ldquo;It&rsquo;s about tweaking what&rsquo;s there. Yeah. So I feel like the correct thing for core to do in terms of bundled themes is actually a bunch of small bundled themes.&rdquo;</p>\n\n\n\n<p>I have previously written about how work on <a href=\"https://wptavern.com/work-on-the-twenty-twenty-two-default-wordpress-theme-should-already-be-underway\">Twenty Twenty-Two should already be underway</a> instead of waiting until the last moment to piece a new default theme together for the end-of-the-year launch. The yearly default theme system has served the community well for over a decade now. I am already warming to the idea of turning it on its head and forging a new path.</p>\n\n\n\n<p>With FSE, developers do not necessarily have to follow all of the rules of traditional themes. Themes like Kjell Reigstad&rsquo;s <a href=\"https://wptavern.com/carrd-like-theme-experiment-provides-a-glimpse-into-the-future-of-theming\">Carrd-like, two-column landing page theme</a> would be well-suited to such an experiment. Smaller, more experimental projects like this could replace the old Twenty* theme system with something new or even complement it.</p>\n\n\n\n<p>Hou-Sand&iacute; also threw out a few ideas around building block-based themes via a library of CC0 images, the patterns directory, and copying/pasting things from WordPress.org. She likened it to the CSS Zen Garden era. It could even open the possibility of bypassing the theme review process since everything would be pre-vetted.</p>\n\n\n\n<p>But, these are thoughts for tomorrow. For now, we are at least getting some initial FSE components.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 15 Apr 2021 21:54:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:22;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"WPTavern: Zerodium Temporarily Triples Payout to $300K for WordPress Exploits\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=115080\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:197:\"https://wptavern.com/zerodium-temporarily-triples-payout-to-300k-for-wordpress-exploits?utm_source=rss&utm_medium=rss&utm_campaign=zerodium-temporarily-triples-payout-to-300k-for-wordpress-exploits\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4216:\"<p><a href=\"https://zerodium.com/\">Zerodium</a>, one of the most well-known security vulnerability brokers, announced that it is tripling payouts for remote code execution exploits on default WordPress installations. Payouts are typically $100K but have been temporarily increased to $300K. </p>\n\n\n\n<p>The company focuses on acquiring original and previously unreported zero-day research. It pays researchers for high-risk vulnerabilities and fully functional exploits, with the highest rewards at $2.5M for &lsquo;full chain, zero-click, with persistence&rsquo; Android exploits. This price tag was increased from $200K in September 2019, suggesting Android exploits have become more difficult to find or that demand for them has increased significantly.</p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">We\'re temporarily increasing our payouts for WordPress RCEs to $300,000 per exploit (usually $100K). <br /><br />The exploit must work with latest WordPress, default install, no third-party plugins, no auth, no user interaction!<br /><br />If you have this gem, contact us: <a href=\"https://t.co/PBuS1nnpED\">https://t.co/PBuS1nnpED</a></p>&mdash; Zerodium (@Zerodium) <a href=\"https://twitter.com/Zerodium/status/1380489573009031170?ref_src=twsrc%5Etfw\">April 9, 2021</a></blockquote>\n</div>\n\n\n\n<p>Exploit resellers operate within a sort of grey area of security research. As a standard practice, security researchers are encouraged to report vulnerabilities to the original developer of the software, not an intermediary that may pass it along to a party that may not use the information for good. The appeal of these companies is that they pay more than most organizations, hence the tagline: &ldquo;<em>We pay BIG bounties, not bug bounties.&rdquo;</em></p>\n\n\n\n<p>WordPress has an account with <a href=\"https://hackerone.com/wordpress/\">Hackerone</a> to pay security researchers for vulnerabilities but <a href=\"https://hackerone.com/wordpress/hacktivity?type=team\">payouts</a> are much smaller in comparison to what exploit brokers pay. This makes it a tough choice for security researchers who do this for a living. Professional zero-day hunters are looking for the highest payouts for the vulnerabilities they find, which can sometimes take months or longer.</p>\n\n\n\n<div class=\"wp-block-image\"><img /></div>\n\n\n\n<p>Zerodium does not reveal who its clients are or what their purpose is for buying the the vulnerabilities. The best case scenario would be a government entity wanting to secure its own systems. Even then one cannot guarantee that they use the exploit ethically or that they don&rsquo;t inadvertently leak the exploits where they could be used maliciously by others. </p>\n\n\n\n<p>Zerodium did not elaborate on why it has increased payouts for WordPress exploits to $300K. <a href=\"https://blog.wpscan.com/2021/04/10/zerodium-wordpress-exploit.html\">WPScan</a> speculates that the company may suddenly have a greater demand for WordPress RCE exploits, combined with WordPress becoming more secure:</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>This could indicate that WordPress is becoming more secure and that it is getting harder to find the critical security issues that buyers want. On the other hand, we must also assume that these types of exploits already exist and are already being actively sold on Zerodium and other similar platforms.</p><p>We could also conclude that if a government is going to pay more than $300,000 on a WordPress RCE exploit, that they intend to use it. World governments may even barter over the exploits so that the seller, in this case, Zerodium, gets the best price.</p></blockquote>\n\n\n\n<p>WPScan also emphasized that with WordPress having such a large presence on the web, an exploit against core with those particular characteristics &ldquo;would be devastating to the web as a whole if it landed in the wrong hands.&rdquo;</p>\n\n\n\n<p>&ldquo;Zerodium increasing their prices may indicate that it is becoming harder to find these critical issues in WordPress Core,&rdquo; WPScan founder and CEO Ryan Dewhurst said. &ldquo;That, at least, should be good news for WordPress and the web as a whole.&rdquo;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 15 Apr 2021 18:11:04 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:23;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"WordPress.org blog: WordPress 5.7.1 Security and Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://wordpress.org/news/?p=10144\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wordpress.org/news/2021/04/wordpress-5-7-1-security-and-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:8387:\"<p>WordPress 5.7.1 is now available!</p>\n\n\n\n<p>This security and maintenance release features <a href=\"https://core.trac.wordpress.org/query?milestone=5.7.1&group=component&col=id&col=summary&col=milestone&col=owner&col=type&col=status&col=priority&order=priority\">26 bug fixes</a> in addition to two security fixes. Because this is a <strong>security release</strong>, it is recommended that you update your sites immediately. All versions since WordPress 4.7 have also been updated.</p>\n\n\n\n<p>WordPress 5.7.1 is a short-cycle security and maintenance release. The next major release will be version 5.8.</p>\n\n\n\n<p>You can download WordPress 5.7.1 by downloading from WordPress.org, or visit your Dashboard → Updates and click Update Now.</p>\n\n\n\n<p>If you have sites that support automatic background updates, they’ve already started the update process.</p>\n\n\n\n<h3>Security Updates</h3>\n\n\n\n<p>Two security issues affect WordPress versions between 4.7 and 5.7. If you haven’t yet updated to 5.7, all WordPress versions since 4.7 have also been updated to fix the following security issues:</p>\n\n\n\n<ul><li>Thank you <a href=\"https://www.sonarsource.com/\">SonarSource</a> for reporting an XXE vulnerability within the media library affecting PHP 8.</li><li>Thanks <a href=\"https://mikaelkorpela.fi/\">Mikael Korpela</a> for reporting a data exposure vulnerability within the REST API.</li></ul>\n\n\n\n<p>Thank you to all of the reporters for <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">privately disclosing the vulnerabilities</a>. This gave the security team time to fix the vulnerabilities before WordPress sites could be attacked.</p>\n\n\n\n<p>Props to <a href=\"https://profiles.wordpress.org/zieladam/\">Adam Zielinski</a>, <a href=\"https://profiles.wordpress.org/swissspidy/\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/jrf/\">Juliette Reinders Folmer</a>, <a href=\"https://profiles.wordpress.org/xknown/\">Alex Concha</a>, <a href=\"https://profiles.wordpress.org/ehtis/\">Ehtisham Siddiqui</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs/\">Timothy Jacobs</a> and the WordPress security team for their work on these issues.</p>\n\n\n\n<p>For more information, browse the <a href=\"https://core.trac.wordpress.org/query?milestone=5.7.1&group=component&col=id&col=summary&col=milestone&col=owner&col=type&col=status&col=priority&order=priority\">full list of changes</a> on Trac, or check out the <a href=\"https://wordpress.org/support/wordpress-version/version-5-7-1/\">version 5.7.1 HelpHub documentation page</a>.</p>\n\n\n\n<h2>Thanks and props!</h2>\n\n\n\n<p>The 5.7.1 release was led by <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">@peterwilsoncc</a> and <a href=\"https://profiles.wordpress.org/audrasjb/\">@audrasjb</a>.</p>\n\n\n\n<p>In addition to the security researchers and release squad members mentioned above, thank you to everyone who helped make WordPress 5.7.1 happen:</p>\n\n\n\n<p><a href=\"https://profiles.wordpress.org/ninetyninew/\">99w</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/annalamprou/\">annalamprou</a>, <a href=\"https://profiles.wordpress.org/anotherdave/\">anotherdave</a>, <a href=\"https://profiles.wordpress.org/aristath/\">Ari Stathopoulos</a>, <a href=\"https://profiles.wordpress.org/ayeshrajans/\">Ayesh Karunaratne</a>, <a href=\"https://profiles.wordpress.org/bobbingwide/\">bobbingwide</a>, <a href=\"https://profiles.wordpress.org/brechtvds/\">Brecht</a>, <a href=\"https://profiles.wordpress.org/talldanwp/\">Daniel Richards</a>, <a href=\"https://profiles.wordpress.org/davidbaumwald/\">David Baumwald</a>, <a href=\"https://profiles.wordpress.org/dkoo/\">dkoo</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling</a>, <a href=\"https://profiles.wordpress.org/dragongate/\">dragongate</a>, <a href=\"https://profiles.wordpress.org/eatsleepcode/\">eatsleepcode</a>, <a href=\"https://profiles.wordpress.org/ellatrix/\">Ella van Durpe</a>, <a href=\"https://profiles.wordpress.org/kebbet/\">Erik</a>, <a href=\"https://profiles.wordpress.org/fabianpimminger/\">Fabian Pimminger</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/mista-flo/\">Florian TIAR</a>, <a href=\"https://profiles.wordpress.org/gab81/\">gab81</a>, <a href=\"https://profiles.wordpress.org/galbaras/\">Gal Baras</a>, <a href=\"https://profiles.wordpress.org/geoffrey1963/\">Geoffrey</a>, <a href=\"https://profiles.wordpress.org/mamaduka/\">George Mamadashvili</a>, <a href=\"https://profiles.wordpress.org/glendaviesnz/\">Glen Davies</a>, <a href=\"https://profiles.wordpress.org/gziolo/\">Greg Ziółkowski</a>, <a href=\"https://profiles.wordpress.org/grzim/\">grzim</a>, <a href=\"https://profiles.wordpress.org/ipstenu/\">Ipstenu (Mika Epstein)</a>, <a href=\"https://profiles.wordpress.org/whyisjake/\">Jake Spurlock</a>, <a href=\"https://profiles.wordpress.org/jaymanpandya/\">Jayman Pandya</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/joen/\">Joen A.</a>, <a href=\"https://profiles.wordpress.org/jonkastonka/\">Johan Jonk Stenström</a>, <a href=\"https://profiles.wordpress.org/goaroundagain/\">Johannes Kinast</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby/\">John James Jacoby</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/joseeyoast/\">Josee Wouters</a>, <a href=\"https://profiles.wordpress.org/joyously/\">Joy</a>, <a href=\"https://profiles.wordpress.org/k3nsai/\">k3nsai</a>, <a href=\"https://profiles.wordpress.org/ryelle/\">Kelly Choyce-Dwan</a>, <a href=\"https://profiles.wordpress.org/gwwar/\">Kerry Liu</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius L. J.</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce-Dwan</a>, <a href=\"https://profiles.wordpress.org/mihdan/\">Mikhail Kobzarev</a>, <a href=\"https://profiles.wordpress.org/mmuyskens/\">mmuyskens</a>, <a href=\"https://profiles.wordpress.org/mukesh27/\">Mukesh Panchal</a>, <a href=\"https://profiles.wordpress.org/nicegamer7/\">nicegamer7</a>, <a href=\"https://profiles.wordpress.org/otshelnik-fm/\">Otshelnik-Fm</a>, <a href=\"https://profiles.wordpress.org/paaljoachim/\">Paal Joachim Romdahl</a>, <a href=\"https://profiles.wordpress.org/palmiak/\">palmiak</a>, <a href=\"https://profiles.wordpress.org/swissspidy/\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/pwallner/\">pwallner</a>, <a href=\"https://profiles.wordpress.org/rachelbaker/\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/youknowriad/\">Riad Benguella</a>, <a href=\"https://profiles.wordpress.org/rinatkhaziev/\">Rinat Khaziev</a>, <a href=\"https://profiles.wordpress.org/noisysocks/\">Robert Anderson</a>, <a href=\"https://profiles.wordpress.org/rogertheriault/\">Roger Theriault</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/yakimun/\">Sergey Yakimov</a>, <a href=\"https://profiles.wordpress.org/sirstuey/\">SirStuey</a>, <a href=\"https://profiles.wordpress.org/stefanjoebstl/\">stefanjoebstl</a>, <a href=\"https://profiles.wordpress.org/sabernhardt/\">Stephen Bernhardt</a>, <a href=\"https://profiles.wordpress.org/sumitsingh/\">Sumit Singh</a>, <a href=\"https://profiles.wordpress.org/cybr/\">Sybre Waaijer</a>, <a href=\"https://profiles.wordpress.org/synchro/\">Synchro</a>, <a href=\"https://profiles.wordpress.org/terriann/\">Terri Ann</a>, <a href=\"https://profiles.wordpress.org/tigertech/\">tigertech</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs/\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/tmatsuur/\">tmatsuur</a>, <a href=\"https://profiles.wordpress.org/tobiasbg/\">TobiasBg</a>, <a href=\"https://profiles.wordpress.org/hellofromtonya/\">Tonya Mork</a>, <a href=\"https://profiles.wordpress.org/toru/\">Toru Miki</a>, <a href=\"https://profiles.wordpress.org/grapplerulrich/\">Ulrich</a>, and <a href=\"https://profiles.wordpress.org/vladytimy/\">Vlad T</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 15 Apr 2021 03:05:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Peter Wilson\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:24;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"WPTavern: FSE Outreach Round #5: Venturing out a Query Quest\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=115153\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:161:\"https://wptavern.com/fse-outreach-round-5-venturing-out-a-query-quest?utm_source=rss&utm_medium=rss&utm_campaign=fse-outreach-round-5-venturing-out-a-query-quest\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5293:\"<p class=\"has-drop-cap\">The Full Site Editing (FSE) outreach program is chugging along. Since December, it has called for and completed four rounds of testing. The latest round asks volunteers to <a href=\"https://make.wordpress.org/test/2021/04/14/fse-program-testing-call-5-query-quest/\">provide feedback on the Query block</a>, arguably one of the most crucial pieces of the FSE-puzzle.</p>\n\n\n\n<p>Automattic Developer Relations Wrangler Anne McCarthy has been overseeing the program since its inception. Each round of testing asks participants to follow along with a set of instructions while testing a specific feature related to FSE. They can then provide feedback on what does or does not work. Thus far, the program has tested and identified issues for <a href=\"https://wptavern.com/first-round-of-the-fse-outreach-program-concludes-identifies-template-editing-mode-problems\">template-editing mode</a>, <a href=\"https://wptavern.com/fse-outreach-round-2-building-a-custom-homepage-with-gutenbergs-site-editor\">building a custom homepage</a>, <a href=\"https://wptavern.com/new-full-site-editing-testing-challenge-create-a-custom-404-page\">creating a 404 page</a>, and <a href=\"https://wptavern.com/fse-outreach-round-4-building-a-restaurant-themed-header-with-gutenbergs-site-editor\">wrangling a restaurant-themed header</a>.</p>\n\n\n\n<p>Volunteers for the program should install the latest version of the <a href=\"https://wordpress.org/plugins/gutenberg\">Gutenberg plugin</a> and the <a href=\"https://wordpress.org/themes/tt1-blocks/\">TT1 Blocks theme</a>. Participation is open to all, and further details are available through the announcement post.</p>\n\n\n\n<p>The latest test is all about the Query block &mdash; McCarthy is dubbing it a &ldquo;Query Quest.&rdquo;</p>\n\n\n\n<p>&ldquo;Not many blocks get an entire milestone dedicated to them but the Query Block did!&rdquo; she wrote. &ldquo;As the name implies, this is a pretty powerful block allowing you to display posts/pages on your site and customize them as you see fit. For example, you could easily use this block to show off all of your favorite recipes by setting it up to show a specific category of posts.&rdquo;</p>\n\n\n\n<p>Generally, theme authors will primarily work with this block. However, for those end-users who will inevitably want to customize post output on their sites, they may need to at least have some basic familiarity with it or its block variations.</p>\n\n\n\n<h2>Building With the Query Block</h2>\n\n\n\n<p class=\"has-drop-cap\">Following the instructions for the testing round netted fairly consistent results between the editor and front end. Each step walks participants through the process of assembling a two-column page with posts from separate categories. Within just a few minutes, I built a few demo posts with custom categories named &ldquo;Veggie Garden&rdquo; and &ldquo;Fruit Trees&rdquo; (side note: these are pics of my plants). I sped through the process with no issues.</p>\n\n\n\n<img />Using Columns to output two category-based Query blocks.\n\n\n\n<p>However, I am a bit of a pro at this point with the Query block. It is one feature I have been eyeing at least every week for months.</p>\n\n\n\n<p>The two primary issues I ran into were with the &ldquo;read more&rdquo; link and spacing. For the more-link, it simply did not appear on the front end. When viewing the source code, the wrapper HTML was there, but the actual text was nowhere to be found.</p>\n\n\n\n<p>As for spacing, this is more of a theme problem. I have harped on this issue in past testing rounds, and it is the same ol&rsquo; tune. TT1 Blocks failed to produce consistent spacing between the front and back end. One example is when using the Post Featured Image block followed by the Post Excerpt block. In the editor, there is little whitespace between the two. On the front end, there is ample room.</p>\n\n\n\n<p>Some might say it is the most vital part of page building &mdash; nailing down the layout. I have voiced my concerns <em>ad nauseam</em> on spacing, so I have nothing new to report on the subject.</p>\n\n\n\n<p>I decided to take a few extra steps and move beyond the basic testing instructions. Because it is springtime, I have been enjoying the outdoors a bit more as of late. I wanted to spruce up my Query block design. I wrapped the initial design in a Cover block with a garden-related background image, dropped in some header and intro text, and created boxes for my posts with the Group block. With a splash of color, some font-size changes, and a Spacer block here and there, I built something with a tiny bit more personality.</p>\n\n\n\n<img />Custom layout with the Query, Cover, and Columns blocks.\n\n\n\n<p>Testing never has to be boring. I encourage participants to grab inspiration from their own lives as they venture out on their Query Quest.</p>\n\n\n\n<p>While I have my complaints about the site editor and realize we are miles away from the long-term vision, it is also amazing what is now possible. Even six months ago, building something as simple as this was not happening. More and more each day, I believe a <a href=\"https://wptavern.com/will-full-site-editing-land-in-wordpress-5-8-a-decision-is-forthcoming\">public beta of the site editor</a> and other FSE components in WordPress 5.8 is not such a bad idea.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 14 Apr 2021 22:38:36 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:25;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"BuddyPress: BuddyPress 7.3.0 Maintenance &amp; Security Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://buddypress.org/?p=318066\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://buddypress.org/2021/04/buddypress-7-3-0-maintenance-security-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1768:\"<p><a href=\"https://downloads.wordpress.org/plugin/buddypress.7.3.0.zip\">BuddyPress 7.3.0</a> is now available. This is a security and maintenance release. All BuddyPress installations are strongly encouraged to upgrade as soon as possible.</p>\n\n\n\n<p>The 7.3.0 release addresses four security issues:</p>\n\n\n\n<ul><li>A vulnerability was fixed that could allow a member to create a group on behalf of another member via a REST API endpoint.</li><li>A vulnerability was fixed that could allow members to favorite any private/hidden activities they shouldn&#8217;t access to via a REST API endpoint.</li><li>A vulnerability was fixed that could allow the creator of a group to still be able to update or delete it after being demoted as a regular member of it via a REST API endpoint.</li><li>A vulnerability was fixed that could allow group&#8217;s banned members to remove themselves from the group and still be able to join it or request a membership to it via a REST API endpoint.</li></ul>\n\n\n\n<p>These vulnerabilities were reported privately to the BuddyPress team by&nbsp;<a href=\"https://profiles.wordpress.org/hoangkien1020/\">Kien Hoang</a>, in accordance with&nbsp;<a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">WordPress’s security policies</a>. Our thanks to the reporter for practicing coordinated disclosure.</p>\n\n\n\n<p>Version 7.3.0 also fixes a bug about our WP CLI Scaffold command.</p>\n\n\n\n<p>For complete details, visit the <a href=\"https://codex.buddypress.org/releases/version-7-3-0/\">7.3.0 changelog</a>.</p>\n\n\n\n<p>Update to BuddyPress 7.3.0 today in your WordPress Dashboard, or by&nbsp;<a href=\"https://wordpress.org/plugins/buddypress/\">downloading from the WordPress.org plugin repository</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 14 Apr 2021 05:09:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Mathieu Viet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:26;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"WPTavern: WordCamp Europe 2021 Opens Call for Speakers and Workshops\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=115025\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:181:\"https://wptavern.com/wordcamp-europe-2021-opens-call-for-speakers-and-workshops?utm_source=rss&utm_medium=rss&utm_campaign=wordcamp-europe-2021-opens-call-for-speakers-and-workshops\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1836:\"<p><a href=\"https://europe.wordcamp.org/2021/wceu-launch-7-june-2021/\">WordCamp Europe 2021</a> will be taking place online, June 7-10. This will be the second year in a row that the event has not been held in person due to the pandemic, but organizers are incorporating feedback from the first edition to improve upon it.</p>\n\n\n\n<p><a href=\"https://europe.wordcamp.org/2021/call-for-speakers/\">Speaker applications are now open</a> and first-time speakers are encouraged to apply. Organizers posted a list of example topics for inspiration, including advanced development, frameworks, security, storytelling, website performance optimization, and more.</p>\n\n\n\n<p>WCEU 2021 will be running two tracks, with two different presentation formats: long talks (20-minute talk with a 10-minute Q&amp;A) and lightning talks (10-minute talk with a 5-minute Q&amp;A). Prospective speakers are allowed to submit up to three different presentation topics on their <a href=\"https://europe.wordcamp.org/2021/speaker-application-form/\">applications</a>. The call for speakers is open until April 24, 2021, and selected speakers will be contacted the first week of May ahead of mid-May public announcements.</p>\n\n\n\n<p>WCEU organizers also plan to continue the successful tradition of hosting workshops after 77% of attendees who completed a feedback survey requested their return. Workshop sessions will be 45 minutes long and hosts will have workshop assistants available to them. Organizers are aiming to schedule a diverse lineup of workshops with topics like &ldquo;Starting with WordPress,&rdquo; accessibility, development, security, and SEO, to name a few.</p>\n\n\n\n<p>The <a href=\"https://europe.wordcamp.org/2021/call-for-workshops/\">call for workshops</a> is on the same timeline as speaker selection, with a closing date of April 24, 2021.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 14 Apr 2021 02:40:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:27;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:172:\"HeroPress: A Journey toward Freedom with WordPress – वर्डप्रेससंगै स्वतन्त्रता तर्फको यात्रामा\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://heropress.com/?post_type=heropress-essays&p=3529\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:152:\"https://heropress.com/essays/a-journey-toward-freedom-with-wordpress/#utm_source=rss&utm_medium=rss&utm_campaign=a-journey-toward-freedom-with-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:46477:\"<img width=\"1024\" height=\"512\" src=\"https://s20094.pcdn.co/wp-content/uploads/2022/04/041321-min.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: My WordPress job allowed the freedom to work on my time.\" /><p><a href=\"https://heropress.com/feed/#nepali\">यो लेख नेपाली भाषामा पनि उपलब्ध छ।</a></p>\n<p>Hello world!</p>\n<p>“Always be thankful for what you have, many people have nothing!” &#8211; Buddha</p>\n<p>Yes, I’m immensely grateful to be writing this essay! I’m fortunate to have had the education that gave me the capacity to aspire, get into a WordPress job, meet people from around the world, connect with Topher of HeroPress, and tell my story!</p>\n<h3>How I Landed Into a WordPress Job</h3>\n<p>My WordPress journey began by chance! Honestly, I didn’t know WordPress until I landed on a WordPress job.</p>\n<p>Back then, I was doing my Master’s degree in Sociology and had just left my work as a school teacher. I was looking for a job that would allow me to focus on my study and pay me a decent salary.</p>\n<p>I had a long career of over 5 years in teaching which was a full-time job. In addition to 9 AM to 5 PM work, we had to work extra hours at home &#8211; designing lesson plans, evaluating assignment works, exams, etc. – so I was finding it hard to manage time for my own study. I just needed a job that wouldn’t require me to work after office hours.</p>\n<p>After applying to several different positions, I finally got a content writing job. Fortunately, the company turned out to be a successful WordPress development company based in Nepal (<a href=\"https://access-keys.com/\">Access Keys</a>).</p>\n<p>Well, it’s how my WordPress story began! But it’s not the full story.</p>\n<h3>For Hope! My Family’s Struggle for Education</h3>\n<p>I come from a remote village in the hills of Nepal, not connected by any means of transportation until recently. We had to walk a minimum of an hour to go to the nearest school, from where I completed my secondary education.</p>\n<blockquote><p>But that time wasn’t just about walking hours to reach school. It was also about poverty, hardships, and the burning desire to overcome them someday!</p></blockquote>\n<p>Schools were first opened in the late 1970s in our village but my parents couldn’t even complete the lower secondary level. Pervasive poverty and lack of awareness both were responsible for it.</p>\n<p>Time passed but our family’s financial condition was still the same. But my parents had understood that the only way out of it was education. Hence, they decided to send us to school, no matter what. Our father sometimes as a seasonal migrant worker to India, sometimes as a porter, brought us (me and my siblings) school supplies. Our mother worked day and night, managed home, family, and our farm.</p>\n<p>After completing secondary level education, I moved to a nearby city in the guardianship of my aunt. With minimal financial support from my parents, my aunt helped me complete higher secondary school.</p>\n<p>However, she had her own hardships. She was a single mother without any academic degree so had to work minimum-wage jobs which hardly met her and her family’s needs.</p>\n<p>Therefore, I couldn’t simply add to her burden. And on the other side, my parents had to support my younger siblings too. So, the only choice I had, if I wanted to study further, was to support myself, for which I started teaching in a school.</p>\n<h3>Breakthrough through English Language Skills</h3>\n<p>I got my life’s first job but it wasn’t easy. I joined a private English-medium school as a teacher. But my schooling as well as the undergraduate program had been in our national language, Nepali, and not in English. We had “English” as a subject in school but the teacher taught us English in the Nepali language. We never spoke in English. Yet, my English writing was fine as I was a good student.</p>\n<p>When I joined an English medium school as a teacher, I had no choice but to improve my English. I practiced speaking English with primary-level students. Within a year, my spoken English improved considerably.</p>\n<p>Along with my teaching job, I continued my college. It was a super-busy schedule but was the only option I had! With my earnings, I paid my college fees, covered some of my living expenses, and also supported my family. Well, this is how I completed my Bachelor’s degree and started my Master’s degree too.</p>\n<p>Later on, the same teaching job that I started to sustain myself enabled me to apply for an English content writing job! As of now, I’m quite confident about my English language skills but still feel hesitant when I have to talk with native speakers.</p>\n<h3>My WordPress Journey – Toward Freedom</h3>\n<p>As I stated earlier, I landed on my first WordPress job when I was looking for the type of job that would allow me free time for my study. Yes, and that’s from where my journey toward freedom began!</p>\n<p>During my interview, I explained to the CEO of <a href=\"https://access-keys.com/\">Access Keys</a> (<a href=\"https://twitter.com/athakuri\">Arjun Singh Thakuri</a>) about the flexibility that I need in my new job so that I could also focus well on my studies. I was hired and could join from 11 AM instead of the usual 9:30 AM after attending my classes in the morning. It was a moment of gratitude and great relief for me!</p>\n<p>I learnt WordPress at Access Keys. <em><strong>First</strong></em>, by reading Wikipedia and other blogs on the web. <em><strong>Second</strong></em>, from Arjun sir as well as from the senior developers and the designers at the company. I used to have a lot of questions, and my team at Access Keys helped me get answers to those questions. <em><strong>Third</strong></em>, by doing. I set up a WordPress.com blog, a testing site on localhost, and tried different options.</p>\n<blockquote><p>My curiosity was definitely the driving force, but above all, ‘the way WordPress is built’ is what made it possible for someone like me (with no technical background) to understand a powerful website creation software, WordPress.</p></blockquote>\n<p>As for content writing skills, I started with list articles (theme collections). Arjun sir mentored me for my first few articles. Later, Access Keys hired an experienced SEO professional <a href=\"https://twitter.com/seonerdy\">Amin Ghale</a> who taught me more about SEO and content writing. He is a mentor cum brother to me.</p>\n<p>When in Access Keys, I joined WordCamp for the first time – <a href=\"https://nepal.wordcamp.org/2015/\">WordCamp Nepal 2015</a>. The event was grand! I met people involved in WordPress from other companies in Nepal and abroad, heard their stories, and learnt about new innovations in WordPress!</p>\n<p>I was truly enthralled by the event and had truly wished to give a presentation in a WordCamp someday. And I did, the very next year! I shared what I had learnt so far on the title ‘SEO Copywriting for WordPress’ at <a href=\"https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwi64ajv-_TvAhVCCM0KHdXKAVoQFjAAegQIBBAD&url=https%3A%2F%2Fkathmandu.wordcamp.org%2F2016%2F&usg=AOvVaw0nTcwn8d7MOgIp2sDtNhOD\">WordCamp Kathmandu 2016</a>.</p>\n<p>Later, I also joined a panel ‘Girls in WordPress – Story, Experience, Opportunity, and Career’ in <a href=\"https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwiCzcj_-_TvAhUJbc0KHfLUAWMQFjAAegQIBBAD&url=https%3A%2F%2Fbiratnagar.wordcamp.org%2F2018%2F&usg=AOvVaw1on2S3L2VlRRUTeN9eYsqa\">WordCamp Biratnagar 2018</a> along with a dear friend <a href=\"https://twitter.com/sandilyakafle\">Ganga Kafle</a> and my WordPress sister <a href=\"https://twitter.com/prithuthakuri\">Prithu Singh Thakuri</a>. Now, looking forward to joining some international WordCamps!</p>\n\n<a href=\"https://heropress.com/wordcampkathmandu2016speaker-srai/\"><img width=\"2048\" height=\"1349\" src=\"https://s20094.pcdn.co/wp-content/uploads/2021/04/wordcampkathmandu2016speaker-srai.jpg\" class=\"attachment-full size-full\" alt=\"Speaking at WordCamp Kathmandu 2016 S Rai\" /></a>\n<a href=\"https://heropress.com/essays/a-journey-toward-freedom-with-wordpress/wordcampbiratnagar2018panel/\"><img width=\"2048\" height=\"1365\" src=\"https://s20094.pcdn.co/wp-content/uploads/2022/04/wordcampbiratnagar2018panel.jpg\" class=\"attachment-full size-full\" alt=\"Sunita Rai on a panel at WordCamp\" /></a>\n<a href=\"https://heropress.com/essays/a-journey-toward-freedom-with-wordpress/wordcampkathmandu2017fun/\"><img width=\"2048\" height=\"1367\" src=\"https://s20094.pcdn.co/wp-content/uploads/2022/04/wordcampkathmandu2017fun.jpg\" class=\"attachment-full size-full\" alt=\"\" /></a>\n<a href=\"https://heropress.com/wordcampkathmandu2018-fun/\"><img width=\"2048\" height=\"1365\" src=\"https://s20094.pcdn.co/wp-content/uploads/2021/04/wordcampkathmandu2018-fun.jpg\" class=\"attachment-full size-full\" alt=\"A Moment of Fun at WordCamp Kathmandu 2018\" /></a>\n\n<p>About my WordPress career, I’m still in WordPress content writing.</p>\n<p>After Access Keys, I went to ThemeGrill, another successful WordPress business in Nepal, with even more flexibility and freedom in the working hours.  <a href=\"https://twitter.com/sanjipshah\">Sanjip Shah</a> and <a href=\"https://twitter.com/rabinsthaa\">Rabin Shrestha</a> (Founders of ThemeGrill) encouraged me to learn and explore this field even more. After some time, ThemeGrill hired a few new writers and I started mentoring them.</p>\n<p>Next, I joined Awesome Motive, the company behind the popular WPBeginner blog. In the beginning, I wrote for IsItWP and MonsterInsights blog but later also got the opportunity to write for WPBeginner. When at Awesome Motive, I got an even better opportunity to learn WordPress and marketing skills.</p>\n<p>My supervisors <a href=\"https://twitter.com/shahzadsaeed\">Shahzad Saeed</a> from India, <a href=\"https://twitter.com/noumaan_\">Noumaan Yaqoob</a> from Pakistan, <a href=\"https://twitter.com/LittleZotzWrite\">Lauren Tharp</a>, and <a href=\"https://twitter.com/keri_engel\">Keri Lynn Engel</a> from the United States helped me be better at my work. Above all, I was super lucky to have <a href=\"https://twitter.com/syedbalkhi\">Syed Balkhi</a> himself tutoring me every week on various aspects of content writing and marketing. I still remember how he explained the “success gap” over multiple calls, over weeks. He’s really a wonderful mentor!</p>\n<p>As of now, I work with beginners who’re just starting their careers in WordPress content writing. I’m trying to help small WordPress businesses and blogs with the marketing skills I’ve acquired so far. For example, SiteSaga.com, ZakraTheme.com are some of the sites I’m currently working on. Yet, I feel there’s a lot more for me to learn!</p>\n<p>Now, I want to make my final and important point – freedom!</p>\n<blockquote><p>First, my WordPress job allowed me the freedom to work on my time (so I could manage time for my study too). But more importantly, I meant the ‘economic freedom’.</p></blockquote>\n<p>For an individual, economic independence is a major freedom factor! Income isn’t everything, but definitely a basic aspect of human development!</p>\n<p>My salary at my first WordPress job wasn’t high, but increments since then are cool! Plus, we can always do some extra work. For instance, after my talk at WordCamp, I got a lot of freelance work opportunities, which I did during my free time and earned some extra bucks. Then, I was able to support my family even better.</p>\n<p>Finally, it&#8217;s the &#8216;feeling of freedom&#8217; that, I have now, enabled me to share this story. I always had an &#8216;inferiority complex&#8217; due to which I could never tell anyone about my family or our socio-economic background. Even if someone asked, I&#8217;d simply avoid the question or lie to them.</p>\n<p>I&#8217;ve now overcome the situation as well as the fear of being judged. And, I believe it&#8217;s the &#8216;freedom&#8217; in its truest sense.</p>\n<p>That’s my story of freedom! Story of our freedom!</p>\n<h3>Now is Great! I Have Greater Aspiration for the Future!</h3>\n<p>Yes, now is great! I have a good career as a WordPress content writer, editor, and mentor. I also joined the MPhil degree and will soon complete it.</p>\n<p>For the future, have greater aspirations!</p>\n<ol>\n<li>I hope to continue doing what I do &#8211; teaching beginners copywriting skills and help them achieve their part of freedom. WordPress is a gift for people like me!</li>\n<li>I want to earn a Doctorate degree; not yet content being a student! I haven’t planned it yet but I really wish to do it in this life!</li>\n<li>I want to give back to my community. Our village hasn’t changed much &#8211; still struggling with poverty. Even today, most students from my village fail to complete their university degree in lack of a support system. I firmly believe education is vital to change; for individuals as well as society as a whole. So, I really wish to work on it but I’m not yet sure how! I hope time will answer!</li>\n</ol>\n<p>Thanks for reading my story! Thanks, dear friend Topher for this opportunity! It’s a privilege to be sharing my story on HeroPress (feeling like a hero!). :D</p>\n<p>Thank you to every single individual who supported my journey to this date! And, thanks to the universe for everything I have!</p>\n<hr class=\"ttfmake-hr\" />\n<h1 id=\"nepali\">वर्डप्रेससंगै स्वतन्त्रता तर्फको यात्रामा</h1>\n<p>नमस्कार संसार!</p>\n<p>तपाईंसँग जे छ त्यसैमा सदैव कृतग्य रहनु, किनकी धेरै मानिसहरू संग केहि पनि हुन्न। &#8211; बुद्ध</p>\n<p>हो, म यो लेख लेख्दै गर्दा एकदमै खुसी र आभारि छु। म आफुलाई एकदमै भाग्यमानी ठान्दछु कि मैले जस्तोसुकै परिस्थितिमा पनि शिक्षा आर्जन गर्न पाए जसले मलाई सपना देख्न प्रेरित गर्यो, वर्डप्रेसमा काम गर्न सक्षम बनायो, संसारभरिका मानिससंग भेटघाट गर्ने अवसर दिलायो, हिरोप्रेसका टोफर संग भेत्न र मेरो कथा सबैसंग बाड्ने अवसर दिलायो।</p>\n<h3>मेरो वर्डप्रेस यात्राको शुरुवात</h3>\n<p>मेरो वर्डप्रेस यात्रा संयोगवश सुरु भएको हो। साच्चिकै भन्नुपर्दा मैले काम गर्न सुरु गर्नु भन्दा अगाडी मलाई वर्डप्रेसको बारेमा केही पनि थाहा थिएन।</p>\n<p>त्यो समयमा म समाजशास्त्र बिषयमा मास्टर डिग्री गरिरहेकी थिएँ। समयको अभावले गर्दा भर्खरै विद्यालय शिक्षण पेशाको काम पनि छोडेको थिएं। त्यसैले म यस्तो कामको खोजीमा थिए जुन बाट राम्रो तलब र मेरो पढाईको लागि केहि समय पनि बच्न सक्थ्यो।</p>\n<p>मैले शिक्षण पेशामा लगभग ५ बर्ष सम्म काम गरें। ती दिनहरुमा म विहान ९ बजेदेखि दिउँसो ५ बजे सम्म स्कुल पढाउथे । अनि फेरि राति अर्को दिनको कक्षाका लागि तयारी र गृहकार्य जाँच गर्दा गर्दै ठिक्क हुन्थ्यो। जसले गर्दा मलाई आफ्नो पढाई सम्हाल्न गाह्रो भइरहेको थियो। त्यसैले मलाई खासगरि अफिस समयपश्चात अरु थप काम गर्नु नपर्ने खालको काम चाहिएको थियो।</p>\n<p>धेरै खालको जागिरहरूमा आवेदन दिएपश्चात बल्ल कन्टेन्ट राइटिङ्ग (इन्टरनेटको लागि लेख लेखन) को जागिर पाए। भाग्यवश मैले काम पाएको कम्पनी वर्डप्रेस विकासको क्षेत्रमा नेपालको एक सफल कम्पनी रहेछ (<a href=\"https://access-keys.com/\">एक्सेस किइज</a>)।</p>\n<p>हो यसरी नै मेरो वर्डप्रेसको यात्रा सुरु भयो, तर यो नै सम्पुर्ण कथा भने हैन।</p>\n<h3>शिक्षाको लागि मेरो परिवारको संघर्ष र आशा</h3>\n<p>नेपाल को पहाडी भेगमा अवस्थित एउटा गाउँमा मेरो जन्म भएको हो जहाँ आवतजावत गर्नलाई अझैसम्मपनि भरपर्दो सडक अनि गाडीहरूको ब्यबस्था भएको छैन। हाम्रो घरबाट नजिकैको विद्यालय नै १ घण्टा को बाटो हिडेर पुग्नुपर्थ्यो र त्यहि विद्यालय बाट मैले कक्षा १० सम्म को अध्ययन पुरा गरें।</p>\n<blockquote><p>तर हाम्रो गाउँको त्यो समय घन्टौ हिड्नुपर्ने दुखका बारेमा मात्र थिएन। सर्वत्र ब्याप्त गरिवी, खानलाउनको लागि कठिन संघर्ष, र यि तमाम दुखबाट कुनै दिन मुक्त हुने प्रबल आकङ्क्षाको पनि समय थियो।</p></blockquote>\n<p>हाम्रो गाउँमा विद्यालय सन १९७० को दशक अन्त्य तिर खुले तर मेरो आमाबाबुले भने गरिवी र अशिक्षाको कारण निम्न माध्यमिक तहको शिक्षा सम्म पनि पुरा गर्न सक्नुभएन। समय बित्यो, हामि बिद्यालय जान थाल्यौ तर पनि हाम्रो परिवारको आर्थिक अवस्थामा भने कुनै सुधार आएको थिएन। तरपनि मेरा बुबाआमाले भने शिक्षाको महत्व बुझिसक्नु भएको थियो। त्यसैले उहाहरुले जस्तो सुकै अप्ठ्यारो परिस्थिति भए पनि हामी लाई विद्यालय पठाउने निधो गर्नुभयो।</p>\n<p>आपा (राई बान्तावा भाषामा बुबा) कहिले भारततिर मौसमी कामदार को रूपमा त कहिले भरियाको रूपमा काम गर्न जानुहुन्थ्यो। अनि फर्केर आउँदा म र मेरो बहिनीहरू लाई किताब कापी र स्कुलको कपडा हरू ल्याइदिनु हुन्थ्यो। हाम्रो आमा भने रातदिन आफैं खटेर घरपरिवार, खेतिपाती र गाइबस्तु सम्हाल्नु हुन्थो।</p>\n<p>गाउँकै बिध्यालय बाट माध्यमिक तह उत्तीर्ण गरीसके पछि म नजिकै को सहरमा फुपुसंग बस्दै पढ्न थालें। मेरो फुपुले मलाई उच्च शिक्षा हासिल गर्नमा धेरै मद्दत गर्नुभएको छ।</p>\n<p>तर त्यो बेला उहाँको लागि पनि कठिन समय थियो। कुनै पनि शैक्षिक डिग्रि नभएको एक एकल महिलाका लागि सहरमा आफु अनि आफ्नो सन्तानलाइ पाल्नु, हुर्काउनु, पढाउनु सानो दुख थिएन। उहाँले दिनभर ज्याला मजदुरि गरेर कमाएको पैसाले बिहानबेलुका को छाक टार्न मै ठिक्क हुन्थ्यो।</p>\n<p>त्यसैले म आफैंपनि उहाँमाथि अझ भार थपिन चाहन्नथे। फेरि अर्को तर्फ मेरो बाबाआमा ले पनि त अरु साना बहिनीहरू लाई हेर्नुपर्थ्यो। अब भने मसंग आफ्नो उच्च शिक्षालाइ निरन्तरता दिनको लागि एउटै मात्र बिकल्प थियो &#8211; आफैले कमाएर पढ्ने। यसैकारण मैले एउटा विद्यालयमा पढाउन शुरु गरें।</p>\n<h3>अङ्ग्रेजी भाषाको ज्ञानमार्फत उडान आरम्भ</h3>\n<p>मैले मेरो जीवनको पहिलो जागिर त पाए तर त्यो सोचेजस्तो सजिलो थिएन। मैले शिक्षक को रूपमा एक निजी विद्यालयमा प्रबेश गरे। तर म आफैले भने सरकारी विद्यालयमा पढेको थिए जहाँ नेपाली भाषामा पढाई हुन्थ्यो। हाम्रो कक्षामा अङ्ग्रेजी एउटा मात्र अनिवार्य विषय थियो तर त्यो पनि शिक्षकहरु ले नेपाली भाषामा नै पढाउनु हुन्थ्यो। हामीले कहिल्यै पनि अङ्ग्रेजी भाषा बोलेनौं। यधपी म राम्रो बिध्यार्थीहरु मध्यको एक थिए, जसकारण मेरो अङ्ग्रेजी लेखन भने सामान्यतया राम्रो नै थियो।</p>\n<p>मैले अङ्ग्रेजी शिक्षकको रूपमा पढाउन थालिसके पछि भने मसंग अङ्ग्रेजी सुधार्नु भन्दा अरू कुनै उपाए थिएन। त्यसैले मैले प्राथमिक तहका बिध्यार्थीहरूसँग अङ्ग्रेजीमा बोल्न सुरु गरें। फलस्वरूप एकवर्ष भित्र मेरो अङ्ग्रेजी बोलाईमा धेरै सुधार आयो।</p>\n<p>शिक्षण पेशासंगै मैले मेरो पढाईलाई पनि अगाडि बढाउदै लगें। त्यो बेला मेरो दैनिकि धेरै नै व्यस्त थियो, तर फेरि अर्को विकल्प पनि त थिएन। मेरो तलबले आफ्नो पढाई खर्च जुटाउँदै अलिअलि परिवार लाई पनि सहयोग गर्न थाले। हो यसरी नै मैले ब्याचलर डिग्री पुरा गरें र मास्टर डिग्री पनि शुरु गरें।</p>\n<p>मैले आफ्नो आवश्यकता पुर्ति गर्नको लागि सुरु गरेको शिक्षण पेशाले नै मलाई अङ्ग्रेजी कन्टेन्ट राइटिङ्गको जागिरमा आवेदन दिने साहस दियो। अहिलेको कु्रा गर्ने हो भने, म मेरो अङ्ग्रेजी भाषाको बोलाई र लेखाईसंग केही हदसम्म विश्वस्त छु तर अझै पनि अङ्ग्रेजी नै मातृभाषा भएका बिदेशिहरुका अगाडि बोल्न भने केहि हिच्किचाउछु।</p>\n<h3>मेरो वर्डप्रेस यात्राः स्वतन्त्रता तिर</h3>\n<p>मैले अगाडि नै भनेको जस्तै मेरो पढाईलाई हानी नगर्ने खालको काम खोज्दै गर्दा संयोगवश वर्डप्रेसमा प्रवेश गरेको थिएँ। र यहि बाट नै मेरो स्वतन्त्रता तिर को यात्रा सुरु भएको हो।</p>\n<p>मैले कामको लागि अन्तर्वार्ता दिँदै गर्दा नै <a href=\"https://access-keys.com/\">एक्सेस किइज</a> कम्पनीको प्रमुख (<a href=\"https://twitter.com/athakuri\">अर्जुन सिंह ठकुरी</a>) संग आफ्नो पढाईको लागि चाहिने समयको बारेमा पनि कुरा गरेको थिएँ। उहाँले सजिलैसंग सहमति जनाउनु भयो। फलस्वरूप मैले आफ्नो बिहान को कलेज सकेर ११ बजेदेखि कार्यालय जाने भए जबकि अफिस समय भने ९ः३० बजे नै शुरु हुन्थ्यो। त्यो पल मेरो लागि कृतज्ञता र ठूलो राहतको क्षण थियो।</p>\n<p>एक्सेस किइज कम्पनीमा काम गर्दा नै मैले वर्डप्रेस सिके। <em><strong>पहिलो</strong></em>, विकिपीडिया र अन्य ब्लग हरूलाई धेरै पढे। <em><strong>दोस्रो</strong></em>, नजानेको सानासाना कुराहरू अर्जुन सर र अरू अनुभबी कर्मचारी (डेभलपर, डिजाइनर) हरु संग सोध्थे। र उहाँ हरूले पनि धेरै सहयोग गर्नुहुन्थ्यो। <em><strong>तेस्रो</strong></em>, मैले आफैले वर्डप्रेस डटकम ब्लग स्थापना गरें, परिक्षणका लागि वेबसाइट बनाए र त्यहाँ हरेक कुरा जान्ने र बुझ्ने कोशिस गरे।</p>\n<blockquote><p>अवश्य पनि मेरो जिज्ञासु भावना नै मलाई अगाडि बढाउने शक्ती थियो। यधपी म जस्तो प्राविधिक पृष्ठभूमि नभएको ब्यक्तिलाई वेबसाइट बनाउन सक्ने शक्तिशाली सफ्टवेयर, वर्डप्रेस को बारेमा बुझाउनमा भने वर्डप्रेस आफै सरल हुनु र इन्टरनेटमा प्रशस्ट सामग्रि पाइनुको ठूलो भुमिका छ।</p></blockquote>\n<p>मैले कन्टेन्ट राइटिङ्ग गर्ने क्रमको शुरुवात भने वर्डप्रेस थिमको सुचि बनाउने लेखहरुबाट गरें। सुरूको लेखहरूमा अर्जुन सर नै मेरो सल्लाहकारको रूपमा रहनु भयो। पछि एक्सेस किइज कम्पनीले अनुभबी एसईओ विज्ञ <a href=\"https://twitter.com/seonerdy\">अमिन घले</a> लाइ नियुक्ति गर्यो र उहाँले नै मलाई धेरै कुराहरु सिकाउनुभयो। उहा मेरो गुरुका साथै दाई पनि हुनुहुन्छ।</p>\n<p>म एक्सेस किइज कम्पनीमा काम गरिरहेकै बखत पहिलो पटक “<a href=\"https://nepal.wordcamp.org/2015/\">वर्डक्याम्प नेपाल २०१५</a>“ मा सहभागी भए। यो कार्यक्रम भव्य थियो। मैले त्यहाँ वर्डप्रेसमा काम गर्ने नेपालका तथा अन्य देशबाट आएका ब्यक्तिहरुसंग भेटें, उनीहरूको कथा सुने र वर्डप्रेसको बारेमा अझ नयाँनयाँ कुराहरु थाहा पाए।</p>\n<p>म त्यो कार्यक्रमबाट धेरै नै प्रभावित भए र त्यतिबेलानै कुनै दिन वर्डक्याम्पमा वक्तव्य दिने अठोट गरे। नभन्दै मैले अर्को सालको &#8220;<a href=\"https://kathmandu.wordcamp.org/2016/\">वर्डक्याम्प काठमान्डु २०१६</a>“ मा वक्ता को रूपमा सहभागी भए र “वर्डप्रेसको लागि एसइओ कपिराईटिङ“ शिर्षक मा वक्तव्य दिए।</p>\n<p>पछि फेरि बिराटनगर मा आयोजना भएको “<a href=\"https://biratnagar.wordcamp.org/2018/\">वर्डक्याम्प बिराटनगर २०१८</a>“ मा पनि सहभागी भए। यसमा म, साथी <a href=\"https://twitter.com/sandilyakafle\">गंगा काफ्ले</a> र प्यारी बहिनी <a href=\"https://twitter.com/prithuthakuri\">प्रिठु शिंह थकुरी</a>ले “वर्डप्रेसमा केटीहरुः अनुभव, कथा, अवसर, र चुनौती“ शिर्षक मा छलफल गरेका थियौ। अब भने, मलाई अरु अन्तर्राष्ट्रिय वर्डक्याम्प हरूमा सहभागी हुन मन छ।</p>\n\n<a href=\"https://heropress.com/wordcampkathmandu2016speaker-srai-1/\"><img width=\"2048\" height=\"1349\" src=\"https://s20094.pcdn.co/wp-content/uploads/2021/04/wordcampkathmandu2016speaker-srai-1.jpg\" class=\"attachment-full size-full\" alt=\"वर्डक्याम्प काठमान्डु २०१६ मा प्रस्तुति दिदै गर्दा\" /></a>\n<a href=\"https://heropress.com/essays/a-journey-toward-freedom-with-wordpress/wordcampbiratnagar2018panel-2/\"><img width=\"2048\" height=\"1365\" src=\"https://s20094.pcdn.co/wp-content/uploads/2022/04/wordcampbiratnagar2018panel-1.jpg\" class=\"attachment-full size-full\" alt=\"वर्डक्याम्प बिराटनगर २०१८ मा एक प्यानलमा बोल्दै गर्दा\" /></a>\n<a href=\"https://heropress.com/wordcampkathmandu2017fun-1/\"><img width=\"2048\" height=\"1367\" src=\"https://s20094.pcdn.co/wp-content/uploads/2021/04/wordcampkathmandu2017fun-1.jpg\" class=\"attachment-full size-full\" alt=\"वर्डक्याम्प काठमान्डु २०१७ मा वर्डप्रेसको मेरो दाजुभाइहरु सँग फोटो खिच्दै\" /></a>\n<a href=\"https://heropress.com/wordcampkathmandu2018-fun1/\"><img width=\"2048\" height=\"1365\" src=\"https://s20094.pcdn.co/wp-content/uploads/2021/04/wordcampkathmandu2018-fun1.jpg\" class=\"attachment-full size-full\" alt=\"वर्डक्याम्प काठमान्डु २०१८ मा एक रमाइलो क्षण\" /></a>\n\n<p>म अझै पनि वर्डप्रेस कन्टेन्ट राइटिङ्ग नै गर्छु।</p>\n<p>मैले एक्सेस किइजमा काम गरिसके पछि नेपालको अर्को सफल कम्पनी थिमग्रिलमा प्रवेश गरे। त्यहाँ अझै धेरै काममा सौलियत र समयमा लचकता थियो। थिमग्रिल कम्पनी का संस्थापक-सन्चालक द्वय <a href=\"https://twitter.com/sanjipshah\">सन्जिप शाह</a> र <a href=\"https://twitter.com/rabinsthaa\">रबिन श्रेष्ठ</a> सरले झन धेरै कुरा सिक्ने हौसला दिनुभयो। केही समय पछाडि कम्पनी ले नयाँनयाँ लेखकहरु ल्यायो र मैले उनीहरूलाई सिकाउन थाले।</p>\n<p>पछि मैले अमेरिकामा अवस्थित अवसम मोटिभ कम्पनीमा पनि काम गरें। सुरु सुरुमा “इजइटडब्लुपि“ र “मन्स्टरइनसाइट्स“ ब्लगमा लेखे र पछि “डब्लुपिबिगिनर“ मा पनि लेख्ने मौका पाएं। म यसै कम्पनीमा काम गरिरहेकै बेला वर्डप्रेस र मार्केटिङ सम्बन्धि अझ धेरै कुरा जान्ने मौका पाए।</p>\n<p>मेरो काममा सुधार आउनुमा मुख्यतया मेरो निरिक्षक <a href=\"https://twitter.com/shahzadsaeed\">साहजाद सइद</a> (भारतबाट), <a href=\"https://twitter.com/noumaan_\">नवमान याकुब</a> (पाकिस्तानबाट), <a href=\"https://twitter.com/LittleZotzWrite\">लउरेन थार्प</a> र <a href=\"https://twitter.com/keri_engel\">केरि लिन एन्जेल</a> (अमेरिकाबाट) को धेरै ठूलो भुमिका छ। यतिमात्र हैन कम्पनीको प्रमुख <a href=\"https://twitter.com/syedbalkhi\">शाइद बाल्खि</a> संग काम गर्न पाउनु पनि मेरो लागि भाग्यको कुरा थियो। उहाँले मलाई प्रत्येक हप्ता कन्टेन्ट राइटिङ्ग को बारेमा बिस्तृत रुपमा सिकाउनु हुन्थ्यो। मलाई अझै याद छ उहाँले थुप्रै पटकको संवादमा “सफलताको अन्तर&#8221; को बारेमा सिकाउनु भएको थियो। उहाँ साच्चिकै राम्रो प्रशिक्षक सल्लाहकार हुनुहुन्छ।</p>\n<p>अब अहिलेको कुरा! हाल म वर्डप्रेस लेख लेखन क्षेत्रमा भर्खर आउदै गरेका ब्यक्तिहरु संग काम गर्छु। मैले अहिलेसम्म बटुलेको अनुभवहरु को माध्यमबाट साना वर्डप्रेस विजिनेश र ब्लग लाई सहयोग गर्न खोजिरहेको छु। जस्तो कि म अहिले “साइटसागा डटकम“ र “जाक्राथिम डटकम“ मा कार्यरत छु। यधपि मेरो आफ्नै सिक्ने क्रम भने सदैब जारि नै छ।</p>\n<p>अब भने म आफुलाइ लागेको सबभन्दा महत्वपुर्ण कुरा भन्न चाहान्छ। यो क्षेत्रमा मैले पाएको सबभन्दा महत्वपूर्ण कुरा भनेको “स्वतन्त्रता“ हो।</p>\n<blockquote><p>सर्वप्रथम त मेरो वर्डप्रेसको कामले मलाई समयको स्वतन्त्रता दिलायो। मेरो मतलब यो काम म आफुले भ्याएको समयमा गर्न सक्थे जसले गर्दा मेरो आफ्नै पढाईको लागि समय छुटाउन पाए। अनि दोस्रो कुरा भनेको “आर्थिक स्वतन्त्रता“।</p></blockquote>\n<p>आर्थिक आत्मनिर्भरता प्रत्येक व्यक्तिकालागि स्वतन्त्रता प्राप्तिको एक प्रमुख आधार हो। आम्दानी नै सबै कुरा हो भन्ने त होइन तर यो मानव विकासको एक आधारभुत पक्ष भने अवश्य पनि हो।</p>\n<p>वर्डप्रेसमा मेरो शुरुको तलब ठिकै मात्र थियो तर यसको वृद्धि क्रमशः राम्रो हुदै गयो। उदाहरणका लागि, मैले वर्डक्याम्पमा वक्तव्य दिइसकेपछि भने मलाई अरू पनि धेरै फ्रिल्यान्सिङ्ग काम गर्ने अवसरहरू पाए जुन काम मैले खालि समयमा गर्थे र केही थप पैसा पनि कमाए। त्यसपछि मैले मेरो परिवारलाई पनि राम्ररि सहयोग गर्न थाले।</p>\n<p>अबभने, म स्वतन्त्रता बारे अन्तिम कुरा भन्न चाहान्छु। मलाइ लाग्छ यो स्वतन्त्रताको अनुभुति नै त हो जसले मलाइ यो लेख लेख्न सक्षम बनायो। किनभने मलाइ जहिल्यै पनि लघुताबासले थिचिरहन्थ्यो र आफ्नो परिवार अनि आफ्नो सामाजिक-आर्थिक अवस्थाबारे कसैलाइ पनि भन्न सक्दिनथे या चाहान्नथे। यदि कसैले सोधिहाले पनि, म त्यो प्रश्नलाइ बेवास्ता गर्थे वा ढाटेर जवाफ दिन्थे।</p>\n<p>अहिलेको सन्दर्भको कुरा गर्दा, मैले त्यो परिस्थिति र अरुले के सोच्छन भन्ने डर दुबैमाथि जित हासिल गरेझै लाग्छ। र मलाइ यो नै साचो अर्थमा &#8216;स्वतन्त्रता&#8217; हो जस्तो लाग्छ।</p>\n<p>यही हो मेरो स्वतन्त्रता को कथा! हाम्रो स्वतन्त्रता को कथा!</p>\n<h3>आज राम्रो छ र मसँग अझै ठुला आकांक्षाहरु छन् भविष्यको लागि!</h3>\n<p>हो, मेरो वर्तमान राम्रो छ! वर्डप्रेस कन्टेन्ट राइटर, एडिटर, र सल्लाहाकार रूपमा मेरो करियर राम्रो छ। म एमफिल डिग्री पनि गर्दैछु र छिट्टै पुरा पनि गर्नेछु।</p>\n<p>तर अझपनि भविष्यको लागि मेरा धेरै ठुला आकांक्षाहरु छन्!</p>\n<ol>\n<li>म जे गरिरहेको छु त्यसैलाई निरन्तरता दिन चाहन्छु &#8211; नयाँ लेखकहरुलाई कपिराइटिङ्गको सिप सिकाउदै स्वतन्त्रता को अनुभुति दिलाउन। म जस्तो मान्छेहरू को लागि वर्डप्रेस एक अमुल्य उपहार हो।</li>\n<li>म कुनैदिन विद्यावारिधि गर्न चाहन्छु। यसको लागि यतिबेला भने कुनै योजना बनाएको छैन तर जसरी पनि यसै जुनिमा पुरा गर्ने इच्छा छ।</li>\n<li>म मेरो समुदायलाई सहयोग गर्न चाहन्छु। हाम्रो गाउँमा अझै पनि धेरै परिवर्तन आएको छैन – गरिबीको अवस्था यथावत् नै छ। राम्रो सहयोग प्रणालीको अभावमा अहिले पनि मेरो गाउँका धेरै जसो विद्यार्थीहरु स्नातक तह सम्मको अध्ययन पुरा गर्न सम्म असमर्थ छन्। मलाइ चै ब्यक्ति र समाज सबैको परिवर्तन को लागि शिक्षा एक्दमै महत्वपुर्ण हुन्छ भन्ने कुरामा दृढ विश्वास छ। त्यसैले म यो क्षेत्रमा काम गर्न चाहन्छु, तर कसरी गर्ने भन्ने कुरा भने थाहा छैन! मलाई आशा छ, समयले मेरो प्रश्नको जवाफ अवश्य दिनेछ!</li>\n</ol>\n<p>मेरो कथा पढ्नुभएको यहाँहरु सबैलाई धन्यवाद! मुख्यतः मलाई यो अवसर दिने साथी टोफर लाई धेरै धेरै धन्यवाद! हिरोप्रेसमा मेरो कथा सुनाउन पाउँदा म धेरै नै खुसि छु (आफुलाइ हिरो जस्तै महसुस गरिरहेकोछु)।</p>\n<p>मलाई यो स्थान सम्म पुग्न मद्दत गर्ने सम्पूर्ण व्याक्तीहरूलाई धेरै धेरै धन्यवाद! मैले पाएका सम्पूर्ण चिजहरुको लागि ब्रह्माण्ड लाई धन्यवाद!</p>\n<p>The post <a rel=\"nofollow\" href=\"https://heropress.com/essays/a-journey-toward-freedom-with-wordpress/\">A Journey toward Freedom with WordPress &#8211; वर्डप्रेससंगै स्वतन्त्रता तर्फको यात्रामा</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 14 Apr 2021 02:24:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Sunita Rai\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:28;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"WPTavern: Yet Another WordPress Block Library Plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=115095\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:149:\"https://wptavern.com/yet-another-wordpress-block-library-plugin?utm_source=rss&utm_medium=rss&utm_campaign=yet-another-wordpress-block-library-plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4107:\"<p class=\"has-drop-cap\">You are the team manager at a WordPress development company. You just spent the last couple of months directing the group of highly skilled developers that you oversee to create the latest and greatest block library for WordPress. Your developers just spent those two months recreating what has already been done at least a couple of dozen times.</p>\n\n\n\n<p>You go through your product launch list:</p>\n\n\n\n<p><em>Testimonial block?</em> Check.</p>\n\n\n\n<p><em>Accordion block?</em> Check.</p>\n\n\n\n<p><em>Countdown block?</em> Check.</p>\n\n\n\n<p><em>Meme-creation block?</em> Coming in version 2.0.</p>\n\n\n\n<p>Everything seems to be in order. Your company has a new and shiny wheel, a bullet point on its product list, and a promise to end-users that you are keeping up with the times, launching a set of blocks that they can pick up literally anywhere else. But, yours is better because you built it in-house.</p>\n\n\n\n<p>Color me unimpressed.</p>\n\n\n\n<p>Maybe you are just trying to make a dent in the market, grabbing your share of the pie that companies have been snacking on for the last couple of years. Every time I see another forms plugin, I wonder how they will remain competitive, but there have been success stories. However, the ones who tell those stories always had a fresh take on an old concept.</p>\n\n\n\n<p>I worry about the upcoming years when the block market is simply a race to the bottom. Everyone has built their plugin with 100+ blocks, 500+ patterns, and more customization options than you can count. It is the story of the early ThemeForest days where premium themes amassed a gluttonous amount of theme options. The top sellers were continually one-upping each other with another notch on their feature lists.</p>\n\n\n\n<p>As a user, developer, and journalist who writes about these products, I am often lost. I look at a new plugin and ask myself if I had already checked it out and dismissed it last week. I am always searching for something innovative, but the lines between one project to the next are blurry. I am swirling in a sea of icon, shape divider, post list, and container blocks &mdash; just looking for a life preserver to pull myself out.</p>\n\n\n\n<p>Don&rsquo;t get me wrong. I am a wheel recreator myself. I have built products that others had already created. In some cases, I launched something better. In others, I failed miserably. I may be a little biased, but I always felt like I was bringing something new to the table. And that is where I take issue.</p>\n\n\n\n<p>I want to see you create a block that no one has ever done before, such as <a href=\"https://wptavern.com/display-digital-sheet-music-with-the-wordpress-block-editor\">drawing digital sheet music</a> or a <a href=\"https://wptavern.com/block-a-saurus-embeds-a-side-scrolling-t-rex-game-via-the-block-editor\">side-scrolling T-Rex game</a>.</p>\n\n\n\n<p>I want to see you extend the editor with new tools like <a href=\"https://wptavern.com/emoji-conbini-and-the-case-for-a-block-enhancements-directory\">inserting Emoji</a> or <a href=\"https://wptavern.com/insert-font-awesome-icons-into-the-block-editor-via-the-jvm-gutenberg-rich-text-icons-plugin\">Font Awesome icons</a> into Rich Text.</p>\n\n\n\n<p>I want to see you overhaul the editor and create a <a href=\"https://wptavern.com/new-iceberg-plugin-brings-a-distraction-free-writing-experience-to-wordpress\">Markdown-friendly experience</a>.</p>\n\n\n\n<p>Instead of an &ldquo;advanced&rdquo; list block of your own design, create a plugin that extends the core List block with custom options. Skip that custom gallery. <a href=\"https://wptavern.com/automatically-create-image-slideshows-with-the-full-screen-galleries-plugin\">Bring something new</a> to the existing Gallery block. Got a custom music player? Use it to overhaul the Audio block instead of wrapping it up separately.</p>\n\n\n\n<p>The community has all the tabs, buttons, and progress bars it can handle. Of course, if you are raising the bar on all of these same ol&rsquo; blocks, keep pushing forward. Let&rsquo;s see what you can do. Otherwise, keep thinking outside of the box.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 13 Apr 2021 20:34:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:29;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"WordPress.org blog: People of WordPress: Tyler Lau\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://wordpress.org/news/?p=10102\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://wordpress.org/news/2021/04/people-of-wordpress-tyler-lau/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:9022:\"<p><em>WordPress is open source software, maintained by a global network of contributors. There are many examples of how WordPress has changed people’s lives for the better. In this monthly series, we share some of the amazing stories that are lesser-known.</em></p>\n\n\n\n<h2><strong>Embrace Who You Are and Your Journey</strong></h2>\n\n\n\n<p>In this People of WordPress contributor story, we chat to Tyler Lau from the US on his relationship building work in marketing and his WordPress journey.</p>\n\n\n\n<p>Read on to discover his story which shows it is often what you have learned from negative experiences in your life that can make you a major asset to a product team.</p>\n\n\n\n<img src=\"https://i1.wp.com/wordpress.org/news/files/2021/04/people-of-wp-tyler-thumb.jpg?resize=632%2C464&ssl=1\" alt=\"Tyler Lau stood in front of a colorful mural\" class=\"wp-image-10116\" width=\"632\" height=\"464\" />\n\n\n\n<h2><strong>An Entrepreneurial Mindset</strong></h2>\n\n\n\n<p>Tyler recalls he always had a knack for spotting a enterprise ideas. As an industrious seven-year-old, he was already finding ways to make sales during the school breaks.&nbsp;</p>\n\n\n\n<p>While many entrepreneurs have similar stories, Tyler’s path took many turns before he discovered and thrived in the WordPress community.</p>\n\n\n\n<p>He was drawn to both the software and the community that surrounds it from his search for personal and professional freedom. He ultimately was able to combine his various business interests and people skills into professional marketing work.</p>\n\n\n\n<h2><strong>Using your skills to uncover your journey</strong></h2>\n\n\n\n<img src=\"https://i0.wp.com/wordpress.org/news/files/2021/04/people-of-wp-tyler-2.jpg?resize=632%2C758&ssl=1\" alt=\"Tyler Lau pictured sat on a chair using his mobile phone in his social media work\" class=\"wp-image-10118\" width=\"632\" height=\"758\" />\n\n\n\n<p>Tyler’s current role is as a Marketing Relationship Builder, based in Kansas, USA. His responsibilities span across all digital properties and products, leveraging his broad set of business and people skills.</p>\n\n\n\n<p>These skills are amplified by his creativity and adaptability. Tyler says that one reason he is always looking for new projects is his Attention Deficit Hyperactivity Disorder (ADHD), a diagnosis he received in 2005.</p>\n\n\n\n<p>In an industry built by programmers and developers who often have a strong sense of focus, Tyler felt that someone with ADHD wouldn’t be seen as a natural fit. He found the WordPress community to be a place where everyone can find the right spot for their unique skills. Tyler’s skill is people, and this has translated into many opportunities and responsibilities in his work life. His skills have also helped him give back to the WordPress community as a speaker and volunteer, and through multiple contributor days.</p>\n\n\n\n<h2><strong>Relationship-building as a career</strong></h2>\n\n\n\n<p>Most of Tyler’s experience was in the restaurant industry, and his resume did not exactly point to a career in tech. But the service industry actually prepared him well for everything he has taken on since.</p>\n\n\n\n<p>When he is at work events, he meets people from across the world and builds connections with them. As an extrovert, he enjoys this and couldn’t imagine a job where he was isolated from getting to know others and relationship-building.</p>\n\n\n\n<p>Understanding people and being able to operate in any setting are key competencies. Social skills and tact are useful for community building in the WordPress space too, and in Tyler’s life at different times it has been necessary for survival. </p>\n\n\n\n<h2><strong>The true meaning of freedom</strong></h2>\n\n\n\n<p>In the WordPress community, the concept of freedom comes up often. WordPress is built on GPL, free software, and open-source values. Practically speaking, anyone can work remotely or be their own boss to gain more freedom in work and life.&nbsp;Tyler feels that he never fitted into a traditional work mould. With his strong focus on freedom, he found this resonated with the freedom and opportunities he believes WordPress provides him and thousands of others.</p>\n\n\n\n<p>Tyler describes how in 2013 his ‘inner opportunist’ got him into trouble. After dropping out of college following a brain aneurysm, he needed capital to fund his first startup.&nbsp;He shares that he found a quick but unlawful way to make money. Alongside this between shifts as a waiter, he worked on prototypes for his first product. The company was growing fast, and to protect his patents and take research and development to the next level, he had to work hard. Everything came to a halt when some of the actions he took resulted in being sent to prison.  </p>\n\n\n\n<p>He says that meeting other inmates reminded him that he was in a much better situation than most. He was educated, well-off, loved, and knew he had a future once he was released. He found that many inmates never graduated from high school and were computer illiterate. While inside, Tyler taught subjects like science, math, writing, reading, and social studies. He found that due to the lack of skills and support, many inmates would struggle upon release. He believes getting the mental health support and job training needed to thrive after prison is not easy for many.</p>\n\n\n\n<p>“<em>There’s more to freedom than just being on the outside. You also need a sense of agency and enfranchisement,</em>” says Tyler. He considered his sense of purpose and support network were plenty to keep him going and was ready to take on his next (legal) business challenge as soon as he could.</p>\n\n\n\n<h2>Going forward positively&nbsp;</h2>\n\n\n\n<img width=\"632\" height=\"632\" src=\"https://i0.wp.com/wordpress.org/news/files/2021/04/FF50DF21-38AA-4778-B465-C2DF0B441AD7.jpeg?resize=632%2C632&ssl=1\" alt=\"Tyler Lau portrait picture\" class=\"wp-image-10139\" />\n\n\n\n<p>The idea that your past doesn’t define you and you can choose to embrace it, is a key driver for Tyler.</p>\n\n\n\n<p>He describes himself as an outlier in many ways. He recalls how politics influenced his life from the day he was born. Tyler’s father is a semi-dissident Chinese visual anthropologist, his mother is an art professor who left her home country of Japan to break free from traditional Japanese gender roles. Tyler feels he inherited a lot of this fearlessness.</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>“<em>I’ve never fitted in, and yet this is what makes me able to adapt to most situations and relate to just about anyone. I embrace my eclectic, dissonant past and see beauty in the person those experiences shaped me to be</em>,” says Tyler.&nbsp;</p></blockquote>\n\n\n\n<p>Now, he’s able to put those skills to good use in the WordPress community and beyond.&nbsp;</p>\n\n\n\n<p>He says: “<em>Regardless of your physical abilities, mental health struggles, upbringing, and even your run-ins with the law, no one is excluded from carving their place in the WordPress industry</em>”.<br /></p>\n\n\n\n<h2><strong>Contributors</strong></h2>\n\n\n\n<p>Thank you to Tyler Lau (<a href=\"https://profiles.wordpress.org/tylermaximus/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>tylermaximus</a>) for sharing his #ContributorStory.</p>\n\n\n\n<p>Thanks to Larissa Murillo (<a href=\"https://profiles.wordpress.org/lmurillom/\">@lmurillom</a>), Surendra Thakor (<a href=\"https://profiles.wordpress.org/sthakor/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>sthakor</a>), Olga Gleckler (<a href=\"https://profiles.wordpress.org/oglekler/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>oglekler</a>), Meher Bala (<a href=\"https://profiles.wordpress.org/meher/\">@meher</a>), Yvette Sonneveld (<a href=\"https://profiles.wordpress.org/yvettesonneveld/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>yvettesonneveld</a>), Abha Thakor (<a href=\"https://profiles.wordpress.org/webcommsat/\">@webcommsat</a>), Josepha Haden (<a href=\"https://profiles.wordpress.org/chanthaboune/\">@chanthaboune</a>), Chloé Bringmann (<a href=\"https://profiles.wordpress.org/cbringmann/\">@cbringmann</a>) and Topher DeRosia (<a href=\"https://profiles.wordpress.org/topher1kenobe/\">@topher1kenobe</a>) for working on the People of WordPress series.</p>\n\n\n\n<img src=\"https://lh3.googleusercontent.com/Y3odYTyvSfJbVxUxUWEgKxOprox2zxVwhk7_vdW-AIs4IlE-jK0Zt1itCj867x0dIAbIiK-VeuTLMZr6BjNEY0fkTf--4dT1hkLbnGtsPFNfyrVBYIN59IirTkNnqiQgqxk6E1MI\" alt=\"HeroPress logo\" />\n\n\n\n<p><em>This post is based on an article originally published on HeroPress.com, a community initiative created by&nbsp;</em><a href=\"https://profiles.wordpress.org/topher1kenobe/\"><em>Topher DeRosia</em></a><em>. It highlights people in the WordPress community who have overcome barriers and whose stories would otherwise go unheard.</em></p>\n\n\n\n<p><em>Meet more WordPress community members in our&nbsp;<a href=\"https://wordpress.org/news/category/heropress/\">People of WordPress</a>&nbsp;series.</em></p>\n\n\n\n<p><em>#ContributorStory #HeroPress</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 13 Apr 2021 13:47:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"webcommsat AbhaNonStopNewsUK\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:30;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:100:\"WPTavern: Free Software Foundation Unrelenting on Stallman Reinstatement: “We Missed His Wisdom”\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=115008\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:231:\"https://wptavern.com/free-software-foundation-unrelenting-on-stallman-reinstatement-we-missed-his-wisdom?utm_source=rss&utm_medium=rss&utm_campaign=free-software-foundation-unrelenting-on-stallman-reinstatement-we-missed-his-wisdom\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:8324:\"<p>The Free Software Foundation has <a href=\"https://www.fsf.org/news/statement-of-fsf-board-on-election-of-richard-stallman\">published</a> a public explanation of why they decided to reinstate Richard Stallman to the board of directors last month:</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>&ldquo;The voting members of the Free Software Foundation, which include the board of directors, voted to appoint Richard Stallman to a board seat after several months of thorough discussion and thoughtful deliberation.</p><p>We decided to bring RMS back because we missed his wisdom. His historical, legal and technical acumen on free software is unrivaled. He has a deep sensitivity to the ways that technologies can contribute to both the enhancement and the diminution of basic human rights. His global network of connections is invaluable. He remains the most articulate philosopher and an unquestionably dedicated advocate of freedom in computing.&rdquo;</p></blockquote>\n\n\n\n<p>The board took responsibility for bungling the news of his election to a board seat, stating that the planned flow of information was not executed in a timely manner. When Stallman <a href=\"https://wptavern.com/free-software-community-condemns-richard-stallmans-reinstatement-to-fsf-board-of-directors\">announced his return to the board</a> at last month&rsquo;s LibrePlanet event, the free software community was not able to discern whether he did so with the board&rsquo;s permission. It took the FSF by surprise, polarized the community, and provoked organizations and corporations to publish statements condemning his reinstatement.</p>\n\n\n\n<p>The board admits that &ldquo;FSF staff should have been informed and consulted first,&rdquo; but follows it up by effectively downplaying his influence, stating that Stallman is &ldquo;an unpaid volunteer and subject to the organization&rsquo;s policies.&rdquo; </p>\n\n\n\n<p>The statement reads like a perplexing love letter for someone who struggles with social cues. It obscures most of the real issues outlined in an <a href=\"https://rms-open-letter.github.io/\">open letter</a> signed by many prominent members of the free software community.  The FSF board referenced a <a href=\"https://www.fsf.org/news/rms-addresses-the-free-software-community\">statement</a> from Stallman, published one minute prior, and claims that he has acknowledged his mistakes:</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>&ldquo;He has sincere regrets, especially at how anger toward him personally has negatively impacted the reputation and mission of FSF. While his personal style remains troubling for some, a majority of the board feel his behavior has moderated and believe that his thinking strengthens the work of the FSF in pursuit of its mission.&rdquo;</p></blockquote>\n\n\n\n<p>The FSF board has officially confirmed that the majority of its leadership advocated for Stallman&rsquo;s return and see it as important in its aim &ldquo;to attract a new generation of activists for software freedom and to grow the movement.&rdquo; </p>\n\n\n\n<p><a href=\"https://www.fsf.org/news/rms-addresses-the-free-software-community\">Stallman&rsquo;s statement</a> identifies his past behaviors as something outside his control, saying it was &ldquo;not a choice&rdquo; and &ldquo;unavoidable:&rdquo;</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>Later in life, I discovered that some people had negative reactions to my behavior, which I did not even know about. Tending to be direct and honest with my thoughts, I sometimes made others uncomfortable or even offended them &mdash; especially women. This was not a choice: I didn&rsquo;t understand the problem enough to know which choices there were.</p><p>Sometimes I lost my temper because I didn&rsquo;t have the social skills to avoid it. Some people could cope with this; others were hurt. I apologize to each of them. Please direct your criticism at me,&nbsp;<a href=\"https://www.fsf.org/news/statement-of-fsf-board-on-election-of-richard-stallman\">not at the Free Software Foundation</a>.</p></blockquote>\n\n\n\n<p>He also attempted to explain his position regarding the 2019 controversy that prompted his <a href=\"https://wptavern.com/gpl-author-richard-stallman-resigns-from-free-software-foundation\">resignation from the FSF board</a> and MIT&rsquo;s Computer Science and Artificial Intelligence Lab.</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>&ldquo;It was right for me to talk about the injustice to Minsky, but it was tone-deaf that I didn&rsquo;t acknowledge as context the injustice that Epstein did to women or the pain that caused.</p><p>I&rsquo;ve learned something from this about how to be kind to people who have been hurt. In the future, that will help me be kind to people in other situations, which is what I hope to do.&rdquo;</p></blockquote>\n\n\n\n<p>This strategically intertwined pair of statements from Stallman and the FSF did little to change the community&rsquo;s perception of his reinstatement to the board. They seemed to have the opposite effect of inflaming those who opposed it in the first place.</p>\n\n\n\n<p>&ldquo;I&rsquo;m really grateful that the FSF board took the time to clarify this,&rdquo; Tock founder Brian Fitzpatrick <a href=\"https://twitter.com/therealfitz/status/1381656583554404353\">said</a>. &ldquo;This makes it crystal clear that they would rather have RMS around than become an inclusive and welcoming environment to more than half the people who write software. Toxic to the core.&rdquo;</p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">Congratulations on getting RMS offering a non-apology for being tone deaf. You\'ve just inherited that skill.<br />It\'s time for that \"new generation of activists for software freedom\" to help another foundation grow.</p>&mdash; St&#11093;nehead (@stonehead) <a href=\"https://twitter.com/stonehead/status/1381647487178571776?ref_src=twsrc%5Etfw\">April 12, 2021</a></blockquote>\n</div>\n\n\n\n<p>The statements were met with considerable backlash, as they did little to assuage community concerns regarding Stallman&rsquo;s patterns of misconduct. More recently that includes his controversial remarks on rape, assault,&nbsp;and child sex trafficking, along with two decades of&nbsp;<a href=\"https://geekfeminism.wikia.org/wiki/Richard_Stallman\">behaviors and statements</a>&nbsp;that many have found to be disturbing and offensive. Whether these behaviors are motivated by malice or simply a lack of understanding the proper context, the damage to the FSF continues.</p>\n\n\n\n<p>Red Hat principle engineer Elana Hashman, former director of the Open Source Initiative, <a href=\"https://twitter.com/ehashdn/status/1381665600846528515\">published a thread</a> with suggestions for 501(c)(3) public charities the community can donate to as an alternative to the FSF, including The Software Freedom Conservancy, EFF, OSI, and Software in the Public Interest.</p>\n\n\n\n<p>Last week we <a href=\"https://wptavern.com/fsf-doubles-down-on-stallman-reinstatement-wordpress-does-not-support-his-return-to-the-board\">reported</a> that the WordPress project does not support Stallman&rsquo;s return to the FSF board of directors. Curiously, WordPress&rsquo; executive director Josepha Haden-Chomphosy published the <a href=\"https://josepha.blog/2021/04/02/on-recent-news-about-the-fsf-board-of-directors/\">statement</a> to her personal blog instead of on the project&rsquo;s website, but she confirmed it is WordPress&rsquo; official stance on Stallman&rsquo;s reinstatement. Since that time, the <a href=\"https://wordpressfoundation.org/\">WordPress Foundation</a> has quietly removed the Free Software Foundation from its list of inspirations. </p>\n\n\n\n<p>Many corporations and individuals have distanced themselves and pulled funding from the FSF, but it has not had much impact on the leadership of the organization. The FSF board seems confident in their decision to keep Stallman in place, despite openly admitting that &ldquo;his personal style remains troubling.&rdquo; When the organization&rsquo;s actions so sublimely repudiate its stated goals (to attract a new generation of activists for software freedom), it&rsquo;s easy to see why former supporters can no longer buy into the FSF&rsquo;s promises to improve transparency and accountability.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 13 Apr 2021 03:53:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:31;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"WPTavern: Display Digital Sheet Music With the WordPress Block Editor\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=115022\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:183:\"https://wptavern.com/display-digital-sheet-music-with-the-wordpress-block-editor?utm_source=rss&utm_medium=rss&utm_campaign=display-digital-sheet-music-with-the-wordpress-block-editor\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4520:\"<img />OSMD plugin output on the front end.\n\n\n\n<p class=\"has-drop-cap\">PhonicScore, a company out of Vienna, recently released its <a href=\"https://wordpress.org/plugins/opensheetmusicdisplay/\">OpenSheetMusicDisplay (OSMD) plugin</a>. It is a WordPress block built for rendering digital sheet music in the browser.</p>\n\n\n\n<p>The OSMD plugin is built on top of the team&rsquo;s JavaScript library of the same name, a project officially released in 2016. It is a bridge between <a href=\"https://www.vexflow.com/\">VexFlow</a> and <a href=\"https://www.musicxml.com/\">MusicXML</a>. VexFlow is a JavaScript API for rendering music notation, and MusicXML is a standard open format for exchanging digital sheet music.</p>\n\n\n\n<p>&ldquo;As WordPress is one of the most popular CMS&rsquo; we decided to make an out-of-the-box solution that users could easily plug in their WP websites,&rdquo; wrote Marin Jurcic in the <a href=\"https://opensheetmusicdisplay.org/2016/09/19/hello-world-opensheetmusicdisplay-musicxml/\">announcement post</a>. &ldquo;This wasn&rsquo;t an easy build, lucky for us OSMD provided all the tools for the job. To make this happen we relied heavily on the latest OSMD release and bundled it with the plugin. To add the &lsquo;out-of-the-box features&rsquo; and get it working we used WordPress&rsquo;s framework/library &mdash; Javascript and PHP.&rdquo;</p>\n\n\n\n<p>This is the type of plugin that allows the beauty of the block editor to shine. A few years ago, such a feat would only have been possible via the shortcode system.  Users would have had to manually type in all of the shortcode&rsquo;s arguments &mdash; assuming they could remember them all &mdash; and preview the post to see what it would look like. Today, they can interact with and make changes directly to their sheet music&rsquo;s display from the editor. </p>\n\n\n\n<p>OSMD was never a WordPress-first project. It was a standalone library that the company decided to make available to WordPress. With the power of the block system, they were able to do that. One can only hope that we see investments in our community from similar projects now that the block editor has become more stable.</p>\n\n\n\n<p>We are barely digging beneath the surface of what will be possible in time. Blocks like OSMD build upon the optimism I had when the system was first unveiled.</p>\n\n\n\n<p>To use the plugin, users must simply insert the OpenSheetMusicDisplay block into their content canvas. It is located under the Embed category. From that point, they must select or upload an XML file via the block options sidebar (<code>.xml</code>, <code>.musicxml</code>, and <code>.mxl</code> files are supported). Dragging and dropping a file does not work in this version &mdash; <em>maybe a feature request for 2.0?</em></p>\n\n\n\n<img />OSMD block in the editor.\n\n\n\n<p>The &ldquo;Basic Options&rdquo; tab has several width and aspect ratio settings. For the most part, it is probably best to leave these at the defaults. However, this will depend on your theme and how much room it provides.</p>\n\n\n\n<p>The block does not currently support the standard wide-alignment system. Instead, it has a width option, allowing users to determine the front-end output. Because this is a non-standard option, it may not play well with all themes. Depending on how the user&rsquo;s active theme handles content width, they can get wildly different results.</p>\n\n\n\n<p>The &ldquo;Drawing Options&rdquo; tab is where users have more control over customizing the output. These settings allow users to determine what is &ldquo;drawn&rdquo; in the digital sheet music. One option is whether to draw the composer&rsquo;s name. Another is to output time signatures. With 10 settings in total, there is a lot to tinker with.</p>\n\n\n\n<p>The biggest issue I ran into with the plugin was with the editor freezing from time to time. It appeared that the block was trying to reload, even when I was working outside of it. This happened despite having unticked the &ldquo;Automatically Rerender on Change&rdquo; checkbox.</p>\n\n\n\n<p>Overall, this plugin should serve users who want to display sheet music well. It is simple to use and offers numerous customization options. The team has a <a href=\"https://opensheetmusicdisplay.github.io/demo/\">demo of the OSMD library</a> in action on their site.</p>\n\n\n\n<p>For those who are not inclined to share digital sheet music, well, we can all appreciate the genius of J.S. Bach&rsquo;s <em>Air</em>:</p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n\n</div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 12 Apr 2021 21:16:12 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:32;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"WordPress Foundation: Announcement: Upcoming live discussion on do_action charity hackathons\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"https://wordpressfoundation.org/?p=184010\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:107:\"https://wordpressfoundation.org/2021/announcement-upcoming-live-discussion-on-do_action-charity-hackathons/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4578:\"<blockquote class=\"wp-block-quote\"><p>This live discussion has concluded. You can find a video recording of the live discussion on this post or <a rel=\"noreferrer noopener\" href=\"https://www.youtube.com/watch?v=pCg47iuHgBI\" target=\"_blank\">watch it directly on YouTube</a> and <a href=\"https://wordpress.tv/2021/04/13/tuesday-training-how-to-organize-an-online-do_action-charity-hackathon/\">on WordPress.tv</a>. Captions and a full transcript of the video will be made available shortly.</p></blockquote>\n\n\n\n<p class=\"has-drop-cap\">Over the past few months, many community organizers have expressed interest in organizing do_action charity hackathons and asked many questions about the event to Community deputies. In order to address these questions &#8211; some members of the WordPress Community are organizing a live <a href=\"https://make.wordpress.org/community/tag/tuesdaytrainings/\">Tuesday Training</a> discussion on <a href=\"https://make.wordpress.org/community/2021/04/09/tuesday-training-announcement-how-to-organize-an-online-do_action-charity-hackathon/\">How to organize do_action charity hackathons</a>!</p>\n\n\n\n<p><a rel=\"noreferrer noopener\" href=\"https://profiles.wordpress.org/harishanker\" target=\"_blank\">Hari Shanker</a>, <a rel=\"noreferrer noopener\" href=\"https://profiles.wordpress.org/hlashbrooke\" target=\"_blank\">Hugh Lashbrooke</a>, <a href=\"https://profiles.wordpress.org/nao\">Naoko Takano</a>, and <a rel=\"noreferrer noopener\" href=\"https://profiles.wordpress.org/yoga1103\" target=\"_blank\">Yogesh Londhe</a> – who are all experienced do_action hackathon organizers, will participate in this Live discussion on do_action charity hackathons. The event, which will be streamed LIVE on the&nbsp;<a href=\"https://www.youtube.com/WordCampCentral\">WordCamp Central YouTube channel</a> on <a href=\"https://www.timeanddate.com/worldclock/fixedtime.html?iso=20210413T0200\">Tuesday, April 13, 2021, 02:00 UTC</a>, is open to all! Community members can also participate in the discussion by asking questions in the live chat, which will be answered by the panelists live, during the session!</p>\n\n\n\n<h2>What are do_action charity hackathons?</h2>\n\n\n\n<p><a href=\"https://www.google.com/search?q=do_action+handbook&oq=do_action+handbook&aqs=chrome..69i57j69i60l3.2453j0j4&sourceid=chrome&ie=UTF-8\">do_action hackathons</a> are community-organized events that are focused on using WordPress to give deserving charitable organizations their own online presence. Each do_action event includes participants from the local WordPress community coming together to plan and build brand new websites for a number of local organizations in one day. Due to the COVID-19 pandemic, <a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/event-formats/do_action-charity-hackathon/organising-an-online-do_action-event/\">do_action hackathons have moved online</a>. </p>\n\n\n\n<p>In this session, we talk about do_action events, and their importance in this post-pandemic world, and on how to effectively organize an online do_action hackathon.</p>\n\n\n\n<h2>Watch the discussion!</h2>\n\n\n\n<p>The live discussion has concluded, but you can catch a recording of the session below.</p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n<div class=\"jetpack-video-wrapper\"></div>\n</div>\n\n\n\n<p><s><strong>Date and time:</strong>&nbsp;<a href=\"https://www.timeanddate.com/worldclock/fixedtime.html?iso=20210413T0200\">Tuesday April 13, 2021, 02:00 UTC</a> (Click to view in your local time)<br /><em>You can sign up for notifications on the YouTube live link below!</em></s></p>\n\n\n\n<p><s>In case the timing is off, and if you will not be able to join the live event, fret not! The <a href=\"https://www.youtube.com/watch?v=pCg47iuHgBI\">event recording will be available on YouTube</a>, and will soon be uploaded to <a rel=\"noreferrer noopener\" href=\"https://wordpress.tv/\" target=\"_blank\">WordPress.tv</a> as well!</s> <br />As mentioned above,  while the live discussion has concluded, don&#8217;t forget to check out the recording of the live discussion above.  We are working on adding captions for the video and will share a transcript of the same, shortly.</p>\n\n\n\n<p>We hope that this session was useful. We strongly encourage you to <a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/event-formats/do_action-charity-hackathon/do_action-event-application/\">organize a do_action charity hackathon</a> to support your local non-profits by giving them a WordPress-powered online presence. Thank you for all that you do to support the global WordPress Community!</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 12 Apr 2021 15:10:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Hari Shanker\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:33;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"WordPress.org blog: WP Briefing: Who Is WordPress?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/news/?post_type=podcast&p=10099\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wordpress.org/news/2021/04/who-is-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:9290:\"<p>In this episode, Josepha explores the five groups within the WordPress ecosystem and provides a high-level example of how they interact and support one another. As always, stay tuned for the small list of big things and a contributor highlight.&nbsp;&nbsp;</p>\n\n\n\n<p><em><strong>Have a question you&#8217;d like answered? You can submit them to <a href=\"mailto:wpbriefing@wordpress.org\">wpbriefing@wordpress.org</a>, either written or as a voice recording.</strong></em></p>\n\n\n\n<h2><strong>Credits</strong></h2>\n\n\n\n<ul><li>Editor:<a href=\"https://profiles.wordpress.org/dustinhartzler/\"> Dustin Hartzler</a></li><li>Logo:<a href=\"https://profiles.wordpress.org/beafialho/\"> Beatriz Fialho</a></li><li>Production:<a href=\"https://profiles.wordpress.org/mkaz/\"> </a><a href=\"https://profiles.wordpress.org/cbringmann/\">Chloé Bringmann</a></li><li>Song: Fearless First by Kevin MacLeod</li></ul>\n\n\n\n<h2>References</h2>\n\n\n\n<ul><li>Get to know<a href=\"https://make.wordpress.org/\"> WordPress Teams</a></li><li><a href=\"https://wordpress.tv/2017/12/10/josepha-haden-beginners-guide-to-contributions/\">Five Steps of Volunteer Engagement </a></li><li><a href=\"https://twitter.com/CoachBirgit/status/1339516878495117313\">Community Highlight </a></li><li><a href=\"https://centroamerica.wordcamp.org/2021/\">WordCamp Centroamérica 2021 Online</a> (<a href=\"https://centroamerica.wordcamp.org/2021/sesiones/\">Schedule</a>)</li><li><a href=\"https://wordpress.org/news/2021/03/so-you-want-to-make-block-patterns/\">So you want to make block patterns?</a></li><li><a href=\"https://docs.google.com/spreadsheets/d/1h73xMwjSRkJJsn7ooiwXFeZpd0hxXh26pJ7qXzI5iUg/edit#gid=0\">Gutenberg Tutorial sign-up</a></li></ul>\n\n\n\n<h2>Transcript</h2>\n\n\n\n<span id=\"more-10099\"></span>\n\n\n\n<p>Hello, everyone, and welcome to the WordPress briefing, the podcast where you can catch quick explanations of some of the ideas behind the WordPress open source project and the community around it, as well as get a small list of big things coming up in the next two weeks. I&#8217;m your host, Josepha Haden Chomphosy. Here we go!</p>\n\n\n\n<p>In the first episode of this podcast, I said that there&#8217;s a lot that goes into WordPress, that&#8217;s really hard to see. One of the hardest things to see about the WordPress project as you get started is the overall structure. There is quite a bit of documentation that can clarify the basics: the names of teams, what they work on, and where, and when they meet. The way that they influence and support each other can really feel like a bit of a mystery. So today, I&#8217;m going to break down the WordPress community into five big groups; I want you to keep a couple of things in mind.&nbsp;</p>\n\n\n\n<p>Firstly, these are high-level and based on my observations. Each of these groups can be further broken down into subgroups. So while you may not feel represented in this exact five, you are included if you were to dig a little bit deeper. The second thing to keep in mind is that the makeup of these groups is pretty fluid. Many community members find themselves in more than one group, but generally not far off. Some group two folks end up in group three, depending on the situation, people in group four can also end up in group five, and so on. As with so many things that I share, I&#8217;m not trying to insist that one size fits all. I&#8217;m not trying to put the WordPress community into a box. This is just a basic framework to understand how it all fits together. Alright, are you ready? I&#8217;m ready. Let&#8217;s do it!</p>\n\n\n\n<p>Okay, I have a broad definition of the community, which I have mentioned before. I believe that the community is anyone who has interacted with WordPress, whether they know it or not. So, I&#8217;ll start from way out there and work my way in that first group; we’re going to call our <strong>Visitors</strong>.&nbsp;</p>\n\n\n\n<p><strong>Visitors</strong> are people who arrive at a WordPress site to gain information or engage in an activity. Sometimes they know it&#8217;s a WordPress site, but most of the time, they don&#8217;t. The second group are <strong>Users</strong>, people who use WordPress as their CMS. So, that&#8217;s website builders, website designers, small businesses, content creators, and the list goes on and on. The third group I like to refer to is the <strong>Extenders</strong>. Those are people who extend WordPress through the creation of blocks, themes, plugins, and more. There are also people who teach WordPress to others through WordPress podcasts, and newsletters and tutorials. The fourth group I refer to as our <strong>Contributors</strong> is the people who contribute to the open source software and the infrastructure supporting it, but not necessarily the same people who contribute directly to their own product. And then there&#8217;s group five, <strong>Leaders</strong>. Those are people who help drive the vision and strategy for WordPress; the most notable member of that group is of course, Matt Mullenweg. And I&#8217;m also in that group.&nbsp;</p>\n\n\n\n<p>Each of these groups directly influenced the groups on either side. For example, a WordPress user is affected by both visitors and extenders. Imagine a content creator who shares their passion for photography through a WordPress site; this photographer may have visitors that need to purchase photos. In response, the user now has a need to make it possible for visitors to purchase photos on a site. So they go to what we consider the extenders, people who have built a plugin that supports that need. And as a result, that user can install that on their site. And they have have satisfied the need of the visitors to their site, the people who now can purchase photos.&nbsp;</p>\n\n\n\n<p>There are a lot of examples like this in the WordPress project. Every small pattern that you see is mirrored in the larger patterns across our ecosystem. And every large pattern you see in the ecosystem can be seen among our teams. It&#8217;s pretty cool to look at really. So, why should this matter to you? From a very practical standpoint, this matters for anyone who&#8217;s trying to learn more about contributing to the WordPress project. These five groups mirror very closely the five steps of volunteer engagement that we see across the ecosystem and from a more philosophical standpoint, it&#8217;s just kind of nice to know who your neighbors are. Without the influence and support of the groups around us, it can be hard to know whether we&#8217;re on the right track or not. So take a look to your left and look to your right, and get to know your partners in this project.</p>\n\n\n\n<p>That brings us now to our community highlight, the segment where I share a note about contributors who have helped others along the way, or WordPress success story. This week&#8217;s highlight is from @CoachBirgit, <a href=\"https://profiles.wordpress.org/coachbirgit/\">Birgit Olzem</a>, a longtime contributor and a friend of mine. Her success story goes like this.&nbsp;</p>\n\n\n\n<p>WordPress has allowed me as a mother of five to leave a toxic marriage for good.&nbsp;</p>\n\n\n\n<p>Later, the community picked me up when I became seriously ill.&nbsp;</p>\n\n\n\n<p>So I can say from the bottom of my heart, that working with WordPress has saved my life.</p>\n\n\n\n<p>And now our small list of big things. I&#8217;ve got three things for you this week. I think that they&#8217;re all very important. And I hope you check them all out. The first one is a reminder that word camp Central America is coming up on April 15 and 16th. If you have not registered for tickets, you still have time, I will share a link to the registration page and the schedule in the show notes below.&nbsp;</p>\n\n\n\n<p>The second thing on our small list of big things is that the Gutenberg 10.4 release is coming out later this week on April 14th. It&#8217;s an important release because it&#8217;s when we take a look at the current iteration of full site editing tools that we have, and decide if it&#8217;s ready to get into the WordPress 5.8 release. There&#8217;s a post that has a little more information about that which I will share in the show notes below as well. If you haven&#8217;t checked out the Gutenberg plugin lately, obviously I think it&#8217;s a good idea to do that in general, but definitely a good idea to check it out now.&nbsp;</p>\n\n\n\n<p>The third thing on our list today is a reminder to check out our most recent block pattern tutorial, I&#8217;ll share a link to that in the show notes. It&#8217;s this kind of tips and tricks, tutorial, the “show me how to do it,” kind of thing in the style of <a href=\"https://css-tricks.com/css-style-guides/\">CSS-Tricks</a>. If you or anyone that you know might be interested in sharing a similar style of tutorial, there&#8217;s a link to a form in that show notes as well so that you can share with us your name and the topic that you&#8217;re interested in. We&#8217;ll take a look and see if it&#8217;s something that we definitely need to make sure our users know how to do. So, that my friends is your small list of big things.&nbsp;</p>\n\n\n\n<p>Thank you for joining in today for the WordPress briefing. I&#8217;m your host, Josepha Haden Chomphosy. I&#8217;ll see you again in a couple of weeks!</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 12 Apr 2021 14:36:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Chloe Bringmann\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:34;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"WPTavern: Set Up a Gutenberg Test Site in 2 Minutes with the Gutenberg Nightly Plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=114098\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:215:\"https://wptavern.com/set-up-a-gutenberg-test-site-in-2-minutes-with-the-gutenberg-nightly-plugin?utm_source=rss&utm_medium=rss&utm_campaign=set-up-a-gutenberg-test-site-in-2-minutes-with-the-gutenberg-nightly-plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4142:\"<p>WordPress contributors are working towards landing full site editing (FSE) sometime this year, an ambitious plan that will require all hands on deck for testing. A meeting of a small group of core leads on April 14 will start the process of deciding whether FSE will land in version 5.8. In the meantime, the FSE outreach program has <a href=\"https://make.wordpress.org/test/2021/03/25/fse-program-testing-call-4-building-a-restaurant-themed-header/\">extended the deadline for the fourth round of testing</a> until April 12. </p>\n\n\n\n<p>One of the quickest ways to get started doing alpha/beta testing is to install the Gutenberg Nightly plugin, which pulls in the latest build from the Gutenberg project. Ordinarily, to get the latest build one would have to install NodeJS and npm and use the command line to get set up. This process can be prohibitive, along with the dizzying pace of Gutenberg development, for less technical users who want to start testing.</p>\n\n\n\n<p>The Gutenberg Nightly plugin, combined with the GitHub Updater plugin completely automates the process of grabbing the latest zip from Gutenberg trunk, and users will be notified when a new nightly is available for updating.</p>\n\n\n\n<h2>How to Set Up a Gutenberg Nightly Test Environment</h2>\n\n\n\n<p>The first step is to <a href=\"https://gutenbergtimes.com/need-a-zip-from-master/#nightly\">download</a> and install the Gutenberg Nightly plugin by uploading the zip file. If you already have the stable version of the Gutenberg plugin, you will be prompted to replace the current version with the one you are uploading. If you want to get updates when a new nightly is available, download and install the <a href=\"https://github.com/afragen/github-updater/releases/latest\">GitHub Updater</a> plugin the same way. </p>\n\n\n\n<div class=\"wp-block-image\"><img />Gutenberg Nightly update available</div>\n\n\n\n<p>Testing the full-site editing project will require you to install a theme like TT1 Blocks, which has support for the experimental feature. Once you do, you will see the &ldquo;Site Editor (beta)&rdquo; menu item in the dashboard.</p>\n\n\n\n<div class=\"wp-block-image\"><img /></div>\n\n\n\n<p>I set up a Gutenberg testing environment in 2 minutes using these plugins. Please note that it&rsquo;s not recommended to use Gutenberg Nightly in production.</p>\n\n\n\n<p>Birgit Pauli-Haack, publisher of the <a href=\"https://gutenbergtimes.com/\">Gutenberg Times</a>, created the plugin in October 2020, to help testers keep up with the rapid pace of Gutenberg development. </p>\n\n\n\n<p>&ldquo;On October 19, 2020, there were 250 new commits made since the last release (9.1.1) and before the release of 9.2,&rdquo; Pauli-Haack said. &ldquo;Any issue you might file, might get a response like &lsquo;Could you please try it in master, I think it was already fixed.\'&rdquo; This slows down the testing process and can be discouraging to testers.</p>\n\n\n\n<p>Pauli-Haack creates the build every day as a volunteer service to facilitate Gutenberg testing. </p>\n\n\n\n<p>&ldquo;At the beginning it took a bit longer but now I wrote a small <a href=\"https://github.com/bph/distribute-nightly\">Node CLI script</a> that does the distribution to GitHub and uploads it to the GT site as well, so the button Download gives you the newest version,&rdquo; she said. &ldquo;In October, I was a total rookie with an idea.&rdquo;</p>\n\n\n\n<p>Pauli-Haack credits Andy Fragen, author of the GitHub Updater plugin, and Riad Benguella, a technical lead on the Gutenberg project, who helped her past some skill gaps in getting the process more automated.</p>\n\n\n\n<p>&ldquo;Andy Fragen helped me think through it for making it the easiest for the &lsquo;normal&rsquo; users to get a Test version without to know much about git, node and stuff,&rdquo; she said.</p>\n\n\n\n<p>Gutenberg Nightly has facilitated more than 62,000 downloads to date. The repository for the plugin has <a href=\"https://github.com/bph/gutenberg/discussions/\">discussions</a> enabled so users can stay updated with major changes, make feature requests, and <a href=\"https://github.com/bph/gutenberg/discussions/3\">participate in Q&amp;A</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 11 Apr 2021 16:12:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:35;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"Gutenberg Times: Full-Site Editing Scope in WordPress 5.8. Weekend (Tiny) Edition #165\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://gutenbergtimes.com/?p=17473\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://gutenbergtimes.com/full-site-editing-scope-in-wordpress-5-8-weekend-edition-165/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:8253:\"<p>Howdy! </p>\n\n\n\n<p>In the last two weeks there was so much was happening around Gutenberg.  To keep you somewhat in the loop, I interrupt my unpacking of way-too-many boxes and share a few links with you.</p>\n\n\n\n<p>Next week again in full force. Stay tuned. </p>\n\n\n\n<p>Have a great weekend! </p>\n\n\n\n<p>Yours, ?<br />Birgit</p>\n\n\n\n\n\n<hr class=\"wp-block-separator is-style-wide\" />\n\n\n\n<p><strong>Grzegorz </strong>(Greg)<strong> Ziółkowsk</strong>i and I published our first episode together, <strong><a href=\"http://erg-10-3-full-site-editing-mvp/\">Episode #41</a></strong>. It is a great episode, and we had a lot of fun. I am delighted having Grzegorz on the show. It&#8217;s now available with show notes and transcript. </p>\n\n\n\n<p><strong>Josepha Haden Chomphosy </strong>posted <a href=\"https://make.wordpress.org/core/2021/04/08/full-site-editing-scope-for-wp5-8/\">Full Site Editing Scope for WP5.8</a>&nbsp;(u)</p>\n\n\n\n<ul><li>Lesson from Phase 1 roll-out, extenders like plugins developers, site builders and theme authors didn’t have enough time to test their products with the new editor in core.&nbsp;</li><li>Full-Site Editing user experience with Global Styles, Template editing and saving, will not be changing default user experience. It’s opt-in only. There is some confusion on saving template and switch from overall template to content and back. Polishing those will be out of scope for 5.8.&nbsp;</li><li>Also, on the scope list for WordPress 5.8 are: Widget Editor, Navigation Screen and block, refactored Gallery Block and the List View. These&nbsp; components are some of the most complex, and the user experience of them will be key. “They are all high priority to complete (hopefully for WP5.8), but will be punted if they aren’t ready in time for Beta.”&nbsp;</li></ul>\n\n\n\n<p><em>Matias Ventura</em> will demo the current state of these features to the release lead team trio of&nbsp; Matt Mullenweg, Josepha Haden Chomphosy and Helen Hou-Sandi. </p>\n\n\n\n<p><strong>Justin Tadlock</strong> has the skinny: <a href=\"https://wptavern.com/will-full-site-editing-land-in-wordpress-5-8-a-decision-is-forthcoming\">Will Full Site Editing Land in WordPress 5.8? A Decision Is Forthcoming</a></p>\n\n\n\n<p><strong>Hector Prieto</strong> published the <a href=\"https://make.wordpress.org/core/2021/04/08/whats-next-in-gutenberg-april-2021/\">April Focus areas for the Gutenberg team.&nbsp;</a></p>\n\n\n\n<p>As expected, it covers Widget, Navigation Screen, and Full-Site Editing with more details. Please see the <strong>“Area to be aware of”</strong> section of the post, for Block and plugin Developers, Designers and Theme builders. We talked about most of them in one or the other episode, but you find them all in one place in Hector’s post.&nbsp;</p>\n\n\n\n<p><strong>Kjell Reigstad</strong> published the notes from the <strong><a href=\"https://make.wordpress.org/themes/2021/04/08/block-themes-meeting-notes-april-7-2021/\">Block Theme Meeting </a></strong> They team discussed among other things: </p>\n\n\n\n<ul><li>TT1 Blocks update&nbsp;</li><li>Block-based theme updates in&nbsp;Gutenberg&nbsp;10.3 with alignment styles automatically for front and back end and the capability to use theme.json styles for every block. </li><li>New tools for transitioning to Block-based Themes.</li></ul>\n\n\n\n<p>The deadline for the <a href=\"https://make.wordpress.org/test/2021/03/25/fse-program-testing-call-4-building-a-restaurant-themed-header/\"><strong>Full Site Editing Testing Call #4</strong></a> has been extended until <strong>April 12th, 2021. </strong></p>\n\n\n\n\n<p><strong><a href=\"https://gutenbergtimes.com/need-a-zip-from-master/\">Need a plugin .zip from Gutenberg&#8217;s master branch?</a></strong><br />Gutenberg Times provides daily build for testing and review. <br />Have you been using it? Hit reply and let me know.</p>\n\n\n\n<p><img alt=\"GitHub all releases\" src=\"https://img.shields.io/github/downloads/bph/gutenberg/total?style=for-the-badge\" /></p>\n\n\n\n\n<p>⏰ <strong>Don&#8217;t Miss this! </strong> <br /><strong>Mega-Meetup April 15th, 2021 </strong> 6:30 -8:30 pm EDT / 23:30 UTC with Anne McCarthy, David Bisset and the organizers of six Florida Meetup groups.  All <strong>About Full Site Editing </strong>(Coming in WordPress). <a href=\"https://www.meetup.com/SF-WordPress-Users/events/277019024/\">Register via Meetup.com</a> <a href=\"https://t.co/36RYiMfivU?amp=1\" rel=\"noreferrer noopener\" target=\"_blank\"></a></p>\n\n\n\n<p>For a more in-depth look on current Gutenberg development,  <a href=\"https://make.wordpress.org/core/handbook/references/keeping-up-with-gutenberg-index/\">the Index page with all the teams&#8217; updates</a> in the Core handbook has the latest. </p>\n\n\n\n\n<p><strong>&nbsp;<a href=\"https://make.wordpress.org/core/handbook/references/keeping-up-with-gutenberg-index/\" target=\"_blank\" rel=\"noreferrer noopener\">&#8220;Keeping up with Gutenberg &#8211; Index&#8221;</a>&nbsp;</strong><br />A chronological list of the WordPress Make Blog posts from various teams involved in Gutenberg development: Design, Theme Review Team, Core Editor, Core JS, Core CSS, Test and Meta team from Jan. 2021 on. <a href=\"https://make.wordpress.org/core/handbook/references/keeping-up-with-gutenberg-index/keeping-up-with-gutenberg-index-2020/\">The index 2020 is here</a></p>\n\n\n\n\n\n<p class=\"has-small-font-size\">Featured Image:  <em>Photo by&nbsp;<a href=\"https://unsplash.com/@fran_?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText\">Fran Jacquier</a>&nbsp;on&nbsp;<a href=\"https://unsplash.com/s/photos/lego?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText\">Unsplash</a></em></p>\n\n\n\n\n\n<hr class=\"wp-block-separator is-style-wide\" />\n\n\n\n<p class=\"has-text-align-left\"><strong>Don&#8217;t want to miss the next Weekend Edition? </strong></p>\n\n\n\n<form class=\"wp-block-newsletterglue-form ngl-form ngl-portrait\" action=\"https://gutenbergtimes.com/feed/\" method=\"post\"><div class=\"ngl-form-container\"><div class=\"ngl-form-field\"><label class=\"ngl-form-label\" for=\"ngl_email\"><br />Type in your Email address to subscribe.</label><div class=\"ngl-form-input\"><input type=\"email\" class=\"ngl-form-input-text\" name=\"ngl_email\" id=\"ngl_email\" /></div></div><button class=\"ngl-form-button\">Subscribe</button><p class=\"ngl-form-text\">We hate spam, too and won&#8217;t give your email address to anyone except Mailchimp to send out our Weekend Edition</p></div><div class=\"ngl-message-overlay\"><div class=\"ngl-message-svg-wrap\"></div><div class=\"ngl-message-overlay-text\">Thanks for subscribing.</div></div><input type=\"hidden\" name=\"ngl_list_id\" id=\"ngl_list_id\" value=\"26f81bd8ae\" /><input type=\"hidden\" name=\"ngl_double_optin\" id=\"ngl_double_optin\" value=\"yes\" /></form>\n\n\n\n<hr class=\"wp-block-separator is-style-wide\" />\n\n\n\n\n\n<p> <a href=\"https://gutenbergtimes.com/podcast/changelog-41-greg-ziolkowski-gutenberg-10-3-full-site-editing-mvp/\"><strong>Episode #41</strong> is now available</a>, with new co-host <strong>Grzegorz Ziolkowski</strong></p>\n\n\n\n<p> <strong>Subscribe to the&nbsp;<a href=\"https://gutenbergtimes.com/podcast/\">Gutenberg Changelog</a>&nbsp;podcast </strong><br />?️&nbsp;<a href=\"https://open.spotify.com/show/620NwVKQJGdTupy36zYxvg?mc_cid=4b6c9f88fe\">Spotify</a>&nbsp;|&nbsp;<a href=\"https://podcasts.google.com/feed/aHR0cHM6Ly9ndXRlbmJlcmd0aW1lcy5jb20vZmVlZC9wb2RjYXN0\">Google</a>&nbsp;|&nbsp;<a href=\"https://podcasts.apple.com/us/podcast/gutenberg-changelog/id1469294475\">iTunes</a>&nbsp;|&nbsp;<a href=\"https://pca.st/podcast/f8445ec0-7508-0137-f267-1d245fc5f9cf\">PocketCasts</a>&nbsp;|&nbsp;<a href=\"https://www.stitcher.com/show/gutenberg-changelog\">Stitcher</a>&nbsp;|<br />?️&nbsp;<a href=\"https://www.podbean.com/podcast-detail/chi7j-9904a/Gutenberg-Changelog-Podcast\">Pod Bean</a>&nbsp;|&nbsp;<a href=\"https://castbox.fm/channel/Gutenberg-Changelog-id2173375\">CastBox</a>&nbsp;|&nbsp;<a href=\"https://www.podchaser.com/podcasts/gutenberg-changelog-878239/\">Podchaser</a>&nbsp;|&nbsp;<a href=\"https://gutenbergtimes.com/feed/podcast\">RSS Feed</a>&nbsp;</p>\n\n\n\n<img />Review by <a href=\"https://twitter.com/Peter_Ingersoll\"><strong>Peter Ingersoll</strong></a> on <a href=\"https://www.stitcher.com/show/gutenberg-changelog\">Stitcher</a>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 10 Apr 2021 15:24:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Birgit Pauli-Haack\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:36;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"WPTavern: Will Full Site Editing Land in WordPress 5.8? A Decision Is Forthcoming\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=114870\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:205:\"https://wptavern.com/will-full-site-editing-land-in-wordpress-5-8-a-decision-is-forthcoming?utm_source=rss&utm_medium=rss&utm_campaign=will-full-site-editing-land-in-wordpress-5-8-a-decision-is-forthcoming\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6679:\"<p class=\"has-drop-cap\">Yesterday, Josepha Haden Chomphosy <a href=\"https://make.wordpress.org/core/2021/04/08/full-site-editing-scope-for-wp5-8/\">announced the roadmap</a> for deciding whether Full Site Editing (FSE) will land in WordPress 5.8. After the launch of Gutenberg 10.4 on April 14, a small group of core leads will participate in a go/no-go demo.</p>\n\n\n\n<p>The following people will be on the call:</p>\n\n\n\n<ul><li>Matias Ventura &ndash; Gutenberg Project Lead who will host the demo.</li><li>Matt Mullenweg &ndash; WordPress Project Lead.</li><li>Helen Hou-Sand&igrave; &ndash; Lead Developer.</li><li>Josepha Haden Chomphosy &ndash; Executive Director.</li></ul>\n\n\n\n<p>The meeting&rsquo;s agenda is simple. Ventura will host the demo, and the group will discuss and cover implementation questions.</p>\n\n\n\n<p>If there are no blockers, they will share a plan for merging FSE into WordPress. The more likely outcome is that they will find at least a few items that must be addressed. In that case, they will share these publicly with a plan to tackle them before a second go/no-go date of April 27.</p>\n\n\n\n<p>The first beta release of WordPress 5.8 is set for June 8, with a general public release for July 20. The team needs to decide on inclusion early in the release cycle to give theme and plugin developers time to prepare.</p>\n\n\n\n<p>While many are on their toes awaiting a final decision, everyone needs to have a little patience at the moment. Everything needs to be carefully weighed by the project leaders. There is a good chance we will not know the outcome until that second, April 27 deadline.</p>\n\n\n\n<p>Most of the FSE transition would be a beta run for a subset users. Including these features in core does not mean that WordPress immediately flips the switch and enables everything for 40% of the web. For the overall FSE experience, users must make an explicit choice to install and activate a block-based theme.</p>\n\n\n\n<p>With that in mind, the onboarding experience should be a welcoming one that invites users into site editing while letting them know the potential issues. If it is a built-in beta, they <em>really</em> need to understand that improvements are forthcoming.</p>\n\n\n\n<p>An in-core beta run like this is also welcome, given the project&rsquo;s launch of the block editor a couple of years ago. Regardless of whether people loved or hated the block editor, the rollout was not smooth for everyone. WordPress dropped end-users into an overhauled system, which was a shocking change for many. The project has a chance to do better this time around by incrementally introducing features to users and allowing others to immerse themselves in the new experience of their own choice.</p>\n\n\n\n<p>&ldquo;The most important context to share is that <strong>it isn&rsquo;t shipping as the full, default experience for users</strong>,&rdquo; wrote Chomphosy in the post, noting that the team is growing beyond past mistakes. &ldquo;One of the clearest pieces of feedback from the Phase One merge process was that there wasn&rsquo;t enough time for our extenders (agencies, theme authors, plugin developers, site builders, etc.) to prepare for the upcoming changes.&rdquo;</p>\n\n\n\n<p>The decision-makers may also decide to ship some pieces but not others. FSE is a project made up of several components.</p>\n\n\n\n<p>&ldquo;The whole full site editing project is sort of an umbrella term for a collection of tools and projects, so it would be possible for some pieces to ship while others don&rsquo;t,&rdquo; said Haden Chomphosy. &ldquo;There are probably some exceptions to that, as you mentioned, but many of these can ship as they are ready.&rdquo;</p>\n\n\n\n<p>The exceptions she was referring to are components that make more sense together. For example, block-based themes via a <code>theme.json</code> config file and most of the site-editing blocks are not as useful when separate.</p>\n\n\n\n<p>Of course, there are cases where something like the Query block could be used outside of the site editor. Users might create custom queries within a page without the benefit of the site editor, for example.</p>\n\n\n\n<p>My primary concern is not with features related to the site editor but with block-based widgets. It is a transitional tool for users on traditional themes. Along with the new nav menus screen, it is not a part of the block-based themes experience. The goal is to allow users to start using blocks in more places. However, this will result in a broken UX in many cases.</p>\n\n\n\n<p>The widgets experience is still <a href=\"https://wptavern.com/are-block-based-widgets-ready-to-land-in-wordpress-5-6\">partially broken</a>, treating each block as a separate widget. Users must learn to put a Heading (widget title) and another block (widget content) into a Group (widget wrapper) for the correct widget-related classes on the front end of the site. For some themes, whether users do this will be a non-issue. For others, it will look ugly at best and break the layout at worst. Putting this responsibility on the shoulders of end-users was <a href=\"https://github.com/WordPress/gutenberg/issues/25174#issuecomment-708238689\">deemed an acceptable solution</a>.</p>\n\n\n\n<p>I wanted to focus on this issue because it is one of those things that may simply be flipped on for all users. I am still afraid that transitioning from a functioning system to a potentially broken one will make for a bumpy ride.</p>\n\n\n\n<p>The WordPress 5.6 release team <a href=\"https://wptavern.com/wordpress-5-6-release-team-pulls-the-plug-on-block-based-widgets\">decided not to ship</a> block-based widgets. Hou-Sand&igrave;, as the core tech lead for 5.6, provided a historical account of the decision and why it was not ready for inclusion:</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>My question for features that affect the front-end is &ldquo;can I try out this new thing without the penalty of messing up my site?&rdquo; &mdash; that is, user trust. At this current moment, given that widget areas are not displayed anything like what you see on your site without themes really putting effort into it and that you have to save your changes live without revisions to get an actual contextual view, widget area blocks do not allow you to try this new feature without penalizing you for experimenting.</p></blockquote>\n\n\n\n<p>While widgets have arguably improved, I still see the answer as being the same as last October. I have not seen enough buy-in from the theme development community to support the block editor itself, much less new block-related features. However, at some point, the project simply needs to move forward. Themers will just need to keep up.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 09 Apr 2021 15:48:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:37;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"WPTavern: iThemes Acquires Kadence WP, Plans to Sunset Legacy Themes in 2022\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=114848\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:195:\"https://wptavern.com/ithemes-acquires-kadence-wp-plans-to-sunset-legacy-themes-in-2022?utm_source=rss&utm_medium=rss&utm_campaign=ithemes-acquires-kadence-wp-plans-to-sunset-legacy-themes-in-2022\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3957:\"<p>iThemes has <a href=\"https://ithemes.com/kadence-wp-joins-ithemes-family/\">acquired Kadence WP</a>, the Missoula-based makers of the <a href=\"https://wordpress.org/plugins/kadence-blocks/\">Kadence Blocks</a> plugin and its accompanying <a href=\"https://wordpress.org/themes/kadence/\">Kadence theme</a>. Originally founded in 2008 as a themes company, iThemes became more of a plugin-oriented business over the years before it was <a href=\"https://wptavern.com/liquid-web-acquires-ithemes-in-multi-million-dollar-deal\">acquired by Liquid Web in 2018</a>. The company is returning to its roots with this acquisition and plans to make Kadence WP the official theme platform of choice for iThemes.</p>\n\n\n\n<p>&ldquo;It&rsquo;s no secret that the &lsquo;themes&rsquo; part of iThemes has been lacking for many years now,&rdquo; iThemes general manager Matt Danner said. &ldquo;While we got our start in WordPress themes in 2008, over the past 10 years, we pivoted to the more obvious needs of our customers (mainly WordPress security, backups, memberships and maintenance) as the theme marketplace got more competitive.&nbsp;</p>\n\n\n\n<p><em>&ldquo;</em>Joining forces with Kadence WP means that iThemes can once again have an innovative and modern WordPress theme platform.&rdquo;</p>\n\n\n\n<p>iThemes announced it will be sunsetting its <a href=\"https://ithemes.com/purchase/builder-theme/\">iThemes Builder theme framework</a> and all of its legacy themes in 2022, in favor of supporting the Kadence theme which already has more than 50,000 active installations. Danner said the older themes &ldquo;are no longer truly compatible with the future direction of WordPress.&rdquo;</p>\n\n\n\n<p>Kadence Blocks are even more popular than the accompanying theme, since they can be used in combination with any WordPress theme. The plugin has gained more than 100,000 users after its initial launch in August 2018. Kadence Blocks <a href=\"https://wptavern.com/wordpress-theme-and-plugin-shops-are-pioneering-the-first-layout-blocks-for-gutenberg\">pioneered some of the first full-featured layout blocks</a> in the early days of Gutenberg prior to its inclusion in core.</p>\n\n\n\n<p>&ldquo;This last year has marked some ridiculous growth for Kadence WP,&rdquo; co-founder Ben Ritner said. &ldquo;Only one year ago my sister Hannah (many users will know Hannah from our support channels) and I were the entirety of&nbsp;the Kadence WP team. It is hard to gauge user numbers with accuracy because of how many free products we have, but the amount of people using Kadence WP products has roughly quadrupled in the last 10 months! Our new Kadence Theme, which landed on the repo in November (only 160 days ago), now has more than 50,000 active users.&rdquo;</p>\n\n\n\n<p>Kadence WP will continue running under its same branding and as a separate company under the iThemes brand. Pricing will remain the same for existing Kadence WP customers. iThemes plans to raise its prices for its Agency Bundle on May 1, 2021, but renewal pricing will remain the same as long as the customers&rsquo; subscriptions auto-renew.</p>\n\n\n\n<p>Kadence Blocks is adding dynamic content for its pro version in the next month. The team is also launching a new plugin called Kadence Cloud, which will allow users to create a pre-built cloud of content that they can pull down into any website. Both Kadence Blocks and the theme will also be rolling in many of the top-voted feature requests from its community. A major new product release is planned for Q4 2021.</p>\n\n\n\n<p>iThemes will be hosting a <a href=\"https://attendee.gotowebinar.com/register/8329602538499610384\">townhall meeting</a> Friday, April 9 at 11:00 am CST to address any questions or concerns that users and customers may have. They are also running an online training workshop titled &ldquo;<a href=\"https://attendee.gotowebinar.com/register/446959587392124432\">Learn How to Use Kadence WP</a>&rdquo; on May 5, 2021, at 1:00 p.m. CST.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 09 Apr 2021 05:23:49 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:38;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"WPTavern: Yes, Comments Are Still Relevant, But We Need a Better System\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=114628\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:183:\"https://wptavern.com/yes-comments-are-still-relevant-but-we-need-a-better-system?utm_source=rss&utm_medium=rss&utm_campaign=yes-comments-are-still-relevant-but-we-need-a-better-system\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6116:\"<p class=\"has-drop-cap\">More and more, open comments are becoming a thing of the past. Large news organizations have kicked them to the curb. Frustrated bloggers who no longer desire all of the hassles with moderation shut down their forms. The conversations have moved to corporate-controlled social media.</p>\n\n\n\n<p>It is hard to pinpoint the exact moment much of the web devolved into chaos. It was probably more of a gradual thing. The tools that we built fostered the darkest side of humanity. Far too often, people let out their worst unfiltered thoughts without regard to decency and kindness. If we dig deep enough, social media is likely the culprit that spawned this growing experience. However, it is also entrenched in the blogging world.</p>\n\n\n\n<p>Now, with the ubiquity of mobile phones, everyone has a voice. And, far too often, the vocal minority drives the masses from discussion to ad hominem. Or, maybe the majority was always looking for a justification.</p>\n\n\n\n<p>There is a bright side. Commenting on and discussing ideas in an open forum can change hearts and minds. It can lead to discoveries and create life-long friendships &mdash; I still routinely chat with people I met through blogs and their comments from nearly two decades ago.</p>\n\n\n\n<p>Ryan McCue, a core contributor to WordPress, said that <a href=\"https://twitter.com/rmccue/status/1375873040496594946\">comments should be a plugin</a>.</p>\n\n\n\n<p>There are few things I could think that would hurt the blogging community more. Comments are the lifeblood of many WordPress-built sites. Without them as part of the core experience, how many new users will venture out to find a commenting plugin? Such a change would sign the death warrant for commenting on a large part of the web, moving more discussion away from blogs into the waiting arms of social networks.</p>\n\n\n\n<p>McCue&rsquo;s response was to a <a href=\"https://twitter.com/Krogsgard/status/1375867036102971396\">tweet by Brian Krogsgard</a>, the Post Status creator and editor. &ldquo;WordPress should have one singular button that says: Turn off all comments and comment displays. This is so hilariously complicated, it&rsquo;s absurd.&rdquo;</p>\n\n\n\n<p>He is not wrong.</p>\n\n\n\n<p>The WordPress comment settings screen is so complex that I rarely change anything other than a setting or two, even when I want comments enabled for a site. There are around two dozen individual options on that screen, and none of them just allow users to turn it all off.</p>\n\n\n\n<p>Eric Karkovack explores this same topic in his piece for Speckyboy titled <a href=\"https://speckyboy.com/is-the-wordpress-comment-system-still-relevant/\">Is the WordPress Comment System Still Relevant?</a> He concluded:</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>So, where does this leave the default comment system? It still offers the basics and can be extended. Yet it seems a bit antiquated when compared to what other services are offering. To remain a compelling option, improvements are in order.</p><p>There&rsquo;s certainly no harm in keeping it around. But, short of a renewed effort to improve the out-of-the-box functionality, perhaps it shouldn&rsquo;t be as front-and-center within WordPress as it is now.</p></blockquote>\n\n\n\n<p>WordPress has failed to iterate on its commenting feature in recent years.</p>\n\n\n\n<p>&ldquo;Like most things, [Full Site Editing] will change things there,&rdquo; wrote WordPress Themes Team rep Ari Stathopoulos in the Post Status Slack. &ldquo;Want comments? Add the comment-form block in your template. Don&rsquo;t want them? Don&rsquo;t add it.&rdquo;</p>\n\n\n\n<p>While that is partly true, it only handles things on the front end of the site. All the commenting-related features would still be there in the admin. However, it is a step in the right direction.</p>\n\n\n\n<p>The ability to easily opt in or out of a commenting system is merely one change that needs to happen. Something as basic as an <a href=\"https://core.trac.wordpress.org/ticket/33627\">in-context comment list view</a> is a must for easier moderation. The <a href=\"https://wptavern.com/a-conceptual-wordpress-plugin-by-stephen-cronin-that-makes-comment-moderation-easier\">Tavern still uses</a> Stephen Cronin&rsquo;s <a href=\"https://wordpress.org/plugins/show-parent-comment/\">Show Comment Parent</a> plugin for this. Even a basic JavaScript-based front-end submission form would go a long way toward modernizing the commenting system. Does anyone enjoy a full page reload when leaving a comment?</p>\n\n\n\n<p>However, there is more that we could be doing. For a platform that prides itself on democratizing publishing and owning your content, a <a href=\"https://core.trac.wordpress.org/ticket/35435\">ticket for supporting webmentions</a> has had virtually no movement in five years.</p>\n\n\n\n<p>A Webmention is a standardized protocol for mentions and conversations across the web. It is a part of a goal for a decentralized social &ldquo;network&rdquo; of sorts where everyone owns and controls their content. While the <a href=\"https://wordpress.org/plugins/webmention/\">Webmention plugin</a> by Matthias Pfefferle takes care of this feature, universal adoption would be a far more realistic goal as part of WordPress.</p>\n\n\n\n<p>We should also have some serious conversations about what tools publishers need to build thriving communities via their comments. For example, is comment moderation easy enough? If not, what can we do to improve it?</p>\n\n\n\n<p>WordPress is more than simply a blogging platform. Users can build any kind of site they want today, with or without the comments. However, commenting is part of the software&rsquo;s history and identity. It is a gateway to discussion &mdash; often as important or even more so than a site&rsquo;s content.</p>\n\n\n\n<p>Comments will always be relevant. Whether it is a response to a blog post, tweet, Slack thread, or some new thing we have yet to think of, the web is all about connecting and communicating with others. We should constantly reevaluate whether WordPress is leading the pack, creating the tools to enable more discussion.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 08 Apr 2021 23:11:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:39;a:6:{s:4:\"data\";s:11:\"\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"HeroPress: Hallway Chats Joins The HeroPress Family\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=3524\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:147:\"https://heropress.com/hallway-chats-joins-the-heropress-family/#utm_source=rss&utm_medium=rss&utm_campaign=hallway-chats-joins-the-heropress-family\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2413:\"<img width=\"375\" height=\"100\" src=\"https://s20094.pcdn.co/wp-content/uploads/2021/04/hallway-chats-logotype-v01.png\" class=\"attachment-large size-large wp-post-image\" alt=\"Original Hallway Chats logo\" />\n<p>As any parent or pet owner knows, quiet doesn&#8217;t always equal inactivity. And the same is true here at HeroPress.</p>\n\n\n\n<h2 id=\"h-investing-in-a-sustainable-framework\">Investing in a sustainable framework</h2>\n\n\n\n<p>While we haven&#8217;t said much over the last few months, we&#8217;ve been working with the initial feedback we received to expand HeroPress in the most manageable and sustainable way. Because really, if it&#8217;s not manageable and sustainable, what&#8217;s even the point?</p>\n\n\n\n<p>This quest prompted a lot of additional research and active listening, all of which lead the fine folks behind the <a href=\"http://hallwaychats.com\">Hallway Chats</a> podcast to start a conversation with us. </p>\n\n\n\n<h2 id=\"h-hallway-chats-found-us\">Hallway Chats found us</h2>\n\n\n\n<p>We were considering a podcast, but had moved it down the build list. <a href=\"https://twitter.com/TaraClaeys\">Tara Claeys</a> and <a href=\"https://twitter.com/liamdempsey\">Liam Dempsey</a>, while loving the work they&#8217;ve done with Hallway Chats, found life was moving then in different directions, as it does for us all. And as Hallway Chats approached its 150th episode, the decision was made to pass the torch, or microphone as it were.</p>\n\n\n\n<p>We&#8217;re thrilled to be able to build on their legacy and continue to grow Hallway Chats through out the community, and we&#8217;re grateful to Tara and Liam that they&#8217;ve entrusted it into our care.</p>\n\n\n\n<h2 id=\"h-embrace-opportunities-that-are-the-right-fit\">Embrace opportunities that are the right fit</h2>\n\n\n\n<p>A few shifts and changes are inevitable, but the spirit of Hallway Chats will always stand. After all, why change something that so ideally meshes with our own goals?</p>\n\n\n\n<p>Listen to the <a href=\"https://hallwaychats.com/episodes/episode-150-cate-and-topher-derosia/\">150th Episode of Hallway Chats</a> where Tara, Liam, Topher, and I talk even more about the direction we&#8217;re all heading.</p>\n<p>The post <a rel=\"nofollow\" href=\"https://heropress.com/hallway-chats-joins-the-heropress-family/\">Hallway Chats Joins The HeroPress Family</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 08 Apr 2021 14:55:13 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:40;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"WPTavern: Calling All Themers: Design the Next Round of Query Block Patterns\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=114777\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:195:\"https://wptavern.com/calling-all-themers-design-the-next-round-of-query-block-patterns?utm_source=rss&utm_medium=rss&utm_campaign=calling-all-themers-design-the-next-round-of-query-block-patterns\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4621:\"<p class=\"has-drop-cap\">The Gutenberg plugin repository currently has an open ticket calling for <a href=\"https://github.com/WordPress/gutenberg/issues/30508\">community-contributed Query block patterns</a>. These would launch alongside Full Site Editing&rsquo;s inclusion in WordPress, which could be as soon as version 5.8 &mdash; no hard decision has been made on that yet. Some may not end up bundled directly in WordPress but could be included in the <a href=\"https://wptavern.com/first-look-at-initial-designs-for-wordpress-block-pattern-directory\">upcoming pattern directory</a>.</p>\n\n\n\n<p><a href=\"https://wptavern.com/gutenberg-10-2-adds-spacers-to-navigation-lists-lets-users-categorize-template-parts-and-introduces-scoped-patterns\">Gutenberg 10.2</a> introduced a new feature called &ldquo;scoped patterns.&rdquo; This system allows developers to build block patterns within a specific context instead of always being available from the inserter. Specifically, the Gutenberg development team created a handful of patterns for the Query block. When inserting the block, users can choose between each of these patterns as a starting point for outputting their posts.</p>\n\n\n\n<img />Pattern selections for the Query block in its initial state.\n\n\n\n<p>The patterns are far too generic and do not come close to replicating the array of design options in the real world. While the end goal is to not cover every scenario imaginable, WordPress should ultimately give users a little more flexibility as a jumping-off point.</p>\n\n\n\n<p>&ldquo;Those were always meant to be temporary to start with,&rdquo; wrote Kjell Reigstad, a core WordPress contributor and Design Director at Automattic, in the GitHub ticket. &ldquo;Let&rsquo;s take another look at these, both to replace the current ones for now, but also so that we eventually have a nice set of WordPress community-designed query block patterns to add to the Pattern Directory at launch.&rdquo;</p>\n\n\n\n<p>Theme authors will be able to release their own scoped patterns for the Query block too. However, with block-based themes being few and far between at this phase of the project, WordPress needs to set the stage.</p>\n\n\n\n<p>This is one of the reasons I was so vocal pre-WordPress 5.5 about the <a href=\"https://wptavern.com/decision-time-what-block-patterns-should-ship-with-wordpress-5-5\">early pattern designs</a>, and it is why I was happy to see them <a href=\"https://wptavern.com/gutenberg-8-7-adds-minor-changes-updates-block-pattern-designs-and-continues-full-site-editing-work\">overhauled before the launch</a>. Many users need that bit of inspiration, that push to try out alternate layouts instead of building them on their own. They need options beyond the typical stacked blog posts layouts.</p>\n\n\n\n<p>A few well-designed Query patterns do that.</p>\n\n\n\n<p>I decided to try my hand at building what I think would be a fun Query pattern to use:</p>\n\n\n\n<img />Query block pattern with full-width background image.\n\n\n\n<p>I built this using core blocks instead of the Query block with the Eksell theme installed. Side note: let me just reiterate my earlier <a href=\"https://wptavern.com/compatibility-is-not-enough-the-eksell-wordpress-theme-creates-art-with-blocks\">review of Eksell</a>. It is such a well-rounded design that anyone can create all sorts of custom patterns. It makes for an easy-to-use testbed for exploring design concepts.</p>\n\n\n\n<p>The idea was based on a pattern that Mel Choyce-Dwan shared in the ticket:</p>\n\n\n\n<img /> Query block pattern with background image and centered text. \n\n\n\n<p>I do not think it is currently possible to build this Query pattern idea with the site editor. Unless I am mistaken, there is no way to use the post featured image as a background or within the Cover block, a common layout design.</p>\n\n\n\n<p>Eventually, the site editor should get to the point where theme authors can move at least a hair beyond the basics. It will take some time for the tooling to catch up, but we are approaching the point where designers can build more complex things. That is another reason theme authors should be involved with this discussion. It needs input and ideas from themers who are out there dealing with users in real-world settings. The Gutenberg team cannot know everything it needs to build without this vital community source.</p>\n\n\n\n<p>Choyce-Dwan shared several other patterns in the ticket that are worth exploring. Along with Reigstad, Beatriz Fialho and Paal Joachim Romdahl have contributed pattern ideas.</p>\n\n\n\n<p>If you fancy yourself a theme designer, now is as good a time as any to contribute.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 07 Apr 2021 22:45:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:41;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"Matt: Wix and Their Dirty Tricks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=53999\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"https://ma.tt/2021/04/wix-dirty-tricks/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3651:\"<p>Wix, the website builder company you may remember from <a href=\"https://ma.tt/2016/10/wix-and-the-gpl/\">stealing WordPress code and lying about it</a>, has now decided the best way to gain relevance is attacking the open source WordPress community in a <a href=\"https://wptavern.com/wix-takes-a-jab-at-wordpress-with-bewildering-new-marketing-campaign\">bizarre set of ads</a>. They can&#8217;t even come up with original concepts for attack ads, and have tried to rip-off of Apple&#8217;s Mac vs PC ads, but tastelessly personify the WordPress community as an absent, drunken father in a therapy session. <img src=\"https://s.w.org/images/core/emoji/13.0.1/72x72/1f914.png\" alt=\"?\" class=\"wp-smiley\" /></p>\n\n\n\n<p>I have a lot of empathy for whoever was forced to work on these ads, including the actors, it must have felt bad working on something that&#8217;s<strong> like Encyclopedia Britannica attacking Wikipedia</strong>. WordPress is a global movement of hundreds of thousands of volunteers and community members, coming together to make the web a better place. The code, and everything you put into it, belongs to you, and its open source license ensures that you&#8217;re in complete control, now and forever. WordPress is free, and also gives you freedom. </p>\n\n\n\n<p>Wix is a for-profit company with a valuation that peaked at around 20 billion dollars, and whose business model is getting customers to pay more and more every year and making it difficult to leave or <a href=\"https://www.trustpilot.com/review/www.wix.com?aspects=refund\">get a refund</a>. (Don&#8217;t take my word for it, look at their investor presentations.) They are so insecure that they are also the only website creator I&#8217;m aware of that doesn&#8217;t allow you to export your content, so they&#8217;re like a roach motel where you can check in but never check out. Once you buy into their proprietary stack you&#8217;re locked in, which even their support documentation admits:</p>\n\n\n\n<div class=\"wp-block-image\"><img /></div>\n\n\n\n<p><strong>So if we&#8217;re comparing website builders to abusive relationships, Wix is one that locks you in the basement and doesn&#8217;t let you leave.</strong> I&#8217;m surprised consumer protection agencies haven&#8217;t gone after them.</p>\n\n\n\n<p>Philosophically, I believe in open source, and if WordPress isn&#8217;t a good fit for you there are other great open source communities like Drupal, Joomla, Jekyll, and Typo3. We also have a great relationship with some of our proprietary competitors, and I have huge respect for the teams at Shopify and Squarespace, and even though we compete I&#8217;ve always seen them operate with integrity and I&#8217;d recommend them without hesitation. </p>\n\n\n\n<p>I have to believe that users will care about that in the long run, and maybe that&#8217;s <a href=\"https://w3techs.com/technologies/history_overview/content_management/all/y\">why Squarespace just passed up Wix in market share</a>. They <a href=\"https://support.squarespace.com/hc/en-us/articles/206566687-Exporting-your-site\">natively support exporting into WordPress&#8217; format</a> and don&#8217;t have to resort to dirty tricks to be successful. I expect Squarespace&#8217;s upcoming IPO will be a great one.</p>\n\n\n\n<p>Wix, though, continues to show their true colors. Regardless of their product, I hope people consider the behavior of companies in the world they support with their dollars. Wix really wants you to see their new campaign though, so let&#8217;s take the bait and watch the creepy, misleading way they are trying to represent themselves.</p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n\n</div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 07 Apr 2021 17:34:36 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:42;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:102:\"WPTavern: Wix’s Negative Advertising Campaign Falls Flat with WordPress Developers and Professionals\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=114772\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:243:\"https://wptavern.com/wixs-negative-advertising-campaign-falls-flat-with-wordpress-developers-and-professionals?utm_source=rss&utm_medium=rss&utm_campaign=wixs-negative-advertising-campaign-falls-flat-with-wordpress-developers-and-professionals\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5971:\"<p>Wix has launched a negative advertising campaign targeting WordPress, following a <a href=\"https://wptavern.com/wix-takes-a-jab-at-wordpress-with-bewildering-new-marketing-campaign\">bizarre marketing stunt</a> where the company shipped out Bose headphones to influential WordPress community members. Recipients were puzzled, because it appeared the company was wasting its marketing budget on people who were not likely to be swayed by the campaign. Wix seems oblivious to the <a href=\"https://twitter.com/danyork/status/1379128016387866624\">negative </a><a href=\"https://twitter.com/wesbos/status/1379570402347864066\">responses</a> to its headphones marketing ploy.</p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">Like, these are nice headphones, but I want to know if there is a proprietary CMS that is willing to pay to replace the outdoor condenser thing for my A/C within the next 12 months or not before making my decision.</p>&mdash; Josh Pollock (@Josh412) <a href=\"https://twitter.com/Josh412/status/1379470244968857600?ref_src=twsrc%5Etfw\">April 6, 2021</a></blockquote>\n</div>\n\n\n\n<p>Subsequent advertisements in this new &ldquo;You Deserve Better&rdquo; campaign are markedly more negative than the <a href=\"https://www.secret-update.com/from-wp\">launch video</a> sent to recipients of the headphones, packed with tasteless and tired motifs. </p>\n\n\n\n<div class=\"wp-block-image\"><img /></div>\n\n\n\n<p>Wix representative Maya Gril said the campaign is part of the company&rsquo;s &ldquo;initiative to connect with an audience that doesn&rsquo;t think or know that Wix applies to their needs.&rdquo; </p>\n\n\n\n<p>When asked what message they are intending to send with the videos, Gril likened using WordPress to being stuck in a bad relationship.</p>\n\n\n\n<p>&ldquo;The campaign shows in a clever way that WordPress users don&rsquo;t need to be stuck in a bad relationship with their platform and they should consider the alternative which allows them to focus on their actual work,&rdquo; Gril said. &ldquo;Each video in the campaign revolves around user pain points, which also highlight Wix&rsquo;s strengths.&rdquo;</p>\n\n\n\n<p>Morten Rand-Hendriksen, who received a pair of the headphones, characterized the campaign as &ldquo;<a href=\"https://twitter.com/mor10/status/1379513577619394563\">nuclear troll-marketing</a>.&rdquo; Instead of emphasizing any new, innovative features of the Wix platform, the ads come across as short, petulant narratives with no clear objective. </p>\n\n\n\n<p>&ldquo;I guess they&rsquo;re trying to provoke us into responding?&rdquo; WordPress co-founder Matt Mullenweg <a href=\"https://twitter.com/photomatt/status/1379217014472896512\">tweeted</a> in response to discussion on the campaign. &ldquo;I agree it comes off as creepy and misleading to impersonate &lsquo;WordPress&rsquo; this way.</p>\n\n\n\n<p>&ldquo;I can&rsquo;t tell if trying to get a cease and desist letter is part of their strategy to try and drum up press. Unethical, tacky behavior from an unethical, tacky company. Good reminder: I really appreciate the integrity, principles, and ethics of WordPress ecosystem companies.&rdquo;</p>\n\n\n\n<p>Wix&rsquo;s new video ads seem more geared at professional developers with references that are likely outside of regular users&rsquo; experience with the software. The company may have failed to attract professionals in the past, which might explain why it opted to send thousands of dollars worth of headphones to influential WordPress users who fall within that demographic. </p>\n\n\n\n<p>In 2019, Wix began shifting its marketing budget away from TV advertisements and added products that targeted agencies, developers, and designers. The company spent $55 million in marketing in the first quarter of 2019, according to reports shared with <a href=\"https://digiday.com/marketing/wix-com-using-linkedin-target-designers-engineers-agencies/\">Digiday</a>. Wix became more active on LinkedIn&nbsp;and Twitter in pursuit of professionals who would bring more customers to its platform.</p>\n\n\n\n<p>&ldquo;We want to make it clear that we have everything a professional needs,&rdquo; Maya Gril said. &ldquo;Our product is mature and constantly evolving. We&rsquo;re broadening our target audience and we want all new, existing and prospective users to know that Wix is the ultimate web creation platform to help them create, manage and grow online.&rdquo;</p>\n\n\n\n<p>Unfortunately, Wix is lacking one very important feature for catering to &ldquo;professional needs&rdquo; &ndash; data portability.  When asked for his thoughts on the campaign, Mullenweg added that Wix is the only CMS in the world that doesn&rsquo;t allow export &ndash; even Facebook does. The <a href=\"https://support.wix.com/en/article/exporting-or-embedding-your-wix-site-elsewhere\">Wix support center</a> states: Y<em>our Wix site and all of its content is&nbsp;<a href=\"https://support.wix.com/en/article/wix-site-hosting\">hosted</a>&nbsp;exclusively on Wix&rsquo;s servers, and cannot be exported elsewhere.</em></p>\n\n\n\n<p>Having content that is locked in and cannot be easily exported to other platforms or hosts does not appeal to professionals. No amount of extravagant spending on marketing stunts will convince developers to bring their customers to a proprietary CMS that also locks in your content. </p>\n\n\n\n<p>This is why their marketing doesn&rsquo;t appeal to the group of people who received the headphones. Many of them build WordPress as long-time contributors or run WordPress product businesses. </p>\n\n\n\n<p>Wix fundamentally misunderstands why people use WordPress and what makes them stay. It&rsquo;s for reasons not found in their overly simplified list of differentiators played out in the new video ads. The desperate marketing tactics, which are geared more towards developers and power users, serve only to reinforce the platform&rsquo;s underdog status and lack of market awareness.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 07 Apr 2021 07:10:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:43;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"WPTavern: Twentig Now Upgrades the Twenty Twenty-One Theme Experience\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=114785\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:183:\"https://wptavern.com/twentig-now-upgrades-the-twenty-twenty-one-theme-experience?utm_source=rss&utm_medium=rss&utm_campaign=twentig-now-upgrades-the-twenty-twenty-one-theme-experience\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6098:\"<p class=\"has-drop-cap\">Twentig, the brainchild of sibling co-founders Diane and Yann Collet, now supports the Twenty Twenty-One theme. The developers originally built the plugin, which is <a href=\"https://wordpress.org/plugins/twentig/\">hosted on WordPress.org</a>, around the idea of &ldquo;supercharging&rdquo; Twenty Twenty. After its initial success, they have turned their sights onto the most recent default theme, adding a slew of new features over the past few months.</p>\n\n\n\n<p>The plugin still supports Twenty Twenty. It has merely added features for the latest default theme to its repertoire. The duo behind the plugin does not plan to stop there either.</p>\n\n\n\n<p>&ldquo;Yes, we&rsquo;ll definitively continue this with the future default themes,&rdquo; said Yann Collet. &ldquo;It will be exciting to see what we can do with Full Site Editing and the next block-based theme. With FSE coming, the opportunity is immense, making us confident that we can help people building better websites.&rdquo;</p>\n\n\n\n<p>When I <a href=\"https://wptavern.com/supercharge-the-default-wordpress-theme-with-twentig-a-toolbox-for-twenty-twenty\">last covered it</a>, Twentig had a mere 4,000 active installations. All 34 of its reviews were five stars. Today, the plugin has accumulated over 10,000 installs and 75 five-star reviews. It did garner its first four-star rating, bringing the average down a tad. Nevertheless, its user base clearly loves what the plugin developers are doing.</p>\n\n\n\n<p>The team has created 10 <a href=\"https://twentig.com/demos/\">website demos</a> and 8 single-page examples for inspiration, each on top of the Twenty Twenty-One theme.</p>\n\n\n\n<ul><li class=\"blocks-gallery-item\"><img />Orlando</li><li class=\"blocks-gallery-item\"><img />Kyoto</li><li class=\"blocks-gallery-item\"><img />Letuce</li></ul>\n\n\n\n<p>One of the great things about the plugin is that it essentially treats the default themes as a bit of a foundation, a framework. Users do not have to search around for a new theme when they tire of their current look. They can simply mix things up with Twentig.</p>\n\n\n\n<p>&ldquo;The goal is to showcase the power and flexibility of Twentig, the default theme, and the block editor,&rdquo; said the team. &ldquo;And ultimately inspire people to be creative with blocks. It&rsquo;s incredibly fun and fast to build directly inside the block editor with our block patterns instead of using a prototyping tool like Figma.&rdquo;</p>\n\n\n\n<h2>Extending the Block Editor</h2>\n\n\n\n<p class=\"has-drop-cap\">The Twentig plugin&rsquo;s strength is in how it extends the block editor. Users are first presented with a custom sidebar panel with a plethora of patterns and full-page layouts. The plugin then further provides options for individual blocks.</p>\n\n\n\n<p>Unlike many other block-related plugins, Twentig does not register its own blocks. It uses the core WordPress blocks, except for Contact Form 7 integration, by mixing and matching them in various ways. If a user needs a call-to-action section, the plugin offers 11 patterns. If a user wants to spruce up their galleries, they have plenty of choices.</p>\n\n\n\n<img />Inserting a single page layout.\n\n\n\n<p>The plugin&rsquo;s page layouts and patterns all work with both the Twenty Twenty and Twenty Twenty-One themes. Since Twentig relies primarily on core blocks, it is just a matter of making sure its custom CSS works.</p>\n\n\n\n<p>Some blocks get an extra setting or two through the plugin. However, the bulk of customization options happen through the Twentig &ldquo;CSS Library.&rdquo; This is a setting under the Advanced tab for most blocks that users can access by clicking the &ldquo;+&rdquo; icon next to the Additional CSS Classes option. It allows users to tick off checkboxes for numerous classes &mdash; each has an explanation of what it does. These are merely a set of utilities that change the block&rsquo;s output in some way.</p>\n\n\n\n<img />Picking Heading block classes via the Twentig CSS Library.\n\n\n\n<p>Twentig&rsquo;s CSS classes system follows the road paved by utility class frameworks like Tailwind. WordPress does a little of this but does not take a holistic approach to it. I have argued that WordPress <a href=\"https://wptavern.com/themes-of-the-future-a-design-framework-and-a-master-theme\">should build a design framework</a> in the past. A standardized class system would play well with block options, giving the development team a foundation for creating a better user experience across themes.</p>\n\n\n\n<p>The drawback is that the two extra stylesheets on top of Twenty Twenty-One&rsquo;s CSS add a bit of heft to the page. This could give pause to users who want to keep things lightweight. However, it has a smaller footprint than when using it with the older Twenty Twenty.</p>\n\n\n\n<h2>Customizer Options and More</h2>\n\n\n\n<img />Customizing Twenty Twenty-One&rsquo;s design.\n\n\n\n<p class=\"has-drop-cap\">The plugin packages dozens of settings under the &ldquo;Twentig Options&rdquo; customizer panel. It also extends other sections, such as adding more color options. Users who care more about modifying the overall design than blocks will find nearly anything they need to put their own spin on their sites.</p>\n\n\n\n<p>Everything from fonts to site layouts to what post metadata to show is covered. Users can also switch between stacked and grid-style blog posts designs while further customizing based on their choices.</p>\n\n\n\n<p>The biggest downside to the plugin&rsquo;s customizer integration is that it does not utilize the live preview functionality with most of its options. Making a change means a frame refresh to see its effects. A little bit of custom JavaScript and a few partials for server-side changes would go a long way toward making the experience better.</p>\n\n\n\n<p>Ultimately, future versions of Twentig will rely less on or not at all on the customizer. If Twenty Twenty-Two is a block-based, FSE theme, such customization will happen in the upcoming site editor. The plugin developers will need to change tactics and find ways to extend the experience in new ways.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 06 Apr 2021 22:36:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:44;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"WPTavern: Wix Takes a Jab at WordPress with Bewildering New Marketing Campaign\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=114714\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:201:\"https://wptavern.com/wix-takes-a-jab-at-wordpress-with-bewildering-new-marketing-campaign?utm_source=rss&utm_medium=rss&utm_campaign=wix-takes-a-jab-at-wordpress-with-bewildering-new-marketing-campaign\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5921:\"<p>Wix is taking direct aim at WordPress in a new cryptic marketing campaign that began over the weekend with shipments of <a href=\"https://www.amazon.com/Bose-Cancelling-Wireless-Bluetooth-Headphones/dp/B07Q9MJKBV/\">Bose noise-canceling headphones</a> landing in the mailboxes of prominent WordPress users. At the end of December, 2020, Wix sent out the following Twitter DM to a group of people it deemed &ldquo;influencers from the tech industry,&rdquo; soliciting their addresses in order to deliver a box: </p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>In the last few months, my team and I have been working on a new innovative concept. We have packed this concept into a free, no strings attached box that we&rsquo;d love to share with you as one of our selected influencers from the Tech industry. </p><p>I know the information I have provided you is basic, but the reason is that I do not want to ruin your experience (and let&rsquo;s be honest, what&rsquo;s more fun than being surprised on the holidays?)</p></blockquote>\n\n\n\n<ul><li class=\"blocks-gallery-item\"><img /></li><li class=\"blocks-gallery-item\"><img /></li></ul>\n\n\n\n<p>Recipients were instructed to scan a QR code to view a one-minute <a href=\"https://www.secret-update.com/from-wp\">video</a> where a man acts as a personified &ldquo;WordPress&rdquo; making bizarre claims:</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>&ldquo;Apparently, Wix is coming out with a campaign trashing me. I just want you to know that it&rsquo;s totally fake news, completely bogus. They&rsquo;re just spreading lies because they&rsquo;re jealous of our relationship.&rdquo; </p><cite><a href=\"https://www.secret-update.com/from-wp\">www.secret-update.com/from-wp</a></cite></blockquote>\n\n\n\n<p>The message of the video is not clear and it ends with a few snide jabs referencing &ldquo;exhausted memory&rdquo; and WordPress&rsquo; market share. </p>\n\n\n\n<div><img /></div>\n\n\n\n<p>The most common reaction to the surprise headphones was confusion. Many recipients had no idea what Wix was trying to communicate with the gift.</p>\n\n\n\n<div>\n<blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">I don\'t understand their goal. Am I supposed to start using their service because they sent me some headphones I don\'t want?</p>&mdash; Michael Torbert (@michaeltorbert) <a href=\"https://twitter.com/michaeltorbert/status/1379125464917237763?ref_src=twsrc%5Etfw\">April 5, 2021</a></blockquote>\n</div>\n\n\n\n<p>A few people perceived the video to be cheeky and humorous. WordPress contributor Aaron Campbell found it off-putting. </p>\n\n\n\n<p>&ldquo;The video takes some odd snipes at WordPress, but the whole overall feel is a bit shady/dirty. Not a great look for Wix in my opinion,&rdquo; Campbell said after receiving the headphones in the mail. &ldquo;I think I&rsquo;d be fine with it if it weren&rsquo;t signed as &lsquo;From WP&rsquo; and &lsquo;Yours, WP.&rsquo; By the time I got to watching the video I already had that bad taste in my mouth.&rdquo;</p>\n\n\n\n<p>Some speculated that it may be the first act in a strange marketing saga of Wix targeting WordPress. Others were inadvertently convinced the headphones were actually from WordPress, since the advertisement uses WordPress&rsquo; trademark in the video. This may be a violation of the WordPress Foundation&rsquo;s <a href=\"https://wordpressfoundation.org/trademark-policy/\">trademark policy</a>, but this has not yet been confirmed. Wix was not printed anywhere in the message, except on the shipping label. </p>\n\n\n\n<div>\n<blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">Ok thank you to whoever at <a href=\"https://twitter.com/WordPress?ref_src=twsrc%5Etfw\">@WordPress</a> sent me this, I don&rsquo;t remember giving you my address but these are cool headphones and you definitely got me not-using-Wix if that was your goal &hearts;&#65039;<br /><br />(i also have not used WP in like 10 years but now it will be in/around my head, dammit) <a href=\"https://t.co/l1xA7FvAiw\">pic.twitter.com/l1xA7FvAiw</a></p>&mdash; swyx (@swyx) <a href=\"https://twitter.com/swyx/status/1378268509910622211?ref_src=twsrc%5Etfw\">April 3, 2021</a></blockquote>\n</div>\n\n\n\n<p>This isn&rsquo;t the first time WordPress and Wix have been at odds. In 2016, Matt Mullenweg&nbsp;<a rel=\"noreferrer noopener\" href=\"https://wptavern.com/mullenweg-takes-aim-at-wix-over-gpl-abuses-wix-response-fails-to-address-licensing-issue\" target=\"_blank\">called out Wix for copying GPL code</a>&nbsp;from the WordPress mobile app and distributing it in its&nbsp;<a rel=\"noreferrer noopener\" href=\"http://www.prnewswire.com/news-releases/wixcom-launches-wix-app-providing-a-powerful-mobile-operating-system-for-small-business-owners-store-owners-hoteliers-and-bloggers-around-the-world-300339448.html\" target=\"_blank\">proprietary app</a>.&nbsp;This rendered the entire app in violation of the GPL. Instead of complying with the GPL, Wix responded by <a href=\"https://wptavern.com/wix-removes-gpl-licensed-wordpress-code-from-mobile-app-forks-original-mit-library\">removing the GPL-licensed code</a> and forking the original MIT-licensed library that the WordPress mobile app code was built upon. The fork was relicensed under an absurd modification of the MIT that prohibits the code&rsquo;s redistribution under any copyleft license. </p>\n\n\n\n<p>In October 2020, Wix passed Drupal as 4th <a href=\"https://w3techs.com/technologies/history_overview/content_management\">most popular CMS</a>, according to W3Techs. Since that time, Squarespace has grown to overtake Wix, pushing the CMS back into 5th place with 2.4% of the market. It&rsquo;s only natural that Wix would want to target WordPress, the market leader at 40.9%. However, the strategy of misrepresenting WordPress, while sending headphones to influential users and contributors, was perplexing and unsavory. Wix has not yet responded to my request for comment on its new marketing campaign.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 06 Apr 2021 06:09:31 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:45;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"WPTavern: The Michelle WordPress Theme Launches With Dozens of Block Patterns and Styles\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=114708\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:221:\"https://wptavern.com/the-michelle-wordpress-theme-launches-with-dozens-of-block-patterns-and-styles?utm_source=rss&utm_medium=rss&utm_campaign=the-michelle-wordpress-theme-launches-with-dozens-of-block-patterns-and-styles\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6534:\"<p class=\"has-drop-cap\">Oliver Juhas recently released his sixth theme to the WordPress community for free. <a href=\"https://wordpress.org/themes/michelle/\">Michelle</a> is a block-ready theme. However, it also supports Beaver Builder, Elementor, and other page-building plugins.</p>\n\n\n\n<p>It is a multipurpose theme, which is often an immediate turn-off for me. I prefer to see a purpose-driven design with a unique take on a niche. However, it is hard not to love the personality of Michelle. Juhas did not shy away from putting his brand of styling on the project, which is evident in his past <a href=\"https://wordpress.org/themes/author/webmandesign/\">free themes</a>.</p>\n\n\n\n<p>Juhas is marketing Michelle as an accessibility-ready theme. However, it has yet to receive an accessibility review for the theme directory, which would allow it to be tagged as such. From a quick scan for common issues, everything seems to be in order. It will likely pass its review like some of his past free themes. And, &ldquo;inclusive, disabilities friendly, and barrierless&rdquo; are at the forefront of his branding for <a href=\"https://www.webmandesign.eu/\">WebMan Design</a>.</p>\n\n\n\n<p>As has become common for block-ready themes, Michelle packages a &ldquo;Content Only&rdquo; template. This is a post/page template that allows end-users to use the block editor as a page builder by not displaying anything other than the post content.</p>\n\n\n\n<p>The theme is yet another showcase of what is possible with the block editor. A couple of weeks after Anders Nor&eacute;n&rsquo;s <a href=\"https://wptavern.com/eksell-portfolio-theme-now-available-in-wordpress-themes-directory\">Eksell landed in the directory</a>, Juhas has presented the community with another quality theme. The two are entirely different in style and approach, but they both make the block system shine in their own ways.</p>\n\n\n\n<img />Portfolio designed using multiple blocks.\n\n\n\n<p>Users can read more about the theme and peruse several demos via the <a href=\"https://www.webmandesign.eu/portfolio/michelle-wordpress-theme/\">theme&rsquo;s official page</a>.</p>\n\n\n\n<h2>Block Patterns and Styles</h2>\n\n\n\n<p class=\"has-drop-cap\">Michelle may be the only free theme in existence with 67 patterns. And, no, you did not misread that. It literally registers 67 block patterns. Yeah, that is a lot.</p>\n\n\n\n<p>It has a little bit of everything. From team galleries to logos, from hero headers to contact cards, it is hard not to find something you need. There was no way that I could realistically test all of them. However, for the dozen or so that I did try, they worked well and offered an easy one-click option for end-users.</p>\n\n\n\n<img />Variable gallery with description pattern.\n\n\n\n<p>I always knew the day would come when a theme author would push the limits on the number of patterns it should offer. While 67 seems a bit excessive, I know from experience that we will see a day when patterns number in the 100s.</p>\n\n\n\n<p>I hate to continue beating a dead horse, but WordPress needs to use an <a href=\"https://wptavern.com/proposal-to-create-an-expanded-view-or-overlay-for-the-block-patterns-inserter\">overlay system for block patterns</a>, at least for desktop users. Michelle makes it more apparent than ever that a small slide-out panel will not cut it.</p>\n\n\n\n<p>If the theme&rsquo;s array of patterns is not enough to whet users&rsquo; appetites, its two dozen block styles just might.</p>\n\n\n\n<img />Hiding a Heading block for everyone but screen-readers.\n\n\n\n<p>The options range from light and dark text shadows to variable galleries. It even has an &ldquo;accessibly hidden&rdquo; style for Heading blocks, which hides the text from the screen but makes it available to screen readers.</p>\n\n\n\n<h2>Block-Ready Footer and 404 Page</h2>\n\n\n\n<p class=\"has-drop-cap\">The theme allows end-users to build their footer and 404 error pages via the block system. Considering that the site editor is not available yet and the block editor is limited to post content, Juhas had to think outside the box a little to make this possible. He made use of the reusable blocks system. This is the sort of ingenuity that happens when theme authors are not burdened by too many rules.</p>\n\n\n\n<p>In the customizer, users can select the Theme Options &gt; Content section. From there, they are directed to pick a reusable block for their footer and 404 pages. Or they can simply opt out of it. The customizer section also links to the semi-secret admin page to create reusable blocks.</p>\n\n\n\n<img />Select reusable blocks for the 404 and footer content.\n\n\n\n<p>In the past, I have used a similar technique for 404 views. Instead of going the reusable block route, theme users could select a private page. Either option is acceptable for allowing users to modify content they may not have been able to customize in the past.</p>\n\n\n\n<h2>Starter Content</h2>\n\n\n\n<p class=\"has-drop-cap\">Michelle makes extensive use of the WordPress starter content feature. This allows new WordPress users to see what their site could look like with pre-loaded content. The theme creates Home, About, Blog, Services, FAQ, and Contact pages.</p>\n\n\n\n<img />Homepage starter content.\n\n\n\n<p>The feature has languished in recent years. Many theme authors had hoped they would eventually be able to use the feature for non-new installs too. However, Helen Hou-Sand&iacute; <a href=\"https://wptavern.com/wordpress-to-combine-its-long-neglected-theme-previewer-with-starter-content\">got the ball rolling again in November 2020</a>, breathing new life into an old idea. WordPress.org would begin displaying theme starter content via the theme preview system. Only the Twenty Twenty-One, Twenty Twenty, and Twenty Seventeen themes received this treatment last year. It now seems that it is being rolled out for others.</p>\n\n\n\n<p>This is a welcome change in the directory. Users can now <a href=\"https://wp-themes.com/michelle/\">get a feel of the Michelle theme</a> without tracking down the author&rsquo;s demo. It is a better experience than the old-school demo content.</p>\n\n\n\n<p>One issue is that the previewer uses the first sentence of the theme description for the demo&rsquo;s tagline. This can make for a long and unusual bit of text. It can also mess up a theme&rsquo;s layout as it is doing with Michelle. I hope this will be addressed from WordPress&rsquo;s end soon.</p>\n\n\n\n<p>Other theme authors should note that starter content could factor into whether a user skips over or downloads their theme.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 05 Apr 2021 23:21:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:46;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Matt: Doctorow on IP\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=53979\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"https://ma.tt/2021/04/doctorow-on-ip/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:655:\"<p>It&#8217;s not every day you see noted writer Cory Doctorow refer to a column as &#8220;the piece I&#8217;m most proud of,&#8221; and <a href=\"https://locusmag.com/2020/09/cory-doctorow-ip/\">his essay in Locus Magazine on IP doesn&#8217;t disappoint</a>, connecting the free software movement and the evolution of the term &#8220;author&#8217;s monopolies&#8221; to &#8220;intellectual property.&#8221;</p>\n\n\n\n<p>The essay on DRM and Apple, <a href=\"https://pluralistic.net/2021/03/22/gandersauce/#petard\">available on his WP-powered blog</a>, <a href=\"https://twitter.com/doctorow/status/1374020143316004864\">or Twitter</a>, is also worth reading.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 04 Apr 2021 02:42:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:47;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"WordPress.org blog: The Month in WordPress: March 2021\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://wordpress.org/news/?p=10084\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wordpress.org/news/2021/04/the-month-in-wordpress-march-2021/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:9799:\"<blockquote class=\"wp-block-quote\"><p>This way of iterating improves WordPress and ties back to one of my favorite open-source principles. The idea that with many eyes, all bugs are shallow. To me, that means that with enough people looking at a problem, someone is bound to be able to see the solution.</p></blockquote>\n\n\n\n<p class=\"has-drop-cap\">These words from <a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha Haden Chomphosy</a> on the <a href=\"https://wordpress.org/news/2021/03/how-wordpress-improves/\">How WordPress Improves</a> episode of the <a href=\"https://wordpress.org/news/podcast/\">WP Briefing Podcast</a> point to the factors that differentiate building software in an open-source environment. Our updates this month are closely tied to the philosophy behind those core principles of open source software.&nbsp;</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>WordPress 5.7 released</h2>\n\n\n\n<p>WordPress <a href=\"https://wordpress.org/news/2021/03/esperanza/\">version 5.7</a> “Esperanza,” came out on March 9. The release offers fresher admin colors, several improvements to the block editor, single-click HTTP to HTTPS migration, and a new Robots API. Read more about it in the <a href=\"https://wordpress.org/news/2021/03/esperanza/\">release post</a>, the <a href=\"https://make.wordpress.org/core/2021/02/23/wordpress-5-7-field-guide/\">field guide</a>, and the <a href=\"https://make.wordpress.org/community/2021/03/12/meetup-group-resources-talking-points-for-wordpress-5-7/\">talking points post for meetup groups</a>. The Core Team has also <a href=\"https://make.wordpress.org/core/2021/03/30/5-8-pre-planning/\">started work on WordPress 5.8 pre-planning</a>.</p>\n\n\n\n<p>Want to contribute to WordPress 5.8? Join the WordPress <a href=\"https://wordpress.slack.com/archives/C02RQBWTW\">#core</a> channel in the <a href=\"https://make.wordpress.org/chat/\">Make WordPress Slack</a> and follow the <a href=\"https://make.wordpress.org/core/\">Core Team blog</a>. The Core Team hosts weekly chats on Wednesdays at <a href=\"https://www.timeanddate.com/worldclock/fixedtime.html?hour=5&min=00&sec=0\">5 AM</a> and <a href=\"https://www.timeanddate.com/worldclock/fixedtime.html?hour=20&min=00&sec=0\">8 PM</a> UTC.&nbsp;</p>\n\n\n\n<h2>Gutenberg Version 10.1 and 10.2 are out</h2>\n\n\n\n<p>Contributor teams released Gutenberg <a href=\"https://make.wordpress.org/core/2021/03/02/whats-new-in-gutenberg-10-1-3-march/\">Version 10.1</a> on March 3 and <a href=\"https://make.wordpress.org/core/2021/03/17/whats-new-in-gutenberg-10-2-17-march/\">Version 10.2</a> on March 17.</p>\n\n\n\n<p><a href=\"https://make.wordpress.org/core/2021/03/02/whats-new-in-gutenberg-10-1-3-march/\">Version 10.1</a> showcases significant improvements to reusable blocks, a clearer image toolbar, and spatial options for the social media block. <a href=\"https://make.wordpress.org/core/2021/03/17/whats-new-in-gutenberg-10-2-17-march/\">Version 10.2</a> offers block pattern options to display contents from the query block and removes writing prompts from empty paragraphs in the editor. It also adds width adjustment for spacer blocks in horizontal parent blocks and the ability to transform media and text blocks into columns.</p>\n\n\n\n<p>Want to get involved in building Gutenberg? Follow <a href=\"https://make.wordpress.org/core/\">the Core Team blog</a>, contribute to <a href=\"https://github.com/WordPress/gutenberg/\">Gutenberg on GitHub</a>, and join the <a href=\"https://wordpress.slack.com/archives/C02QB2JS7\">#core-editor</a> channel in <a href=\"https://make.wordpress.org/chat/\">the Make WordPress Slack</a>. The “<a href=\"https://make.wordpress.org/core/2021/03/08/whats-next-in-gutenberg-march-2021/\">What’s next in Gutenberg</a>” post offers more details on the latest updates. Don’t miss the monthly Gutenberg tutorial on <a href=\"https://wordpress.org/news/2021/03/so-you-want-to-make-block-patterns/\">How to make block patterns</a>!</p>\n\n\n\n<h2>Full Site Editing updates</h2>\n\n\n\n<p>March saw a plethora of updates to the <a href=\"https://make.wordpress.org/core/tag/full-site-editing/\">Full Site Editing</a> project!</p>\n\n\n\n<ul><li><a href=\"https://profiles.wordpress.org/chanthaboune/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>chanthaboune</a> published a <a href=\"https://make.wordpress.org/updates/2021/03/12/full-site-editing-pre-merge-overview/\">Full Site Editing pre-merge overview</a>. She shares the project’s current status, go/no-go dates for core merge, communication plans, and challenges.&nbsp;</li><li>March saw two calls for testing as part of the <a href=\"https://make.wordpress.org/test/handbook/full-site-editing-outreach-experiment/\">Full Site Editing outreach program</a>. The first test of the month — <a href=\"https://make.wordpress.org/test/2021/03/09/fse-program-testing-call-3-create-a-fun-custom-404-%20page/\">creating a custom 404 page</a>,&nbsp; wrapped up successfully.&nbsp; Participate in the latest testing initiative — <a href=\"https://make.wordpress.org/test/2021/03/25/fse-program-testing-call-4-building-a-restaurant-themed-header/\">&nbsp;build a restaurant-themed website header</a> to help improve the future of WordPress! Deadline: April 8.&nbsp;</li><li>You can also find <a href=\"https://make.wordpress.org/core/2021/03/16/high-level-feedback-from-the-fse-program-march/\">high-level feedback on the FSE Program</a> in this March 2021 post.</li></ul>\n\n\n\n<h2>Proposal launched for a WordPress contributor handbook</h2>\n\n\n\n<p>A proposal has been kicked off on <a href=\"https://make.wordpress.org/updates/2021/03/16/proposal-a-wordpress-project-contributor-handbook/\">building a project-wide WordPress contributor handbook</a>. The handbook will have content around the WordPress project’s underlying philosophies and commitments, along with shared expectations on working together and building products. It will also contain modern open source best practices for WordPress.&nbsp;</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>Further Reading</h2>\n\n\n\n<ul><li>You can now schedule office hours with Matt Mullenweg and Josepha Haden as part of their <a href=\"https://make.wordpress.org/core/2021/03/12/q2-listening-hours-april-7th-2021/\">Q2 Quarterly listening hours initiative</a>. This quarter’s listening session is scheduled for April 7th, 2021, from <a href=\"https://www.timeanddate.com/worldclock/fixedtime.html?iso=20210407T2200\">22:00</a>&#8211;<a href=\"https://www.timeanddate.com/worldclock/fixedtime.html?iso=20210408T0000\">24:00</a> UTC. Slots are still available — <a href=\"https://calendly.com/mmullenweg/team-lead-office-hours?month=2021-04&date=2021-04-08\">sign up now</a>!&nbsp;</li><li>The Themes Team is working on <a href=\"https://make.wordpress.org/themes/2021/03/17/next-steps-on-themes-and-reviews/\">automating the theme review process</a>. The team has shared a detailed post on these changes and is requesting feedback.</li><li>The Core Team has <a href=\"https://make.wordpress.org/core/2021/03/05/dual-licensing-gutenberg-next-steps/\">kicked-off plans</a> on dual licensing Gutenberg under GPL and MPL.</li><li><a href=\"https://buddypress.org/2021/03/buddypress-7-2-1-security-release/\">Version 7.2.1</a> of BuddyPress (security release) is out! Update all your BuddyPresses!</li><li>The Docs Team shipped the <a href=\"https://make.wordpress.org/docs/2021/03/07/wordpress-documentation-style-guide-google-season-of-docs-2020-project-report-tacitonic/\">WordPress documentation style guide</a> as part of its Google Season of Docs 2020 effort. The team has also kicked off work on applying for <a href=\"https://href.li/?https://make.wordpress.org/docs/tag/season-of-docs-2021/\">Google Season of Docs 2021</a>!</li><li>The Polyglots Team is making <a href=\"https://make.wordpress.org/polyglots/2021/03/26/polyglots-training-working-group-update-2/\">significant progress on building their contributor training program</a>. The team is also requesting feedback on <a href=\"https://make.wordpress.org/polyglots/2021/03/30/request-for-feedback-polyglots-team-stats-dashboard/\">building their dashboard</a>.</li><li><a href=\"https://profiles.wordpress.org/chanthaboune/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>chanthaboune</a> shared an <a href=\"https://make.wordpress.org/updates/2021/03/19/experiment-coordinating-sponsored-contributor-teams/\">experiment to coordinate sponsored contributors</a> by adding them to a private Slack channel to offer them better support.</li><li>The Community Team announced its revamped <a href=\"https://make.wordpress.org/community/2021-wordpress-global-community-sponsorship-program/\">2021 Global Sponsorship Program</a>. The team also published a <a href=\"https://make.wordpress.org/community/2021/03/12/2021-financial-update-for-the-wordpress-community/\">financial update for WP Communities in 2021</a>.</li><li>The Core Team is moving ahead to <a href=\"https://make.wordpress.org/core/2021/03/04/discussion-dropping-support-for-ie11/\">drop support for Internet Explorer 11</a> for upcoming versions of WordPress.</li><li>The Design Team shared <a href=\"https://make.wordpress.org/design/2021/03/30/wordpress-org-patterns-directory/\">initial designs for the Block pattern directory</a>.</li><li>The <a href=\"https://make.wordpress.org/chat/\">Make WordPress Slack</a> workspace briefly went down on March 30 due to a Slack ToS issue, which was subsequently resolved. More details on <a href=\"https://make.wordpress.org/updates/2021/03/30/journal-entry-wordpress-slack-workspace-unavailability/\">this explainer post</a>.</li></ul>\n\n\n\n<p><em>Have a story that we should include in the next “Month in WordPress” post? Please </em><a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\"><em>submit it using this form</em></a><em>.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 03 Apr 2021 16:00:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Hari Shanker R\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:48;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"WPTavern: FSF Doubles Down on Stallman Reinstatement, WordPress Does Not Support His Return to the Board\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=114565\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:251:\"https://wptavern.com/fsf-doubles-down-on-stallman-reinstatement-wordpress-does-not-support-his-return-to-the-board?utm_source=rss&utm_medium=rss&utm_campaign=fsf-doubles-down-on-stallman-reinstatement-wordpress-does-not-support-his-return-to-the-board\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:9079:\"<p>The <a href=\"https://www.fsf.org/\">Free Software Foundation</a> (FSF) is hemorrhaging board members and management following the <a href=\"https://wptavern.com/free-software-community-condemns-richard-stallmans-reinstatement-to-fsf-board-of-directors\">reinstatement of Richard Stallman</a>. The GPL author and founder of the FSF announced last week that he had rejoined the board and is not planning to resign a second time. An <a href=\"https://rms-open-letter.github.io/\">open letter</a> signed by more than 3,000 people called&nbsp;for the removal of Stallman from all leadership positions, including the GNU project, and removal of the entire Board of the FSF. So far it has gained support from Red hat, Mozilla, Outreachy, the Software Conservancy project, and many other high profile organizations.</p>\n\n\n\n<p>&ldquo;We are long past the point where we can pretend that the most important thing about software freedom is the software,&rdquo; Mozilla Engineering Community Manager Michael Hoye said in signing support for the open letter. &ldquo;We cannot demand better from the internet if we do not demand better from our leaders, our colleagues and ourselves.&rdquo; </p>\n\n\n\n<p>In addition to the resignation of former FSF board member Kat Walsh, the organization&rsquo;s executive director, deputy director, and chief technology officer have also resigned. They published a joint <a href=\"https://www.fsf.org/blogs/executive-director/management-team-members-resigning\">statement</a>, reaffirming their commitment to the mission of free software, despite their departure:</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p></p><p>As members of FSF management, we have decided to resign, with specific end dates to be determined. We believe in the importance of the FSF&rsquo;s mission and feel a new team will be better placed to implement recent changes in governance. Free software and copyleft are critical issues of our time, and the FSF is, and should continue to be, the organization leading this movement. FSF staff have our utmost respect, support, and appreciation, and it has been a privilege to work with you all. Our team&rsquo;s mutual goal is to ensure a smooth transition while supporting the necessary renovation of the foundation&rsquo;s governance.</p></blockquote>\n\n\n\n<p>An oddly-timed <a href=\"https://twitter.com/fsf/status/1376714994721689601\">tweet</a> announced a new published statement the FSF board voted on, which &ldquo;condemns misogyny, racism, and other bigotry as well as defamation, intimidation, and unfair attacks on free thought and speech.&rdquo; The statement was met with ridicule and outrage on Twitter, as it hints at the defense Stallman used when he <a href=\"https://wptavern.com/gpl-author-richard-stallman-resigns-from-free-software-foundation\">resigned as the FSF board director</a>, claiming he had been subject to &ldquo;a series of misunderstandings and mischaracterizations.&rdquo;</p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">While our primary mission is freedom for software users, we want to be clear, the FSF board unanimously condemns misogyny, racism,and other bigotry as well as defamation, intimidation, and unfair attacks on free thought and speech.</p>&mdash; Free Software Fndn. (@fsf) <a href=\"https://twitter.com/fsf/status/1376714994721689601?ref_src=twsrc%5Etfw\">March 30, 2021</a></blockquote>\n</div>\n\n\n\n<p>Recent statements published to the FSF website indicate that its leadership is doubling down on the decision to reinstate Stallman:</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p><a href=\"https://fsf.org/about/staff-and-board\">Some of our colleagues in the FSF</a>&nbsp;have decided to resign. We are grateful for the good work they have done for so long, and we will miss them. We regret losing them; we regret the situation that has motivated them to leave.</p><p>We appreciate their strong commitment to free software and we want to find replacements with a similar competence and commitment. We are open to suggestions and applications for these positions.</p><p>Finally, we would like to thank the numerous friends across the free software movement who have recently joined as well as those who have left and provided suggestions for helping us through this difficult time.</p></blockquote>\n\n\n\n<p>The FSF seems to be counting the resignations as an acceptable loss, as funds from donors are evaporating. Several organizations have discontinued financial support for the organization. Most notably, Red Hat, a long-time donor with hundreds of contributors who have submitted millions of lines of code to projects stewarded by the FSF, publicly <a href=\"https://www.redhat.com/en/blog/red-hat-statement-about-richard-stallmans-return-free-software-foundation-board\">discontinued support</a> for the organization and any of its events. In addition to $708,016 in membership dues, the FSF received $1,383,003 in contributions, gifts, and grants, which makes up the bulk of its annual revenue, according to a recent <a href=\"https://www.charitynavigator.org/index.cfm?bay=search.summary&orgid=8557#accountability-transparency-performance-metrics\">report</a> on Charity Navigator.</p>\n\n\n\n<p>Stallman is synonymous with the FSF and his reinstatement puts many free software advocates in a difficult position. Some cannot easily write off the entire organization, as it is engaged in important work. The FSF publishes the GPL, LGPL, and FDL licenses. It also holds copyrights to defend free software from those who would seek to make it proprietary and has the power to enforce the GPL. As part of its <a href=\"https://www.fsf.org/licensing\">Free Software Licensing and Compliance Lab</a>, the organization works to ensure that free software distributors respect their obligations to pass on the user freedoms that these licenses are meant to convey. </p>\n\n\n\n<p>The Fedora Council cited the FSF&rsquo;s important function when publishing a <a href=\"https://fedoramagazine.org/fedora-council-statement-on-richard-stallman-rejoining-fsf-board/\">statement</a> on why it is pulling funding from the organization:</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>Along with many in the free and open source software world, the Fedora Council was taken aback that the Free Software Foundation (FSF) has allowed Richard Stallman to rejoin their Board of Directors given his history of abuse and harassment. The Fedora Council does not normally involve itself with the governance of other projects. However, this is an exceptional case due to the FSF&rsquo;s stewardship of the GPL family of licenses, which are critical for the work we do.</p></blockquote>\n\n\n\n<p>The council will not provide funding or attend any FSF-sponsored events where Stallman is a featured speaker or exhibitor, and stated that this also applies to any organization where he has a leadership role.</p>\n\n\n\n<h2>WordPress Responds to Stallman&rsquo;s Reinstatement</h2>\n\n\n\n<p>Up until today, WordPress had not published an official statement on Stallman&rsquo;s reinstatement to the FSF board. <a href=\"https://wordpressfoundation.org/\">The WordPress Foundation</a> website lists the Free Software Foundation as one of the project&rsquo;s inspirations. WordPress co-founder Matt Mullenweg was also among the FSF&rsquo;s list of patrons in previous years. </p>\n\n\n\n<p>After asking WordPress&rsquo; executive director Josepha Haden Chomphosy for a comment regarding the matter, she published a <a href=\"https://josepha.blog/2021/04/02/on-recent-news-about-the-fsf-board-of-directors/\">statement</a>: </p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>In short, I do not support his return as a board member.&nbsp;</p><p>It makes me proud that the WordPress project embodies the best traditions of open source and retires outdated traditions, or shibboleths, that do not have a place in our mission: to democratize publishing and grow the open web. For years, this community has been committed to championing underrepresented voices and maintaining a safe and welcoming environment for those we rarely see in open source.&nbsp;</p></blockquote>\n\n\n\n<p>Although the statement is published on her personal blog, Haden Chomphosy confirmed that this is the WordPress project&rsquo;s official stance on Stallman&rsquo;s reinstatement. The statement quietly calls out Stallman&rsquo;s lack of accountability and the fact that he has not publicly acknowledged how harmful his behavior has been to the free software community:</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>The high standards for welcoming behavior are held across the board. WordPress contributors lead with accountability, acknowledgment of error, and a genuine desire to grow based on feedback. Under the guidance of many thoughtful leaders, WordPress makes space for those who are committed to growth.&nbsp;</p></blockquote>\n\n\n\n<p>The message is more focused on the positive aspects of the WordPress community and its values but is clear in the first paragraph: WordPress does not support Stallman&rsquo;s return as an FSF board member.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 02 Apr 2021 18:57:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:49;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"WPTavern: Disable the WordPress Block Editor’s Fullscreen Mode With a Plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=114659\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:195:\"https://wptavern.com/disable-the-wordpress-block-editors-fullscreen-mode-with-a-plugin?utm_source=rss&utm_medium=rss&utm_campaign=disable-the-wordpress-block-editors-fullscreen-mode-with-a-plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3173:\"<p class=\"has-drop-cap\">On Wednesday, Johan Jonk Stenstr&ouml;m released <a href=\"https://wordpress.org/plugins/fullscreen-mode-b-gone/\">Fullscreen Mode B Gone</a> to the WordPress plugin directory. As the catchy title implies, it gets rid of the block editor&rsquo;s fullscreen mode.</p>\n\n\n\n<p>As anyone who prefers to opt-out of fullscreen mode knows, there are moments when you log into WordPress and hop over to the post editor only to find it is not in the state you last left it. It is a slight annoyance but enough to dampen the user experience.</p>\n\n\n\n<p>Nearly two years ago, Andrew Duthie opened a ticket for storing <a href=\"https://github.com/WordPress/gutenberg/issues/15105\">users&rsquo; editor preferences to the database</a> instead of their browser&rsquo;s local storage. This includes basic settings like toggling whether fullscreen mode should be enabled. Local storage is not considered sticky, at least not permanently. It can be cleared in a variety of ways. This means that users must deal with disabling the default fullscreen editor more often than they should. It is also not stored when switching browsers, using private tabs, or when working on multiple sites across the same network.</p>\n\n\n\n<p>The ultimate goal should be to persistently save preferences on a per-user basis. There has been little movement on that ticket in the past year. Most comments have come in the form of closed duplicates.</p>\n\n\n\n<p>In the meantime, users must look for alternative solutions. That&rsquo;s where plugins like Fullscreen Mode B Gone offer some assistance.</p>\n\n\n\n<p>The plugin is simple. It toggles the block editor&rsquo;s fullscreen mode off. Regardless of whether users have switched browsers, cleared their local storage, or anything else, they can safely enter the editor without being bombarded by a different editing experience.</p>\n\n\n\n<img />New post with fullscreen mode disabled.\n\n\n\n<p>Both an upside and a downside of the plugin is that it resets fullscreen mode each time the user opens the editor. It does not address the sticky issue. For users like me who prefer to always have fullscreen mode disabled or only turn it on once in a while, this is ideal. However, for users who want WordPress to remember the last state, it is best to skip this plugin. The default experience is better suited to what you need.</p>\n\n\n\n<p>One of the things I dislike about how the editor works is that it requires JavaScript for plugins to make changes like this. Even if it is merely a few lines of code, it still calls for one more HTTP response just to alter a default setting. At least with PHP, a simple filter would have sufficed.</p>\n\n\n\n<p>This is not Stenstr&ouml;m&rsquo;s first editor-related plugin. He has a plugin titled <a href=\"https://wordpress.org/plugins/fatso/\">Fatso</a>, which widens the content canvas for users who prefer more space when writing. Also, continuing with the &ldquo;B Gone&rdquo; branding, he released <a href=\"https://wordpress.org/plugins/welcome-to-the-block-editor-b-gone/\">Welcome To the Block Editor B Gone</a> a week ago. Similar to his current plugin, it disables the block editor welcome message permanently.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 02 Apr 2021 16:38:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Wed, 28 Apr 2021 02:07:20 GMT\";s:12:\"content-type\";s:8:\"text/xml\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:13:\"last-modified\";s:29:\"Wed, 28 Apr 2021 01:45:07 GMT\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";s:16:\"content-encoding\";s:2:\"br\";}}s:5:\"build\";s:14:\"20210122212207\";}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    412,
    '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9',
    '1619618840',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    413,
    '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9',
    '1619575640',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    414,
    '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b',
    '1619618840',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    415,
    '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b',
    '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2021/04/curious-about-full-site-editing/\'>Curious About Full Site Editing?</a></li><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2021/04/your-opinion-is-our-opportunity/\'>WP Briefing: Your Opinion is Our Opportunity</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wptavern.com/churel-is-a-colorful-and-minimalist-block-ready-wordpress-theme?utm_source=rss&#038;utm_medium=rss&#038;utm_campaign=churel-is-a-colorful-and-minimalist-block-ready-wordpress-theme\'>WPTavern: Churel Is a Colorful and Minimalist Block-Ready WordPress Theme</a></li><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2021/04/curious-about-full-site-editing/\'>WordPress.org blog: Curious About Full Site Editing?</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/will-we-see-in-person-wordcamps-in-2021-an-open-discussion-on-a-path-forward?utm_source=rss&#038;utm_medium=rss&#038;utm_campaign=will-we-see-in-person-wordcamps-in-2021-an-open-discussion-on-a-path-forward\'>WPTavern: Will We See In-Person WordCamps in 2021? An Open Discussion on a Path Forward</a></li></ul></div>',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    416,
    '_site_transient_timeout_theme_roots',
    '1619577444',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    417,
    '_site_transient_theme_roots',
    'a:1:{s:11:\"ty-lerscott\";s:7:\"/themes\";}',
    'no'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_postmeta
# ------------------------------------------------------------

INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (1, 2, '_wp_page_template', 'default');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (2, 3, '_wp_page_template', 'default');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (5, 6, '_menu_item_type', 'custom');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (6, 6, '_menu_item_menu_item_parent', '0');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (7, 6, '_menu_item_object_id', '6');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (8, 6, '_menu_item_object', 'custom');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (9, 6, '_menu_item_target', '');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (10, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (11, 6, '_menu_item_xfn', '');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (12, 6, '_menu_item_url', '/');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (14, 7, '_menu_item_type', 'post_type');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (15, 7, '_menu_item_menu_item_parent', '0');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (16, 7, '_menu_item_object_id', '2');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (17, 7, '_menu_item_object', 'page');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (18, 7, '_menu_item_target', '');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (19, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (20, 7, '_menu_item_xfn', '');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (21, 7, '_menu_item_url', '');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (22, 7, '_menu_item_orphaned', '1619055680');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (23, 3, '_wp_trash_meta_status', 'draft');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (24, 3, '_wp_trash_meta_time', '1619056208');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (25, 3, '_wp_desired_post_slug', 'privacy-policy');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (26, 2, '_wp_trash_meta_status', 'publish');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (27, 2, '_wp_trash_meta_time', '1619056209');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (28, 2, '_wp_desired_post_slug', 'sample-page');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (29, 10, '_edit_lock', '1619056078:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (30, 12, '_edit_lock', '1619056097:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (49, 16, '_menu_item_type', 'custom');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (50, 16, '_menu_item_menu_item_parent', '0');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (51, 16, '_menu_item_object_id', '16');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (52, 16, '_menu_item_object', 'custom');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (53, 16, '_menu_item_target', '');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (54, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (55, 16, '_menu_item_xfn', '');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (56, 16, '_menu_item_url', '#resume');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (58, 17, '_menu_item_type', 'custom');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (59, 17, '_menu_item_menu_item_parent', '0');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (60, 17, '_menu_item_object_id', '17');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (61, 17, '_menu_item_object', 'custom');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (62, 17, '_menu_item_target', '_blank');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (63, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (64, 17, '_menu_item_xfn', '');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    65,
    17,
    '_menu_item_url',
    'https://www.linkedin.com/in/tylerscottwilliams/'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (67, 18, '_menu_item_type', 'custom');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (68, 18, '_menu_item_menu_item_parent', '0');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (69, 18, '_menu_item_object_id', '18');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (70, 18, '_menu_item_object', 'custom');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (71, 18, '_menu_item_target', '_blank');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (72, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (73, 18, '_menu_item_xfn', '');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    74,
    18,
    '_menu_item_url',
    'https://github.com/ty-lerscott'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (76, 19, '_menu_item_type', 'custom');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (77, 19, '_menu_item_menu_item_parent', '0');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (78, 19, '_menu_item_object_id', '19');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (79, 19, '_menu_item_object', 'custom');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (80, 19, '_menu_item_target', '');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (81, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (82, 19, '_menu_item_xfn', '');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (83, 19, '_menu_item_url', '/projects');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (85, 20, '_menu_item_type', 'custom');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (86, 20, '_menu_item_menu_item_parent', '0');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (87, 20, '_menu_item_object_id', '20');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (88, 20, '_menu_item_object', 'custom');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (89, 20, '_menu_item_target', '');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (90, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (91, 20, '_menu_item_xfn', '');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (92, 20, '_menu_item_url', '/about');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    94,
    21,
    '_wp_attached_file',
    '2021/04/Profile-Photo.png'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    95,
    21,
    '_wp_attachment_metadata',
    'a:5:{s:5:\"width\";i:214;s:6:\"height\";i:215;s:4:\"file\";s:25:\"2021/04/Profile-Photo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Profile-Photo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (98, 22, '_wp_trash_meta_status', 'publish');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (99, 22, '_wp_trash_meta_time', '1619135134');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (100, 6, '_wp_old_date', '2021-04-22');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (101, 19, '_wp_old_date', '2021-04-22');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (102, 20, '_wp_old_date', '2021-04-22');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (103, 16, '_wp_old_date', '2021-04-22');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (104, 17, '_wp_old_date', '2021-04-22');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (105, 18, '_wp_old_date', '2021-04-22');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (106, 21, '_edit_lock', '1619215868:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (107, 23, '_edit_lock', '1619288512:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (110, 1, '_edit_lock', '1619402397:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (118, 6, '_wp_old_date', '2021-04-23');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (119, 19, '_wp_old_date', '2021-04-23');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (120, 20, '_wp_old_date', '2021-04-23');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (121, 16, '_wp_old_date', '2021-04-23');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (122, 17, '_wp_old_date', '2021-04-23');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (123, 18, '_wp_old_date', '2021-04-23');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (126, 1, '_wp_old_slug', 'animating-link-underlines');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (127, 23, '_wp_trash_meta_status', 'publish');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (128, 23, '_wp_trash_meta_time', '1619302488');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (129, 23, '_wp_desired_post_slug', 'hello-world-2');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (136, 1, '_wp_trash_meta_status', 'publish');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (137, 1, '_wp_trash_meta_time', '1619402414');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (138, 1, '_wp_desired_post_slug', 'hello-world');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    139,
    1,
    '_wp_trash_meta_comments_status',
    'a:1:{i:1;s:1:\"1\";}'
  );
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (140, 33, '_edit_lock', '1619405570:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (147, 33, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (150, 41, '_edit_lock', '1619576190:1');

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_posts
# ------------------------------------------------------------

INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    1,
    1,
    '2021-04-19 01:38:53',
    '2021-04-19 01:38:53',
    '<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>It\'s more important to me to get my thoughts out of my head and written down somewhere, and if by some chance someone finds what I have to say to hold any value, I\'m glad to have done a little bit to help</p><cite>- me</cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>I\'m baby lomo tumeric waistcoat, health goth adaptogen paleo kombucha blog godard keffiyeh iceland. Kickstarter prism occupy pok pok. Next level kogi pinterest brunch affogato knausgaard pitchfork chambray taiyaki. Intelligentsia waistcoat prism literally. IPhone slow-carb shaman vaporware seitan. Leggings next level kinfolk celiac offal four loko vaporware. Shoreditch vape williamsburg chartreuse roof party godard tilde aesthetic thundercats air plant hammock kogi mumblecore.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Freegan you probably haven\'t heard of them four dollar toast, tousled direct trade messenger bag man bun portland mustache quinoa plaid kogi sustainable put a bird on it. Prism listicle master cleanse wayfarers brooklyn farm-to-table. Knausgaard occupy readymade chicharrones cardigan cloud bread bespoke sustainable vaporware farm-to-table pour-over shaman. VHS organic skateboard selfies cliche fam truffaut gastropub prism jean shorts raw denim narwhal cray health goth swag. Kinfolk bespoke meh single-origin coffee, plaid synth organic unicorn locavore chillwave. Migas waistcoat cardigan kitsch brunch. Vice fam DIY, jean shorts cloud bread lo-fi flexitarian ugh humblebrag waistcoat tumblr gastropub.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Scenester kinfolk tbh af. Poutine venmo food truck mustache. Freegan poke normcore hell of. Listicle palo santo health goth XOXO selfies. Skateboard try-hard vice mixtape godard tilde enamel pin keytar salvia keffiyeh dreamcatcher pork belly. Ramps everyday carry twee poke raclette artisan succulents stumptown kinfolk helvetica retro.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Occupy chicharrones deep v, scenester you probably haven\'t heard of them beard farm-to-table. Occupy food truck marfa polaroid. Chartreuse four dollar toast cardigan asymmetrical. Shoreditch chia cold-pressed YOLO. Austin PBR&amp;B chia raw denim vape disrupt swag. Bitters disrupt kitsch tumblr raw denim. Synth tumeric mlkshk VHS fingerstache, bushwick literally bespoke health goth art party beard chia.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Before they sold out forage wayfarers sartorial poke tofu roof party fanny pack banjo letterpress lo-fi migas crucifix ramps franzen. Wayfarers ennui banh mi, prism skateboard enamel pin air plant venmo portland scenester vice. Ramps pickled copper mug tattooed. Enamel pin snackwave banh mi yuccie, vinyl offal prism. VHS green juice scenester lomo, helvetica fashion axe pinterest aesthetic organic pickled swag bitters. Lomo artisan butcher keytar tbh stumptown disrupt everyday carry vexillologist hella synth.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lo-fi flannel portland synth shoreditch sustainable +1 chambray hexagon glossier messenger bag activated charcoal seitan. Vape bicycle rights swag keffiyeh taiyaki lomo. Mixtape franzen offal selfies organic chambray. Helvetica authentic mustache intelligentsia truffaut pitchfork iceland hot chicken air plant echo park semiotics dreamcatcher readymade cred cardigan. Bushwick small batch sustainable unicorn health goth. Butcher cray cold-pressed whatever viral, migas brunch actually pickled taiyaki drinking vinegar iceland +1 af paleo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Poutine irony chicharrones, bitters poke vaporware squid occupy pinterest. Skateboard pour-over palo santo PBR&amp;B snackwave poutine semiotics williamsburg. YOLO glossier ugh, deep v slow-carb vice 3 wolf moon. Scenester bespoke normcore la croix.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>IPhone pitchfork snackwave, literally cliche tumblr kombucha direct trade. Hashtag health goth scenester, ugh vice pug waistcoat austin drinking vinegar mlkshk knausgaard sriracha yuccie beard. Put a bird on it skateboard cardigan glossier pour-over. Marfa try-hard cloud bread woke next level roof party messenger bag waistcoat kogi leggings affogato umami lyft hot chicken chillwave. YOLO viral next level, kale chips marfa put a bird on it hashtag everyday carry meh post-ironic dreamcatcher yr sriracha. Irony twee snackwave put a bird on it.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Helvetica wayfarers marfa edison bulb shabby chic, leggings jean shorts cold-pressed chartreuse fingerstache hexagon typewriter celiac. Wayfarers raclette church-key, kogi truffaut copper mug paleo etsy cred master cleanse. Af disrupt kombucha hexagon, organic trust fund hoodie small batch. Master cleanse mlkshk normcore post-ironic. Ugh bitters taxidermy mumblecore cornhole activated charcoal taiyaki fixie freegan etsy kogi tofu actually hot chicken quinoa. Chillwave vinyl taiyaki tbh man bun. Actually sartorial la croix forage PBR&amp;B keytar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Raclette tacos brooklyn 3 wolf moon, lumbersexual ugh skateboard. You probably haven\'t heard of them mixtape tumeric deep v, chartreuse schlitz drinking vinegar try-hard polaroid pok pok taxidermy single-origin coffee heirloom austin. 90\'s single-origin coffee kickstarter, deep v stumptown beard ennui snackwave thundercats street art selfies. Tumeric vape snackwave, vegan lyft kogi truffaut irony prism.v</p>\n<!-- /wp:paragraph -->',
    'Why I\'m Joining the Bandwagon of Bloggers',
    '',
    'trash',
    'open',
    'open',
    '',
    'hello-world__trashed',
    '',
    '',
    '2021-04-26 02:00:14',
    '2021-04-26 02:00:14',
    '',
    0,
    'http://watercoo.lerscott.local/?p=1',
    0,
    'post',
    '',
    1
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    2,
    1,
    '2021-04-19 01:38:53',
    '2021-04-19 01:38:53',
    '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://watercoo.lerscott.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->',
    'Sample Page',
    '',
    'trash',
    'closed',
    'open',
    '',
    'sample-page__trashed',
    '',
    '',
    '2021-04-22 01:50:09',
    '2021-04-22 01:50:09',
    '',
    0,
    'http://watercoo.lerscott.local/?page_id=2',
    0,
    'page',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    3,
    1,
    '2021-04-19 01:38:53',
    '2021-04-19 01:38:53',
    '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://watercoo.lerscott.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->',
    'Privacy Policy',
    '',
    'trash',
    'closed',
    'open',
    '',
    'privacy-policy__trashed',
    '',
    '',
    '2021-04-22 01:50:08',
    '2021-04-22 01:50:08',
    '',
    0,
    'http://watercoo.lerscott.local/?page_id=3',
    0,
    'page',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    6,
    1,
    '2021-04-24 23:29:50',
    '2021-04-22 01:44:24',
    '',
    'Home',
    '',
    'publish',
    'closed',
    'closed',
    '',
    'blog',
    '',
    '',
    '2021-04-24 23:29:50',
    '2021-04-24 23:29:50',
    '',
    0,
    'http://watercoo.lerscott.local/?p=6',
    1,
    'nav_menu_item',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    7,
    1,
    '2021-04-22 01:41:20',
    '0000-00-00 00:00:00',
    ' ',
    '',
    '',
    'draft',
    'closed',
    'closed',
    '',
    '',
    '',
    '',
    '2021-04-22 01:41:20',
    '0000-00-00 00:00:00',
    '',
    0,
    'http://watercoo.lerscott.local/?p=7',
    1,
    'nav_menu_item',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    8,
    1,
    '2021-04-22 01:50:08',
    '2021-04-22 01:50:08',
    '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://watercoo.lerscott.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->',
    'Privacy Policy',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '3-revision-v1',
    '',
    '',
    '2021-04-22 01:50:08',
    '2021-04-22 01:50:08',
    '',
    3,
    'http://watercoo.lerscott.local/?p=8',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    9,
    1,
    '2021-04-22 01:50:09',
    '2021-04-22 01:50:09',
    '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://watercoo.lerscott.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->',
    'Sample Page',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '2-revision-v1',
    '',
    '',
    '2021-04-22 01:50:09',
    '2021-04-22 01:50:09',
    '',
    2,
    'http://watercoo.lerscott.local/?p=9',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    10,
    1,
    '2021-04-22 01:50:17',
    '2021-04-22 01:50:17',
    '',
    'Projects',
    '',
    'publish',
    'closed',
    'closed',
    '',
    'projects',
    '',
    '',
    '2021-04-22 01:50:17',
    '2021-04-22 01:50:17',
    '',
    0,
    'http://watercoo.lerscott.local/?page_id=10',
    0,
    'page',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    11,
    1,
    '2021-04-22 01:50:17',
    '2021-04-22 01:50:17',
    '',
    'Projects',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '10-revision-v1',
    '',
    '',
    '2021-04-22 01:50:17',
    '2021-04-22 01:50:17',
    '',
    10,
    'http://watercoo.lerscott.local/?p=11',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    12,
    1,
    '2021-04-22 01:50:29',
    '2021-04-22 01:50:29',
    '',
    'About',
    '',
    'publish',
    'closed',
    'closed',
    '',
    'about',
    '',
    '',
    '2021-04-22 01:50:29',
    '2021-04-22 01:50:29',
    '',
    0,
    'http://watercoo.lerscott.local/?page_id=12',
    0,
    'page',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    13,
    1,
    '2021-04-22 01:50:29',
    '2021-04-22 01:50:29',
    '',
    'About',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '12-revision-v1',
    '',
    '',
    '2021-04-22 01:50:29',
    '2021-04-22 01:50:29',
    '',
    12,
    'http://watercoo.lerscott.local/?p=13',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    16,
    1,
    '2021-04-24 23:29:50',
    '2021-04-22 01:56:36',
    '',
    'Resume',
    '',
    'publish',
    'closed',
    'closed',
    '',
    'resume',
    '',
    '',
    '2021-04-24 23:29:50',
    '2021-04-24 23:29:50',
    '',
    0,
    'http://watercoo.lerscott.local/?p=16',
    4,
    'nav_menu_item',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    17,
    1,
    '2021-04-24 23:29:50',
    '2021-04-22 01:56:36',
    '',
    'Linkedin',
    '',
    'publish',
    'closed',
    'closed',
    '',
    'linkedin',
    '',
    '',
    '2021-04-24 23:29:50',
    '2021-04-24 23:29:50',
    '',
    0,
    'http://watercoo.lerscott.local/?p=17',
    5,
    'nav_menu_item',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    18,
    1,
    '2021-04-24 23:29:50',
    '2021-04-22 01:56:36',
    '',
    'Github',
    '',
    'publish',
    'closed',
    'closed',
    '',
    'github',
    '',
    '',
    '2021-04-24 23:29:50',
    '2021-04-24 23:29:50',
    '',
    0,
    'http://watercoo.lerscott.local/?p=18',
    6,
    'nav_menu_item',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    19,
    1,
    '2021-04-24 23:29:50',
    '2021-04-22 23:17:45',
    '',
    'Projects',
    '',
    'publish',
    'closed',
    'closed',
    '',
    'projects',
    '',
    '',
    '2021-04-24 23:29:50',
    '2021-04-24 23:29:50',
    '',
    0,
    'http://watercoo.lerscott.local/?p=19',
    2,
    'nav_menu_item',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    20,
    1,
    '2021-04-24 23:29:50',
    '2021-04-22 23:17:45',
    '',
    'About',
    '',
    'publish',
    'closed',
    'closed',
    '',
    'about',
    '',
    '',
    '2021-04-24 23:29:50',
    '2021-04-24 23:29:50',
    '',
    0,
    'http://watercoo.lerscott.local/?p=20',
    3,
    'nav_menu_item',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    21,
    1,
    '2021-04-22 23:45:17',
    '2021-04-22 23:45:17',
    '',
    'Profile Photo',
    '',
    'inherit',
    'open',
    'closed',
    '',
    'profile-photo',
    '',
    '',
    '2021-04-22 23:45:17',
    '2021-04-22 23:45:17',
    '',
    0,
    'http://watercoo.lerscott.local/wp-content/uploads/2021/04/Profile-Photo.png',
    0,
    'attachment',
    'image/png',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    22,
    1,
    '2021-04-22 23:45:34',
    '2021-04-22 23:45:34',
    '{\n    \"ty-lerscott::header_image\": {\n        \"value\": \"http://watercoo.lerscott.local/wp-content/uploads/2021/04/Profile-Photo.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-22 23:45:34\"\n    },\n    \"ty-lerscott::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://watercoo.lerscott.local/wp-content/uploads/2021/04/Profile-Photo.png\",\n            \"thumbnail_url\": \"http://watercoo.lerscott.local/wp-content/uploads/2021/04/Profile-Photo.png\",\n            \"timestamp\": 1619135127253,\n            \"attachment_id\": 21,\n            \"width\": 214,\n            \"height\": 215\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-22 23:45:34\"\n    }\n}',
    '',
    '',
    'trash',
    'closed',
    'closed',
    '',
    '759d6172-301d-4f5b-9e79-7f2dbbb3edac',
    '',
    '',
    '2021-04-22 23:45:34',
    '2021-04-22 23:45:34',
    '',
    0,
    'http://watercoo.lerscott.local/2021/04/22/759d6172-301d-4f5b-9e79-7f2dbbb3edac/',
    0,
    'customize_changeset',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    23,
    1,
    '2021-04-24 18:20:22',
    '2021-04-24 18:20:22',
    '',
    'Hello, World!',
    '',
    'trash',
    'open',
    'open',
    '',
    'hello-world-2__trashed',
    '',
    '',
    '2021-04-24 22:14:48',
    '2021-04-24 22:14:48',
    '',
    0,
    'http://watercoo.lerscott.local/?p=23',
    0,
    'post',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    24,
    1,
    '2021-04-24 18:20:22',
    '2021-04-24 18:20:22',
    '',
    'Hello, World!',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '23-revision-v1',
    '',
    '',
    '2021-04-24 18:20:22',
    '2021-04-24 18:20:22',
    '',
    23,
    'http://watercoo.lerscott.local/?p=24',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    25,
    1,
    '2021-04-24 18:20:47',
    '2021-04-24 18:20:47',
    '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->',
    'Wordpress Default Hello',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '1-revision-v1',
    '',
    '',
    '2021-04-24 18:20:47',
    '2021-04-24 18:20:47',
    '',
    1,
    'http://watercoo.lerscott.local/?p=25',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    26,
    1,
    '2021-04-24 21:37:07',
    '2021-04-24 21:37:07',
    '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->',
    'Animating Link Underlines',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '1-revision-v1',
    '',
    '',
    '2021-04-24 21:37:07',
    '2021-04-24 21:37:07',
    '',
    1,
    'http://watercoo.lerscott.local/?p=26',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    28,
    1,
    '2021-04-24 22:14:24',
    '2021-04-24 22:14:24',
    '<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>It\'s more important to me to get my thoughts out of my head and written down somewhere, and if by some chance someone finds what I have to say to hold any value, I\'m glad to have done a little bit to help</p></blockquote>\n<!-- /wp:quote -->',
    'Why I\'m Joining the Bandwagon of Bloggers',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '1-revision-v1',
    '',
    '',
    '2021-04-24 22:14:24',
    '2021-04-24 22:14:24',
    '',
    1,
    'http://watercoo.lerscott.local/?p=28',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    29,
    1,
    '2021-04-24 23:18:37',
    '2021-04-24 23:18:37',
    '<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>It\'s more important to me to get my thoughts out of my head and written down somewhere, and if by some chance someone finds what I have to say to hold any value, I\'m glad to have done a little bit to help</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->',
    'Why I\'m Joining the Bandwagon of Bloggers',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '1-revision-v1',
    '',
    '',
    '2021-04-24 23:18:37',
    '2021-04-24 23:18:37',
    '',
    1,
    'http://watercoo.lerscott.local/?p=29',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    30,
    1,
    '2021-04-25 01:00:24',
    '2021-04-25 01:00:24',
    '<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>It\'s more important to me to get my thoughts out of my head and written down somewhere, and if by some chance someone finds what I have to say to hold any value, I\'m glad to have done a little bit to help</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>I\'m baby lomo tumeric waistcoat, health goth adaptogen paleo kombucha blog godard keffiyeh iceland. Kickstarter prism occupy pok pok. Next level kogi pinterest brunch affogato knausgaard pitchfork chambray taiyaki. Intelligentsia waistcoat prism literally. IPhone slow-carb shaman vaporware seitan. Leggings next level kinfolk celiac offal four loko vaporware. Shoreditch vape williamsburg chartreuse roof party godard tilde aesthetic thundercats air plant hammock kogi mumblecore.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Freegan you probably haven\'t heard of them four dollar toast, tousled direct trade messenger bag man bun portland mustache quinoa plaid kogi sustainable put a bird on it. Prism listicle master cleanse wayfarers brooklyn farm-to-table. Knausgaard occupy readymade chicharrones cardigan cloud bread bespoke sustainable vaporware farm-to-table pour-over shaman. VHS organic skateboard selfies cliche fam truffaut gastropub prism jean shorts raw denim narwhal cray health goth swag. Kinfolk bespoke meh single-origin coffee, plaid synth organic unicorn locavore chillwave. Migas waistcoat cardigan kitsch brunch. Vice fam DIY, jean shorts cloud bread lo-fi flexitarian ugh humblebrag waistcoat tumblr gastropub.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Scenester kinfolk tbh af. Poutine venmo food truck mustache. Freegan poke normcore hell of. Listicle palo santo health goth XOXO selfies. Skateboard try-hard vice mixtape godard tilde enamel pin keytar salvia keffiyeh dreamcatcher pork belly. Ramps everyday carry twee poke raclette artisan succulents stumptown kinfolk helvetica retro.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Occupy chicharrones deep v, scenester you probably haven\'t heard of them beard farm-to-table. Occupy food truck marfa polaroid. Chartreuse four dollar toast cardigan asymmetrical. Shoreditch chia cold-pressed YOLO. Austin PBR&amp;B chia raw denim vape disrupt swag. Bitters disrupt kitsch tumblr raw denim. Synth tumeric mlkshk VHS fingerstache, bushwick literally bespoke health goth art party beard chia.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Before they sold out forage wayfarers sartorial poke tofu roof party fanny pack banjo letterpress lo-fi migas crucifix ramps franzen. Wayfarers ennui banh mi, prism skateboard enamel pin air plant venmo portland scenester vice. Ramps pickled copper mug tattooed. Enamel pin snackwave banh mi yuccie, vinyl offal prism. VHS green juice scenester lomo, helvetica fashion axe pinterest aesthetic organic pickled swag bitters. Lomo artisan butcher keytar tbh stumptown disrupt everyday carry vexillologist hella synth.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lo-fi flannel portland synth shoreditch sustainable +1 chambray hexagon glossier messenger bag activated charcoal seitan. Vape bicycle rights swag keffiyeh taiyaki lomo. Mixtape franzen offal selfies organic chambray. Helvetica authentic mustache intelligentsia truffaut pitchfork iceland hot chicken air plant echo park semiotics dreamcatcher readymade cred cardigan. Bushwick small batch sustainable unicorn health goth. Butcher cray cold-pressed whatever viral, migas brunch actually pickled taiyaki drinking vinegar iceland +1 af paleo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Poutine irony chicharrones, bitters poke vaporware squid occupy pinterest. Skateboard pour-over palo santo PBR&amp;B snackwave poutine semiotics williamsburg. YOLO glossier ugh, deep v slow-carb vice 3 wolf moon. Scenester bespoke normcore la croix.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>IPhone pitchfork snackwave, literally cliche tumblr kombucha direct trade. Hashtag health goth scenester, ugh vice pug waistcoat austin drinking vinegar mlkshk knausgaard sriracha yuccie beard. Put a bird on it skateboard cardigan glossier pour-over. Marfa try-hard cloud bread woke next level roof party messenger bag waistcoat kogi leggings affogato umami lyft hot chicken chillwave. YOLO viral next level, kale chips marfa put a bird on it hashtag everyday carry meh post-ironic dreamcatcher yr sriracha. Irony twee snackwave put a bird on it.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Helvetica wayfarers marfa edison bulb shabby chic, leggings jean shorts cold-pressed chartreuse fingerstache hexagon typewriter celiac. Wayfarers raclette church-key, kogi truffaut copper mug paleo etsy cred master cleanse. Af disrupt kombucha hexagon, organic trust fund hoodie small batch. Master cleanse mlkshk normcore post-ironic. Ugh bitters taxidermy mumblecore cornhole activated charcoal taiyaki fixie freegan etsy kogi tofu actually hot chicken quinoa. Chillwave vinyl taiyaki tbh man bun. Actually sartorial la croix forage PBR&amp;B keytar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Raclette tacos brooklyn 3 wolf moon, lumbersexual ugh skateboard. You probably haven\'t heard of them mixtape tumeric deep v, chartreuse schlitz drinking vinegar try-hard polaroid pok pok taxidermy single-origin coffee heirloom austin. 90\'s single-origin coffee kickstarter, deep v stumptown beard ennui snackwave thundercats street art selfies. Tumeric vape snackwave, vegan lyft kogi truffaut irony prism.v</p>\n<!-- /wp:paragraph -->',
    'Why I\'m Joining the Bandwagon of Bloggers',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '1-revision-v1',
    '',
    '',
    '2021-04-25 01:00:24',
    '2021-04-25 01:00:24',
    '',
    1,
    'http://watercoo.lerscott.local/?p=30',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    31,
    1,
    '2021-04-26 02:00:02',
    '2021-04-26 02:00:02',
    '<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>TL;DR - I just want to learn and the best way to learn is by presenting my worldview and getting feedback from my peers.</p><p></p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->',
    'Why I\'m Joining the Bandwagon of Bloggers',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '1-autosave-v1',
    '',
    '',
    '2021-04-26 02:00:02',
    '2021-04-26 02:00:02',
    '',
    1,
    'http://watercoo.lerscott.local/?p=31',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    32,
    1,
    '2021-04-25 01:14:05',
    '2021-04-25 01:14:05',
    '<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>It\'s more important to me to get my thoughts out of my head and written down somewhere, and if by some chance someone finds what I have to say to hold any value, I\'m glad to have done a little bit to help</p><cite>- me</cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>I\'m baby lomo tumeric waistcoat, health goth adaptogen paleo kombucha blog godard keffiyeh iceland. Kickstarter prism occupy pok pok. Next level kogi pinterest brunch affogato knausgaard pitchfork chambray taiyaki. Intelligentsia waistcoat prism literally. IPhone slow-carb shaman vaporware seitan. Leggings next level kinfolk celiac offal four loko vaporware. Shoreditch vape williamsburg chartreuse roof party godard tilde aesthetic thundercats air plant hammock kogi mumblecore.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Freegan you probably haven\'t heard of them four dollar toast, tousled direct trade messenger bag man bun portland mustache quinoa plaid kogi sustainable put a bird on it. Prism listicle master cleanse wayfarers brooklyn farm-to-table. Knausgaard occupy readymade chicharrones cardigan cloud bread bespoke sustainable vaporware farm-to-table pour-over shaman. VHS organic skateboard selfies cliche fam truffaut gastropub prism jean shorts raw denim narwhal cray health goth swag. Kinfolk bespoke meh single-origin coffee, plaid synth organic unicorn locavore chillwave. Migas waistcoat cardigan kitsch brunch. Vice fam DIY, jean shorts cloud bread lo-fi flexitarian ugh humblebrag waistcoat tumblr gastropub.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Scenester kinfolk tbh af. Poutine venmo food truck mustache. Freegan poke normcore hell of. Listicle palo santo health goth XOXO selfies. Skateboard try-hard vice mixtape godard tilde enamel pin keytar salvia keffiyeh dreamcatcher pork belly. Ramps everyday carry twee poke raclette artisan succulents stumptown kinfolk helvetica retro.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Occupy chicharrones deep v, scenester you probably haven\'t heard of them beard farm-to-table. Occupy food truck marfa polaroid. Chartreuse four dollar toast cardigan asymmetrical. Shoreditch chia cold-pressed YOLO. Austin PBR&amp;B chia raw denim vape disrupt swag. Bitters disrupt kitsch tumblr raw denim. Synth tumeric mlkshk VHS fingerstache, bushwick literally bespoke health goth art party beard chia.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Before they sold out forage wayfarers sartorial poke tofu roof party fanny pack banjo letterpress lo-fi migas crucifix ramps franzen. Wayfarers ennui banh mi, prism skateboard enamel pin air plant venmo portland scenester vice. Ramps pickled copper mug tattooed. Enamel pin snackwave banh mi yuccie, vinyl offal prism. VHS green juice scenester lomo, helvetica fashion axe pinterest aesthetic organic pickled swag bitters. Lomo artisan butcher keytar tbh stumptown disrupt everyday carry vexillologist hella synth.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lo-fi flannel portland synth shoreditch sustainable +1 chambray hexagon glossier messenger bag activated charcoal seitan. Vape bicycle rights swag keffiyeh taiyaki lomo. Mixtape franzen offal selfies organic chambray. Helvetica authentic mustache intelligentsia truffaut pitchfork iceland hot chicken air plant echo park semiotics dreamcatcher readymade cred cardigan. Bushwick small batch sustainable unicorn health goth. Butcher cray cold-pressed whatever viral, migas brunch actually pickled taiyaki drinking vinegar iceland +1 af paleo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Poutine irony chicharrones, bitters poke vaporware squid occupy pinterest. Skateboard pour-over palo santo PBR&amp;B snackwave poutine semiotics williamsburg. YOLO glossier ugh, deep v slow-carb vice 3 wolf moon. Scenester bespoke normcore la croix.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>IPhone pitchfork snackwave, literally cliche tumblr kombucha direct trade. Hashtag health goth scenester, ugh vice pug waistcoat austin drinking vinegar mlkshk knausgaard sriracha yuccie beard. Put a bird on it skateboard cardigan glossier pour-over. Marfa try-hard cloud bread woke next level roof party messenger bag waistcoat kogi leggings affogato umami lyft hot chicken chillwave. YOLO viral next level, kale chips marfa put a bird on it hashtag everyday carry meh post-ironic dreamcatcher yr sriracha. Irony twee snackwave put a bird on it.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Helvetica wayfarers marfa edison bulb shabby chic, leggings jean shorts cold-pressed chartreuse fingerstache hexagon typewriter celiac. Wayfarers raclette church-key, kogi truffaut copper mug paleo etsy cred master cleanse. Af disrupt kombucha hexagon, organic trust fund hoodie small batch. Master cleanse mlkshk normcore post-ironic. Ugh bitters taxidermy mumblecore cornhole activated charcoal taiyaki fixie freegan etsy kogi tofu actually hot chicken quinoa. Chillwave vinyl taiyaki tbh man bun. Actually sartorial la croix forage PBR&amp;B keytar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Raclette tacos brooklyn 3 wolf moon, lumbersexual ugh skateboard. You probably haven\'t heard of them mixtape tumeric deep v, chartreuse schlitz drinking vinegar try-hard polaroid pok pok taxidermy single-origin coffee heirloom austin. 90\'s single-origin coffee kickstarter, deep v stumptown beard ennui snackwave thundercats street art selfies. Tumeric vape snackwave, vegan lyft kogi truffaut irony prism.v</p>\n<!-- /wp:paragraph -->',
    'Why I\'m Joining the Bandwagon of Bloggers',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '1-revision-v1',
    '',
    '',
    '2021-04-25 01:14:05',
    '2021-04-25 01:14:05',
    '',
    1,
    'http://watercoo.lerscott.local/?p=32',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    33,
    1,
    '2021-04-26 02:06:34',
    '2021-04-26 02:06:34',
    '<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>TL;DR - I just want to learn and the best way to learn is by presenting my worldview and getting feedback from my peers.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:heading -->\n<h2>A Way To Ensure I Understand the Concepts I\'m talking about</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>I\'ve been learning the hard way at work that I can\'t just present new and \"exciting\" ideas to the team and expect them to understand how I arrived at this \"solution\" and what exact \"problem\" I\'m even solving for. Taking the time to sit back and reflect on the objectives so that I can properly communicate that to somebody, is a skill I\'ve never invested in in the past. Thinking about how the viewer is going to perceive what I tell them, changes how I say things because I always want to make sure that my point is coming across very clearly.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>An Outlet for My Boredom</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>When I\'m bored, I have a tendency to poke around in things. Something that\'s for the better and issues get addressed, but other times, it reveals a can of worms. All that boils down to frustration building up between me and my teammates because I suddenly submit work outside the scope of our current initiatives which means they have to review work that they may not have initially planned for. I had noticed that I have quick a decent amount of repositories on my github account and I wanted to bring them back to life and this seems like a really nice way to document the process just incase there was anyone curious enough to find my blog. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>I think that if I\'m presenting information to the world, I\'ll have a increased likelihood to make sure that those things arent broken. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>I Want To Be More Than An Observer</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>I have started noticing that I have started hearing things of the extent of \"Well what\'s the community adoption of that library\" \"What is the support structure around that tool\" \"What is the maintenance cost\", from my teammates. And I couldn\'t put a finger on why those phrases upset me, until I sat down and wrote it down. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>First of, community adoption. It\'s weird to use that point to decide to use or not use any tool or library. Aren\'t you, the person decided on the package, part of the community that decides that packages\' merit? If you don\'t adopt it, then who would? Why wouldnt you adopt this package? Is the something wrong that is a deal breaker, if you could reach out to the maintainer, wouldnt that solve the problem?  Like it\'s so strange to use that argument, because where does the logic stop? At the end of the day, I am more than a person than uses the tools I want, to build a product.  I also am a planner and a critical thinker. There is no \"community\" that is other than who I am as an individual.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Support structures around libraries. If you like a package enough and it\'s not being maintained well, couldnt you just fork the package and maintain the fork yourself. That way you get all the features you want and new stuff that you dont need to try to feature request.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Maintenance costs? PFFFFFHH. That\'s a non starter for me. If a tool is good enough, then there is no need for maintenance.</p>\n<!-- /wp:paragraph -->',
    'Why I\'m Joining the Bandwagon of Blogging',
    '',
    'publish',
    'open',
    'open',
    '',
    'why-im-joining-the-bandwagon-of-blogging',
    '',
    '',
    '2021-04-26 02:42:19',
    '2021-04-26 02:42:19',
    '',
    0,
    'http://watercoo.lerscott.local/?p=33',
    0,
    'post',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    34,
    1,
    '2021-04-26 02:06:34',
    '2021-04-26 02:06:34',
    '<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>TL;DR - I just want to learn and the best way to learn is by presenting my worldview and getting feedback from my peers.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:heading -->\n<h2>A Way To Ensure I Understand the Concepts I\'m talking about</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>An Outlet for My Boredom</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>A Way to Always Have Something TODO</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>I Want To Be More Than An Observer</h2>\n<!-- /wp:heading -->',
    'Why I\'m Joining the Bandwagon of Blogging',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '33-revision-v1',
    '',
    '',
    '2021-04-26 02:06:34',
    '2021-04-26 02:06:34',
    '',
    33,
    'http://watercoo.lerscott.local/?p=34',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    36,
    1,
    '2021-04-26 02:17:10',
    '2021-04-26 02:17:10',
    '<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>TL;DR - I just want to learn and the best way to learn is by presenting my worldview and getting feedback from my peers.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:heading -->\n<h2>A Way To Ensure I Understand the Concepts I\'m talking about</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>I\'ve been learning the hard way at work that I can\'t just present new and \"exciting\" ideas to the team and expect them to understand how I arrived at this \"solution\" and what exact \"problem\" I\'m even solving for. Taking the time to sit back and reflect on the objectives so that I can properly communicate that to somebody, is a skill I\'ve never invested in in the past. Thinking about how the viewer is going to perceive what I tell them, changes how I say things because I always want to make sure that my point is coming across very clearly.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>An Outlet for My Boredom</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>A Way to Always Have Something TODO</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>I Want To Be More Than An Observer</h2>\n<!-- /wp:heading -->',
    'Why I\'m Joining the Bandwagon of Blogging',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '33-revision-v1',
    '',
    '',
    '2021-04-26 02:17:10',
    '2021-04-26 02:17:10',
    '',
    33,
    'http://watercoo.lerscott.local/?p=36',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    37,
    1,
    '2021-04-26 02:32:44',
    '2021-04-26 02:32:44',
    '<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>TL;DR - I just want to learn and the best way to learn is by presenting my worldview and getting feedback from my peers.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:heading -->\n<h2>A Way To Ensure I Understand the Concepts I\'m talking about</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>I\'ve been learning the hard way at work that I can\'t just present new and \"exciting\" ideas to the team and expect them to understand how I arrived at this \"solution\" and what exact \"problem\" I\'m even solving for. Taking the time to sit back and reflect on the objectives so that I can properly communicate that to somebody, is a skill I\'ve never invested in in the past. Thinking about how the viewer is going to perceive what I tell them, changes how I say things because I always want to make sure that my point is coming across very clearly.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>An Outlet for My Boredom</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>When I\'m bored, I have a tendency to poke around in things. Something that\'s for the better and issues get addressed, but other times, it reveals a can of worms. All that boils down to frustration building up between me and my teammates because I suddenly submit work outside the scope of our current initiatives which means they have to review work that they may not have initially planned for. I had noticed that I have quick a decent amount of repositories on my github account and I wanted to bring them back to life and this seems like a really nice way to document the proces</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>A Way to Always Have Something TODO</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>I Want To Be More Than An Observer</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->',
    'Why I\'m Joining the Bandwagon of Blogging',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '33-revision-v1',
    '',
    '',
    '2021-04-26 02:32:44',
    '2021-04-26 02:32:44',
    '',
    33,
    'http://watercoo.lerscott.local/?p=37',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    38,
    1,
    '2021-04-26 02:41:45',
    '2021-04-26 02:41:45',
    '<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>TL;DR - I just want to learn and the best way to learn is by presenting my worldview and getting feedback from my peers.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:heading -->\n<h2>A Way To Ensure I Understand the Concepts I\'m talking about</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>I\'ve been learning the hard way at work that I can\'t just present new and \"exciting\" ideas to the team and expect them to understand how I arrived at this \"solution\" and what exact \"problem\" I\'m even solving for. Taking the time to sit back and reflect on the objectives so that I can properly communicate that to somebody, is a skill I\'ve never invested in in the past. Thinking about how the viewer is going to perceive what I tell them, changes how I say things because I always want to make sure that my point is coming across very clearly.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>An Outlet for My Boredom</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>When I\'m bored, I have a tendency to poke around in things. Something that\'s for the better and issues get addressed, but other times, it reveals a can of worms. All that boils down to frustration building up between me and my teammates because I suddenly submit work outside the scope of our current initiatives which means they have to review work that they may not have initially planned for. I had noticed that I have quick a decent amount of repositories on my github account and I wanted to bring them back to life and this seems like a really nice way to document the process just incase there was anyone curious enough to find my blog. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>I think that if I\'m presenting information to the world, I\'ll have a increased likelihood to make sure that those things arent broken. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>I Want To Be More Than An Observer</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>I have started noticing that I have started hearing things of the extent of \"Well what\'s the community adoption of that library\" \"What is the support structure around that tool\" \"What is the maintenance cost\", from my teammates. And I couldn\'t put a finger on why those phrases upset me, until I sat down and wrote it down. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>First of, community adoption. It\'s weird to use that point to decide to use or not use any tool or library. Aren\'t you, the person decided on the package, part of the community that decides that packages\' merit? If you don\'t adopt it, then who would? Why wouldnt you adopt this package? Is the something wrong that is a deal breaker, if you could reach out to the maintainer, wouldnt that solve the problem?  Like it\'s so strange to use that argument, because where does the logic stop? At the end of the day, I am more than a person than uses the tools I want, to build a product.  I also am a planner and a critical thinker. There is no \"community\" that is other than who I am as an individual.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Support structures around libraries. If you like a package enough and it\'s not being maintained well, couldnt you just fork the package and maintain the fork yourself. That way you get all the features you want and new stuff that you dont need to try to feature request.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Maintenance costs? PFFFFFHH. That\'s a non starte</p>\n<!-- /wp:paragraph -->',
    'Why I\'m Joining the Bandwagon of Blogging',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '33-autosave-v1',
    '',
    '',
    '2021-04-26 02:41:45',
    '2021-04-26 02:41:45',
    '',
    33,
    'http://watercoo.lerscott.local/?p=38',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    39,
    1,
    '2021-04-26 02:42:19',
    '2021-04-26 02:42:19',
    '<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>TL;DR - I just want to learn and the best way to learn is by presenting my worldview and getting feedback from my peers.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:heading -->\n<h2>A Way To Ensure I Understand the Concepts I\'m talking about</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>I\'ve been learning the hard way at work that I can\'t just present new and \"exciting\" ideas to the team and expect them to understand how I arrived at this \"solution\" and what exact \"problem\" I\'m even solving for. Taking the time to sit back and reflect on the objectives so that I can properly communicate that to somebody, is a skill I\'ve never invested in in the past. Thinking about how the viewer is going to perceive what I tell them, changes how I say things because I always want to make sure that my point is coming across very clearly.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>An Outlet for My Boredom</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>When I\'m bored, I have a tendency to poke around in things. Something that\'s for the better and issues get addressed, but other times, it reveals a can of worms. All that boils down to frustration building up between me and my teammates because I suddenly submit work outside the scope of our current initiatives which means they have to review work that they may not have initially planned for. I had noticed that I have quick a decent amount of repositories on my github account and I wanted to bring them back to life and this seems like a really nice way to document the process just incase there was anyone curious enough to find my blog. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>I think that if I\'m presenting information to the world, I\'ll have a increased likelihood to make sure that those things arent broken. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>I Want To Be More Than An Observer</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>I have started noticing that I have started hearing things of the extent of \"Well what\'s the community adoption of that library\" \"What is the support structure around that tool\" \"What is the maintenance cost\", from my teammates. And I couldn\'t put a finger on why those phrases upset me, until I sat down and wrote it down. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>First of, community adoption. It\'s weird to use that point to decide to use or not use any tool or library. Aren\'t you, the person decided on the package, part of the community that decides that packages\' merit? If you don\'t adopt it, then who would? Why wouldnt you adopt this package? Is the something wrong that is a deal breaker, if you could reach out to the maintainer, wouldnt that solve the problem?  Like it\'s so strange to use that argument, because where does the logic stop? At the end of the day, I am more than a person than uses the tools I want, to build a product.  I also am a planner and a critical thinker. There is no \"community\" that is other than who I am as an individual.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Support structures around libraries. If you like a package enough and it\'s not being maintained well, couldnt you just fork the package and maintain the fork yourself. That way you get all the features you want and new stuff that you dont need to try to feature request.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Maintenance costs? PFFFFFHH. That\'s a non starter for me. If a tool is good enough, then there is no need for maintenance.</p>\n<!-- /wp:paragraph -->',
    'Why I\'m Joining the Bandwagon of Blogging',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '33-revision-v1',
    '',
    '',
    '2021-04-26 02:42:19',
    '2021-04-26 02:42:19',
    '',
    33,
    'http://watercoo.lerscott.local/?p=39',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    40,
    1,
    '2021-04-27 02:36:41',
    '0000-00-00 00:00:00',
    '',
    'Auto Draft',
    '',
    'auto-draft',
    'open',
    'open',
    '',
    '',
    '',
    '',
    '2021-04-27 02:36:41',
    '0000-00-00 00:00:00',
    '',
    0,
    'http://watercoo.lerscott.local/?p=40',
    0,
    'post',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    41,
    1,
    '2021-04-27 02:37:20',
    '2021-04-27 02:37:20',
    '<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>If a file or a component is ever scary to look at, go to the test that describes it, if that doesnt help, burn it.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Outline</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>Being new to an application<ol><li>where I go to learn</li></ol></li><li>If a component is complex: is reading through it enough for me to feel comfortable touching it?<ol><li>If not, is there a test I can read through that will describe what should be going on?</li><li>If not, can I retrofit a test to make sure I understand it?</li></ol></li><li>What if the test itself has high coverage numbers but doesnt make sense?<ol><li>Well then it\'s your job make it make sense and refactor if you can</li></ol></li><li>Coverage doesnt matter if the test doesnt fill you with joy</li><li>Go through example with CW routes.js</li></ol>\n<!-- /wp:list -->',
    'Demystifying POOP Complexity Through Testing',
    '',
    'draft',
    'open',
    'open',
    '',
    'demystifying-complexity-through-testing',
    '',
    '',
    '2021-04-28 02:13:29',
    '2021-04-28 02:13:29',
    '',
    0,
    'http://watercoo.lerscott.local/?p=41',
    0,
    'post',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    42,
    1,
    '2021-04-27 02:37:17',
    '2021-04-27 02:37:17',
    '',
    'Demystifying Complexity Through Testing',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '41-revision-v1',
    '',
    '',
    '2021-04-27 02:37:17',
    '2021-04-27 02:37:17',
    '',
    41,
    'http://watercoo.lerscott.local/?p=42',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    44,
    1,
    '2021-04-27 02:44:19',
    '2021-04-27 02:44:19',
    '<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>If a file or a component is ever scary to look at, go to the test that describes it, if that doesnt help, burn it.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Outline</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>Being new to an application<ol><li>where I go to learn</li></ol></li><li>If a component is complex: is reading through it enough for me to feel comfortable touching it?<ol><li>If not, is there a test I can read through that will describe what should be going on?</li><li>If not, can I retrofit a test to make sure I understand it?</li></ol></li><li>What if the test itself has high coverage numbers but doesnt make sense?<ol><li>Well then it\'s your job make it make sense and refactor if you can</li></ol></li><li>Coverage doesnt matter if the test doesnt fill you with joy</li><li>Go through example with CW routes.js</li></ol>\n<!-- /wp:list -->',
    'Demystifying Complexity Through Testing',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '41-revision-v1',
    '',
    '',
    '2021-04-27 02:44:19',
    '2021-04-27 02:44:19',
    '',
    41,
    'http://watercoo.lerscott.local/?p=44',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    45,
    1,
    '2021-04-28 02:07:29',
    '2021-04-28 02:07:29',
    '<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>If a file or a component is ever scary to look at, go to the test that describes it, if that doesnt help, burn it.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Outline</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>Being new to an application<ol><li>where I go to learn</li></ol></li><li>If a component is complex: is reading through it enough for me to feel comfortable touching it?<ol><li>If not, is there a test I can read through that will describe what should be going on?</li><li>If not, can I retrofit a test to make sure I understand it?</li></ol></li><li>What if the test itself has high coverage numbers but doesnt make sense?<ol><li>Well then it\'s your job make it make sense and refactor if you can</li></ol></li><li>Coverage doesnt matter if the test doesnt fill you with joy</li><li>Go through example with CW routes.js</li></ol>\n<!-- /wp:list -->',
    'Demystifying POOP Complexity Through Testing',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '41-revision-v1',
    '',
    '',
    '2021-04-28 02:07:29',
    '2021-04-28 02:07:29',
    '',
    41,
    'http://watercoo.lerscott.local/?p=45',
    0,
    'revision',
    '',
    0
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_term_relationships
# ------------------------------------------------------------

INSERT INTO
  `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
  (1, 1, 0);
INSERT INTO
  `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
  (6, 2, 0);
INSERT INTO
  `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
  (16, 2, 0);
INSERT INTO
  `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
  (17, 2, 0);
INSERT INTO
  `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
  (18, 2, 0);
INSERT INTO
  `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
  (19, 2, 0);
INSERT INTO
  `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
  (20, 2, 0);
INSERT INTO
  `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
  (23, 3, 0);
INSERT INTO
  `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
  (33, 1, 0);
INSERT INTO
  `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
  (41, 1, 0);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_term_taxonomy
# ------------------------------------------------------------

INSERT INTO
  `wp_term_taxonomy` (
    `term_taxonomy_id`,
    `term_id`,
    `taxonomy`,
    `description`,
    `parent`,
    `count`
  )
VALUES
  (1, 1, 'category', '', 0, 1);
INSERT INTO
  `wp_term_taxonomy` (
    `term_taxonomy_id`,
    `term_id`,
    `taxonomy`,
    `description`,
    `parent`,
    `count`
  )
VALUES
  (2, 2, 'nav_menu', '', 0, 6);
INSERT INTO
  `wp_term_taxonomy` (
    `term_taxonomy_id`,
    `term_id`,
    `taxonomy`,
    `description`,
    `parent`,
    `count`
  )
VALUES
  (3, 3, 'category', '', 0, 0);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_termmeta
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_terms
# ------------------------------------------------------------

INSERT INTO
  `wp_terms` (`term_id`, `name`, `slug`, `term_group`)
VALUES
  (1, 'Uncategorized', 'uncategorized', 0);
INSERT INTO
  `wp_terms` (`term_id`, `name`, `slug`, `term_group`)
VALUES
  (2, 'Main Menu', 'main-menu', 0);
INSERT INTO
  `wp_terms` (`term_id`, `name`, `slug`, `term_group`)
VALUES
  (3, 'Miscellaneous', 'miscellaneous', 0);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_usermeta
# ------------------------------------------------------------

INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (1, 1, 'nickname', 'ty_lerscott');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (2, 1, 'first_name', 'Tyler');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (3, 1, 'last_name', 'Scott');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (4, 1, 'description', 'Frontend Software Engineer');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (5, 1, 'rich_editing', 'true');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (6, 1, 'syntax_highlighting', 'true');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (7, 1, 'comment_shortcuts', 'false');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (8, 1, 'admin_color', 'fresh');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (9, 1, 'use_ssl', '0');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (10, 1, 'show_admin_bar_front', 'true');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (11, 1, 'locale', '');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (
    12,
    1,
    'wp_capabilities',
    'a:1:{s:13:\"administrator\";b:1;}'
  );
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (13, 1, 'wp_user_level', '10');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (
    14,
    1,
    'dismissed_wp_pointers',
    'theme_editor_notice'
  );
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (15, 1, 'show_welcome_panel', '1');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (
    16,
    1,
    'session_tokens',
    'a:4:{s:64:\"6fa7128f96cfcf79456eee3344bbe9d72c06bdd79f0e777ba9d96c099a001994\";a:4:{s:10:\"expiration\";i:1620005945;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36\";s:5:\"login\";i:1618796345;}s:64:\"15f3834bfc9009b1b89239178ad6d6450cd8a34593c26ea554a1144e60444788\";a:4:{s:10:\"expiration\";i:1620425566;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36\";s:5:\"login\";i:1619215966;}s:64:\"066614c40e897f5bd15cb203c93e6f9710b9e72d4a826d19bd67aa7f0a9eeda6\";a:4:{s:10:\"expiration\";i:1619663801;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36\";s:5:\"login\";i:1619491001;}s:64:\"eaa0756396829e0c391d667af62295dec46767981d5447b29c33e79b5ac92f26\";a:4:{s:10:\"expiration\";i:1619748439;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36\";s:5:\"login\";i:1619575639;}}'
  );
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (
    17,
    1,
    'wp_dashboard_quick_press_last_post_id',
    '40'
  );
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (
    18,
    1,
    'community-events-location',
    'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'
  );
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (19, 1, 'managenav-menuscolumnshidden', 'a:0:{}');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (20, 1, 'metaboxhidden_nav-menus', 'a:0:{}');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (21, 1, 'nav_menu_recently_edited', '2');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (22, 1, 'closedpostboxes_nav-menus', 'a:0:{}');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (23, 1, 'wp_user-settings', 'libraryContent=browse');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (24, 1, 'wp_user-settings-time', '1619135134');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (
    25,
    1,
    'graphql_jwt_auth_secret',
    'graphql_jwt_6084b3c560403'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_users
# ------------------------------------------------------------

INSERT INTO
  `wp_users` (
    `ID`,
    `user_login`,
    `user_pass`,
    `user_nicename`,
    `user_email`,
    `user_url`,
    `user_registered`,
    `user_activation_key`,
    `user_status`,
    `display_name`
  )
VALUES
  (
    1,
    'ty_lerscott',
    '$P$BJ2aEY8vCkoAH1T8oZHDEeJgt3yTtu0',
    'ty_lerscott',
    'ty@lerscott.com',
    'http://watercoo.lerscott.local',
    '2021-04-19 01:38:52',
    '',
    0,
    'ty_lerscott'
  );

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
