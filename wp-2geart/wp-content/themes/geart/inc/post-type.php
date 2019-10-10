<?php 

//Main Slider

function geart_custompost_type_main_slider() {
	$labels = array(
		'name'                  => 'Main slides',
		'singular_name'         => 'Main slider',

	);
	$args = array(
		'labels'             => $labels,
		'public'             => true,
		'publicly_queryable' => true,
		'show_ui'            => true,
		'show_in_menu'       => true,
		'query_var'          => true,
		'rewrite'            => array( 'slug' => 'portfolio' ),
		'capability_type'    => 'post',
		'has_archive'        => true,
		'hierarchical'       => false,
		'menu_position'      => null,
		'supports'           => array( 'title', 'editor', 'thumbnail'),
		'menu_icon'			 =>  'dashicons-format-gallery',
	);
	register_post_type( 'main_slider', $args );
}
add_action( 'init', 'geart_custompost_type_main_slider' );



//Customers

function geart_custompost_type_customers() {
	$labels = array(
		'name'                  => 'Customers',
		'singular_name'         => 'Customers',

	);
	$args = array(
		'labels'             => $labels,
		'public'             => true,
		'publicly_queryable' => true,
		'show_ui'            => true,
		'show_in_menu'       => true,
		'query_var'          => true,
		'rewrite'            => array( 'slug' => 'customers' ),
		'capability_type'    => 'post',
		'has_archive'        => true,
		'hierarchical'       => false,
		'menu_position'      => null,
		'supports'           => array( 'title', 'thumbnail'),
		'menu_icon'			 =>  'dashicons-groups',
	);
	register_post_type( 'customers', $args );
}
add_action( 'init', 'geart_custompost_type_customers' );



//Portfolio

function geart_custompost_type_portfolio() {
	$labels = array(
		'name'                  => 'Portfolio',
		'singular_name'         => 'Portfolio',

	);
	$args = array(
		'labels'             => $labels,
		'public'             => true,
		'publicly_queryable' => true,
		'show_ui'            => true,
		'show_in_menu'       => true,
		'query_var'          => true,
		'rewrite'            => array( 'slug' => 'portfolio-work' ),
		'capability_type'    => 'post',
		'has_archive'        => true,
		'show_in_rest'       => true,
		'hierarchical'       => false,
		'menu_position'      => null,
		'supports'           => array( 'title', 'editor', 'thumbnail'),
		'menu_icon'			 =>  'dashicons-portfolio',
	);
	register_post_type( 'portfolio', $args );
}
add_action( 'init', 'geart_custompost_type_portfolio' );



 function custom_taxonomy_for_portfolio() {
	$args = array(
		'label'        => __( 'Categories Portfolio', 'geart' ),
		'public'       => true,
		'rewrite'      => true,
		'hierarchical' => true
	);
	
	register_taxonomy( 'categories-portfolio', 'portfolio', $args );

}

add_action( 'init', 'custom_taxonomy_for_portfolio', 0 );




//Services

function geart_custompost_type_service() {
	$labels = array(
		'name'                  => 'Services',
		'singular_name'         => 'Service',

	);
	$args = array(
		'labels'             => $labels,
		'public'             => true,
		'publicly_queryable' => true,
		'show_ui'            => true,
		'show_in_menu'       => true,
		'query_var'          => true,
		'rewrite'            => array( 'slug' => 'service' ),
		'capability_type'    => 'post',
		'has_archive'        => true,
		'hierarchical'       => false,
		'menu_position'      => null,
		'supports'           => array( 'title', 'thumbnail'),
		'menu_icon'			 =>  'dashicons-hammer',
	);
	register_post_type( 'service', $args );
}
add_action( 'init', 'geart_custompost_type_service' );



 function custom_taxonomy_for_service() {

	$args = array(
		'label'        => __( 'Page', 'geart' ),
		'public'       => true,
		'rewrite'      => false,
		'hierarchical' => true
	);
	
	register_taxonomy( 'services-page', 'service', $args );

}

add_action( 'init', 'custom_taxonomy_for_service', 0 );



//About

function geart_custompost_type_about() {
	$labels = array(
		'name'                  => 'About Bureau',
		'singular_name'         => 'About Bureau',

	);
	$args = array(
		'labels'             => $labels,
		'public'             => true,
		'publicly_queryable' => true,
		'show_ui'            => true,
		'show_in_menu'       => true,
		'query_var'          => true,
		'rewrite'            => array( 'slug' => 'about-bureau' ),
		'capability_type'    => 'post',
		'has_archive'        => true,
		'hierarchical'       => false,
		'menu_position'      => null,
		'supports'           => array( 'title', 'editor', 'thumbnail'),
		'menu_icon'			 =>  'dashicons-format-status',
	);
	register_post_type( 'about-bureau', $args );
}
add_action( 'init', 'geart_custompost_type_about' );


//Certificates

function geart_custompost_type_certificates() {
	$labels = array(
		'name'                  => 'Certificates',
		'singular_name'         => 'Certificate',

	);
	$args = array(
		'labels'             => $labels,
		'public'             => true,
		'publicly_queryable' => true,
		'show_ui'            => true,
		'show_in_menu'       => true,
		'query_var'          => true,
		'rewrite'            => array( 'slug' => 'certificates' ),
		'capability_type'    => 'post',
		'has_archive'        => true,
		'hierarchical'       => false,
		'menu_position'      => null,
		'supports'           => array( 'title', 'thumbnail'),
		'menu_icon'			 =>  'dashicons-welcome-learn-more',
	);
	register_post_type( 'certificates', $args );
}
add_action( 'init', 'geart_custompost_type_certificates' );


//Team

function geart_custompost_type_team() {
	$labels = array(
		'name'                  => 'Team',
		'singular_name'         => 'Team',

	);
	$args = array(
		'labels'             => $labels,
		'public'             => true,
		'publicly_queryable' => true,
		'show_ui'            => true,
		'show_in_menu'       => true,
		'query_var'          => true,
		'rewrite'            => array( 'slug' => 'teams' ),
		'capability_type'    => 'post',
		'has_archive'        => true,
		'hierarchical'       => false,
		'menu_position'      => null,
		'supports'           => array( 'title', 'thumbnail'),
		'menu_icon'			 =>  'dashicons-id',
	);
	register_post_type( 'team', $args );
}
add_action( 'init', 'geart_custompost_type_team' );


//Contacts

function geart_custompost_type_contacts() {
	$labels = array(
		'name'                  => 'Contacts',
		'singular_name'         => 'Contact',

	);
	$args = array(
		'labels'             => $labels,
		'public'             => true,
		'publicly_queryable' => true,
		'show_ui'            => true,
		'show_in_menu'       => true,
		'query_var'          => true,
		'rewrite'            => array( 'slug' => 'contact' ),
		'capability_type'    => 'post',
		'has_archive'        => true,
		'hierarchical'       => false,
		'menu_position'      => null,
		'supports'           => array( 'title', 'thumbnail'),
		'menu_icon'			 =>  'dashicons-admin-site',
	);
	register_post_type( 'contacts', $args );
}
add_action( 'init', 'geart_custompost_type_contacts' );



























 ?>