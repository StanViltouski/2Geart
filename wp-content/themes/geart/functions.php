<?php
/**
 * geart functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package geart
 */

if ( ! function_exists( 'geart_setup' ) ) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function geart_setup() {
		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on geart, use a find and replace
		 * to change 'geart' to the name of your theme in all the template files.
		 */
		load_theme_textdomain( 'geart', get_template_directory() . '/languages' );

		// Add default posts and comments RSS feed links to head.
		add_theme_support( 'automatic-feed-links' );

		/*
		 * Let WordPress manage the document title.
		 * By adding theme support, we declare that this theme does not use a
		 * hard-coded <title> tag in the document head, and expect WordPress to
		 * provide it for us.
		 */
		add_theme_support( 'title-tag' );

		/*
		 * Enable support for Post Thumbnails on posts and pages.
		 *
		 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		 */
		add_theme_support( 'post-thumbnails' );

		// This theme uses wp_nav_menu() in one location.
		register_nav_menus( array(
			'header-menu' => esc_html__( 'primary', 'geart' ),
			'footer-menu-1' => esc_html__( 'footer 1', 'geart' ),
			'footer-menu-2' => esc_html__( 'footer 2', 'geart' ),
			'footer-menu-3' => esc_html__( 'footer 3', 'geart' ),
		) );

		/*
		 * Switch default core markup for search form, comment form, and comments
		 * to output valid HTML5.
		 */
		add_theme_support( 'html5', array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
		) );

		// Set up the WordPress core custom background feature.
		add_theme_support( 'custom-background', apply_filters( 'geart_custom_background_args', array(
			'default-color' => 'ffffff',
			'default-image' => '',
		) ) );

		// Add theme support for selective refresh for widgets.
		add_theme_support( 'customize-selective-refresh-widgets' );

		/**
		 * Add support for core custom logo.
		 *
		 * @link https://codex.wordpress.org/Theme_Logo
		 */
		add_theme_support( 'custom-logo', array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		) );
	}
endif;
add_action( 'after_setup_theme', 'geart_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function geart_content_width() {
	// This variable is intended to be overruled from themes.
	// Open WPCS issue: {@link https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards/issues/1043}.
	// phpcs:ignore WordPress.NamingConventions.PrefixAllGlobals.NonPrefixedVariableFound
	$GLOBALS['content_width'] = apply_filters( 'geart_content_width', 640 );
}
add_action( 'after_setup_theme', 'geart_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function geart_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Services Plate', 'geart' ),
		'id'            => 'service_plate',
		'description'   => esc_html__( 'Add widgets here.', 'geart' ),
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget'  => '</div>',
		'before_title'  => '<h4 class="widget-title">',
		'after_title'   => '</h4>',
	) );
}
add_action( 'widgets_init', 'geart_widgets_init' );


/**
 * Enqueue scripts and styles.
 */
function geart_scripts() {

	//styles
	wp_enqueue_style('bootstrap.min', get_template_directory_uri() . '/layouts/libs/bootstrap.min.css');
	wp_enqueue_style('geart-main-styles', get_template_directory_uri() . '/layouts/style.css', array());
	wp_enqueue_style('font-awesome', 'https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css');
	if ( !is_front_page() ) { wp_enqueue_style('geart-pages', get_template_directory_uri() . '/layouts/pages.css', array()); }
	wp_enqueue_style('geart-portfolio', get_template_directory_uri() . '/layouts/portfolio.css', array());
	wp_enqueue_style('geart-services', get_template_directory_uri() . '/layouts/services.css', array());
	if ( is_page( 'about' ) ) { wp_enqueue_style('geart-about', get_template_directory_uri() . '/layouts/about.css', array()); }
	if ( is_page( 'team' ) ) { wp_enqueue_style('geart-team', get_template_directory_uri() . '/layouts/team.css', array()); }
	if ( is_page( 'contacts' ) ) { wp_enqueue_style('geart-contacts', get_template_directory_uri() . '/layouts/contacts.css', array()); }
	if ( is_page( 'form' ) || is_page('form-send') ) { wp_enqueue_style('geart-form', get_template_directory_uri() . '/layouts/form.css', array()); }
	

	//scripts
	wp_deregister_script('jquery');
	wp_register_script('jquery', '//ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js', array(), '', true );
	wp_enqueue_script('jquery');
	wp_register_script('popper', '//cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js', array(), '', true );
	wp_enqueue_script('popper');
	wp_enqueue_script( 'bootstrap.min', get_template_directory_uri() . '/js/libs/bootstrap.min.js', array(), '1.0.0', true );
	wp_enqueue_script( 'main-js', get_template_directory_uri() . '/js/scripts.min.js', array(), '1.0.0', true );
	wp_enqueue_script( 'modal', get_template_directory_uri() . '/js/modal.js', array(), '1.0.0', true );
	if ( is_page( 'form' ) ) { wp_enqueue_script( 'form', get_template_directory_uri() . '/js/form.js', array(), '1.0.0', true ); }

	wp_enqueue_script( 'geart-navigation', get_template_directory_uri() . '/js/navigation.js', array(), '20151215', true );
	wp_enqueue_script( 'geart-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20151215', true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'geart_scripts' );

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Register Post Type.
 */
require get_template_directory() . '/inc/post-type.php';

/**
 * Redux sample-config
 */
require get_template_directory() . '/inc/sample-config.php';

/**
 * Breadcrumbs function.
 */
require get_template_directory() . '/inc/breadcrumbs.php';

/**
 * Load Jetpack compatibility file.
 */
if ( defined( 'JETPACK__VERSION' ) ) {
	require get_template_directory() . '/inc/jetpack.php';
}

