<?php

/**
 * @link              http://ecreateinfotech.com/
 * @since             1.0.0
 * @package           Ec_Auto_Tag_Creator
 *
 * @wordpress-plugin
 * Plugin Name:       Auto Tag Creator
 * Plugin URI:        http://ecreateinfotech.com/services/cms-development/wordpress-development/
 * Description:       This plugin automatically creates tags from post title and category, on update or publish..
 * Version:           1.0.0
 * Author:            Ecreate Infotech
 * Author URI:        http://ecreateinfotech.com/
 * License:           GPL-2.0+
 * License URI:       http://www.gnu.org/licenses/gpl-2.0.txt
 * Text Domain:       ec-auto-tag-creator
 * Domain Path:       /languages
 */

// If this file is called directly, abort.
if ( ! defined( 'WPINC' ) ) {
	die;
}

/**
 * Currently plugin version. 
 */
define( 'EC_AUTO_TAG_CREATOR_VERSION', '1.0.0' );

/**
 * The code that runs during plugin activation.
 * This action is documented in includes/class-plugin-name-activator.php
 */
function activate_ec_auto_tag_creator() {
	require_once plugin_dir_path( __FILE__ ) . 'includes/class-ec-auto-tag-creator-activator.php';
	Ec_Auto_Tag_Creator_Activator::activate();
}

/**
 * The code that runs during plugin deactivation.
 * This action is documented in includes/class-plugin-name-deactivator.php
 */
function deactivate_ec_auto_tag_creator() {
	require_once plugin_dir_path( __FILE__ ) . 'includes/class-ec-auto-tag-creator-deactivator.php';
	Ec_Auto_Tag_Creator_Deactivator::deactivate();
}

register_activation_hook( __FILE__, 'activate_ec_auto_tag_creator' );
register_deactivation_hook( __FILE__, 'deactivate_ec_auto_tag_creator' );

/**
 * The core plugin class that is used to define internationalization,
 * admin-specific hooks, and public-facing site hooks.
 */
require plugin_dir_path( __FILE__ ) . 'includes/class-ec-auto-tag-creator.php';

/**
 * Begins execution of the plugin.
 *
 * Since everything within the plugin is registered via hooks,
 * then kicking off the plugin from this point in the file does
 * not affect the page life cycle.
 *
 * @since    1.0.0
 */
function run_ec_auto_tag_creator() {

	$plugin = new Ec_Auto_Tag_Creator();
	$plugin->run();

}
run_ec_auto_tag_creator();
