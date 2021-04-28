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
) ENGINE = InnoDB AUTO_INCREMENT = 401 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

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
) ENGINE = InnoDB AUTO_INCREMENT = 155 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

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
) ENGINE = InnoDB AUTO_INCREMENT = 45 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

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
    'a:7:{i:1619574031;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1619577533;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1619617133;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1619660333;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1619660345;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1620092333;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}',
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
    396,
    '_site_transient_timeout_theme_roots',
    '1619575497',
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
    397,
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
  (150, 41, '_edit_lock', '1619491487:1');

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
    'Demystifying Complexity Through Testing',
    '',
    'publish',
    'open',
    'open',
    '',
    'demystifying-complexity-through-testing',
    '',
    '',
    '2021-04-27 02:44:19',
    '2021-04-27 02:44:19',
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
    43,
    1,
    '2021-04-27 02:43:47',
    '2021-04-27 02:43:47',
    '<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>If a file or a component is ever scary to look at, go to the test that describes it, if that doesnt help, burn it.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Outline</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>Being new to an application<ol><li>where I go to learn</li></ol></li><li>If a component is complex: is reading through it enough for me to feel comfortable touching it?<ol><li>If not, is there a test I can read through that will describe what should be going on?</li><li>If not, can I retrofit a test to make sure I understand it?</li></ol></li><li>What if the test itself has high coverage numbers but doesnt make sense?<ol><li>Well then it\'s your job make it make sense and refactor if you can</li></ol></li><li>Coverage doesnt matter if the test doesnt gi</li></ol>\n<!-- /wp:list -->',
    'Demystifying Complexity Through Testing',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '41-autosave-v1',
    '',
    '',
    '2021-04-27 02:43:47',
    '2021-04-27 02:43:47',
    '',
    41,
    'http://watercoo.lerscott.local/?p=43',
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
  (1, 1, 'category', '', 0, 2);
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
    'a:3:{s:64:\"6fa7128f96cfcf79456eee3344bbe9d72c06bdd79f0e777ba9d96c099a001994\";a:4:{s:10:\"expiration\";i:1620005945;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36\";s:5:\"login\";i:1618796345;}s:64:\"15f3834bfc9009b1b89239178ad6d6450cd8a34593c26ea554a1144e60444788\";a:4:{s:10:\"expiration\";i:1620425566;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36\";s:5:\"login\";i:1619215966;}s:64:\"066614c40e897f5bd15cb203c93e6f9710b9e72d4a826d19bd67aa7f0a9eeda6\";a:4:{s:10:\"expiration\";i:1619663801;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36\";s:5:\"login\";i:1619491001;}}'
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
