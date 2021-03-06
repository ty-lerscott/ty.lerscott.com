<?php /**
 * Generated by the WordPress Option Page generator
 * at http://jeremyhixon.com/wp-tools/option-page/
 */

class GlobalConfigurations {
	private $global_configurations_options;

	public function __construct() {
		add_action( 'admin_menu', array( $this, 'global_configurations_add_plugin_page' ) );
		add_action( 'admin_init', array( $this, 'global_configurations_page_init' ) );
	}

	public function global_configurations_add_plugin_page() {
		add_menu_page(
			'Global Configurations', // page_title
			'Global Configurations', // menu_title
			'manage_options', // capability
			'global-configurations', // menu_slug
			array( $this, 'global_configurations_create_admin_page' ), // function
			'dashicons-admin-settings', // icon_url
			80 // position
		);
	}

	public function global_configurations_create_admin_page() {
		$this->global_configurations_options = get_option( 'global_configurations_option_name' ); ?>

		<div class="wrap">
			<h2>Global Configurations</h2>
			<p>Global Configurations dynamically imported into the app</p>
			<?php settings_errors(); ?>

			<form method="post" action="options.php">
				<?php
					settings_fields( 'global_configurations_option_group' );
					do_settings_sections( 'global-configurations-admin' );
					submit_button();
				?>
			</form>
		</div>
	<?php }

	public function global_configurations_page_init() {
		register_setting(
			'global_configurations_option_group', // option_group
			'global_configurations_option_name', // option_name
			array( $this, 'global_configurations_sanitize' ) // sanitize_callback
		);

		add_settings_section(
			'global_configurations_setting_section', // id
			'Settings', // title
			array( $this, 'global_configurations_section_info' ), // callback
			'global-configurations-admin' // page
		);

		add_settings_field(
			'first_name_0', // id
			'First Name', // title
			array( $this, 'first_name_0_callback' ), // callback
			'global-configurations-admin', // page
			'global_configurations_setting_section' // section
		);

		add_settings_field(
			'last_name_1', // id
			'Last Name', // title
			array( $this, 'last_name_1_callback' ), // callback
			'global-configurations-admin', // page
			'global_configurations_setting_section' // section
		);

		add_settings_field(
			'job_title_2', // id
			'Job Title', // title
			array( $this, 'job_title_2_callback' ), // callback
			'global-configurations-admin', // page
			'global_configurations_setting_section' // section
		);

		add_settings_field(
			'location_3', // id
			'Location', // title
			array( $this, 'location_3_callback' ), // callback
			'global-configurations-admin', // page
			'global_configurations_setting_section' // section
		);

		add_settings_field(
			'meta_description_4', // id
			'Meta Description', // title
			array( $this, 'meta_description_4_callback' ), // callback
			'global-configurations-admin', // page
			'global_configurations_setting_section' // section
		);

		add_settings_field(
			'meta_tags_5', // id
			'Meta Tags', // title
			array( $this, 'meta_tags_5_callback' ), // callback
			'global-configurations-admin', // page
			'global_configurations_setting_section' // section
		);

		add_settings_field(
			'linkedin_6', // id
			'LinkedIn', // title
			array( $this, 'linkedin_6_callback' ), // callback
			'global-configurations-admin', // page
			'global_configurations_setting_section' // section
		);

		add_settings_field(
			'github_7', // id
			'GitHub', // title
			array( $this, 'github_7_callback' ), // callback
			'global-configurations-admin', // page
			'global_configurations_setting_section' // section
		);

		add_settings_field(
			'twitter_8', // id
			'Twitter', // title
			array( $this, 'twitter_8_callback' ), // callback
			'global-configurations-admin', // page
			'global_configurations_setting_section' // section
		);
	}

	public function global_configurations_sanitize($input) {
		$sanitary_values = array();
		if ( isset( $input['first_name_0'] ) ) {
			$sanitary_values['first_name_0'] = sanitize_text_field( $input['first_name_0'] );
		}

		if ( isset( $input['last_name_1'] ) ) {
			$sanitary_values['last_name_1'] = sanitize_text_field( $input['last_name_1'] );
		}

		if ( isset( $input['job_title_2'] ) ) {
			$sanitary_values['job_title_2'] = sanitize_text_field( $input['job_title_2'] );
		}

		if ( isset( $input['location_3'] ) ) {
			$sanitary_values['location_3'] = sanitize_text_field( $input['location_3'] );
		}

		if ( isset( $input['meta_description_4'] ) ) {
			$sanitary_values['meta_description_4'] = esc_textarea( $input['meta_description_4'] );
		}

		if ( isset( $input['meta_tags_5'] ) ) {
			$sanitary_values['meta_tags_5'] = esc_textarea( $input['meta_tags_5'] );
		}

		if ( isset( $input['linkedin_6'] ) ) {
			$sanitary_values['linkedin_6'] = sanitize_text_field( $input['linkedin_6'] );
		}

		if ( isset( $input['github_7'] ) ) {
			$sanitary_values['github_7'] = sanitize_text_field( $input['github_7'] );
		}

		if ( isset( $input['twitter_8'] ) ) {
			$sanitary_values['twitter_8'] = sanitize_text_field( $input['twitter_8'] );
		}

		return $sanitary_values;
	}

