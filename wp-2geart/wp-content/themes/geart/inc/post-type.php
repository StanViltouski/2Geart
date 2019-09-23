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
		'rewrite'            => array( 'slug' => 'portfolios' ),
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
		'label'        => __( 'Categories Portfolio', 'textdomain' ),
		'public'       => true,
		'rewrite'      => true,
		'hierarchical' => true
	);
	
	register_taxonomy( 'categories-portfolio', 'portfolio', $args );

}

add_action( 'init', 'custom_taxonomy_for_portfolio', 0 );



 ?>