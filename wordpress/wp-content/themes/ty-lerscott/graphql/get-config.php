<?php

add_action( 'graphql_register_types', 'extend_wpgraphql_schema' );

function extend_wpgraphql_schema() {
  register_graphql_field( 'RootQuery', 'configs', [
    'type' => 'Configurations',
    'description' => __( 'Connection between the RootQuery type and the Config type', 'ty_lerscott-config' ),
    'resolve' => function($arg1) {
        $global_configurations_options = get_option( 'global_configurations_option_name' ); // Array of All Options

        $first_name = $global_configurations_options['first_name_0']; // First Name
        $last_name = $global_configurations_options['last_name_1']; // Last Name
        $job_title = $global_configurations_options['job_title_2']; // Job Title

        return [
            'jobTitle' => $job_title,
            'lastName' => $last_name,
            'firstName' => $first_name,
        ];
    }
  ] );

  register_graphql_object_type( 'Configurations', [
    'description' => __( 'Dynamic configurations for the application', 'ty_lerscott-config' ),
    'fields' => [
      'firstName' => [
        'type' => 'String',
        'description' => __( 'My First Name', 'ty_lerscott-config' ),
      ],
      'lastName' => [
        'type' => 'String',
        'description' => __( 'My Last Name', 'ty_lerscott-config' ),
      ],
      'jobTitle' => [
        'type' => 'String',
        'description' => __( 'My Job', 'ty_lerscott-config' ),
      ],
    ],
  ] );
};