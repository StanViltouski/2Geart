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
		'rewrite'            => array( 'slug' => '/' ),
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
		'rewrite'            => array( 'slug' => '/' ),
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















 ?>