	public function global_configurations_section_info() {

	}

	public function first_name_0_callback() {
		printf(
			'<input class="regular-text" type="text" name="global_configurations_option_name[first_name_0]" id="first_name_0" value="%s">',
			isset( $this->global_configurations_options['first_name_0'] ) ? esc_attr( $this->global_configurations_options['first_name_0']) : ''
		);
	}

	public function last_name_1_callback() {
		printf(
			'<input class="regular-text" type="text" name="global_configurations_option_name[last_name_1]" id="last_name_1" value="%s">',
			isset( $this->global_configurations_options['last_name_1'] ) ? esc_attr( $this->global_configurations_options['last_name_1']) : ''
		);
	}

	public function job_title_2_callback() {
		printf(
			'<input class="regular-text" type="text" name="global_configurations_option_name[job_title_2]" id="job_title_2" value="%s">',
			isset( $this->global_configurations_options['job_title_2'] ) ? esc_attr( $this->global_configurations_options['job_title_2']) : ''
		);
	}

	public function location_3_callback() {
		printf(
			'<input class="regular-text" type="text" name="global_configurations_option_name[location_3]" id="location_3" value="%s">',
			isset( $this->global_configurations_options['location_3'] ) ? esc_attr( $this->global_configurations_options['location_3']) : ''
		);
	}

	public function meta_description_4_callback() {
		printf(
			'<textarea class="large-text" rows="5" name="global_configurations_option_name[meta_description_4]" id="meta_description_4">%s</textarea>',
			isset( $this->global_configurations_options['meta_description_4'] ) ? esc_attr( $this->global_configurations_options['meta_description_4']) : ''
		);
	}

	public function meta_tags_5_callback() {
		printf(
			'<textarea class="large-text" rows="5" name="global_configurations_option_name[meta_tags_5]" id="meta_description_4">%s</textarea>',
			isset( $this->global_configurations_options['meta_tags_5'] ) ? esc_attr( $this->global_configurations_options['meta_tags_5']) : ''
		);
	}

	public function linkedin_6_callback() {
		printf(
			'<input class="regular-text" type="text" name="global_configurations_option_name[linkedin_6]" id="linkedin_6" value="%s">',
			isset( $this->global_configurations_options['linkedin_6'] ) ? esc_attr( $this->global_configurations_options['linkedin_6']) : ''
		);
	}

	public function github_7_callback() {
		printf(
			'<input class="regular-text" type="text" name="global_configurations_option_name[github_7]" id="github_7" value="%s">',
			isset( $this->global_configurations_options['github_7'] ) ? esc_attr( $this->global_configurations_options['github_7']) : ''
		);
	}

	public function twitter_8_callback() {
		printf(
			'<input class="regular-text" type="text" name="global_configurations_option_name[twitter_8]" id="twitter_8" value="%s">',
			isset( $this->global_configurations_options['twitter_8'] ) ? esc_attr( $this->global_configurations_options['twitter_8']) : ''
		);
	}

}
if ( is_admin() )
	$global_configurations = new GlobalConfigurations();

/*
 * Retrieve this value with:
 * $global_configurations_options = get_option( 'global_configurations_option_name' ); // Array of All Options
 * $first_name_0 = $global_configurations_options['first_name_0']; // First Name
 * $last_name_1 = $global_configurations_options['last_name_1']; // Last Name
 * $job_title_2 = $global_configurations_options['job_title_2']; // Job Title
 * $location_3 = $global_configurations_options['location_3']; // Location
 * $meta_description_4 = $global_configurations_options['meta_description_4']; // Meta Description
 * $meta_tags_5 = $global_configurations_options['meta_tags_5']; // Meta Tags
 * $linkedin_6 = $global_configurations_options['linkedin_6']; // LinkedIn
 * $github_7 = $global_configurations_options['github_7']; // GitHub
 * $twitter_8 = $global_configurations_options['twitter_8']; // Twitter
 */
