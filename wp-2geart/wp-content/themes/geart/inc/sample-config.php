<?php
    /**
     * ReduxFramework Sample Config File
     * For full documentation, please visit: http://docs.reduxframework.com/
     */

    if ( ! class_exists( 'Redux' ) ) {
        return;
    }


    // This is your option name where all the Redux data is stored.
    $opt_name = "geart_option";

    // This line is only for altering the demo. Can be easily removed.
    $opt_name = apply_filters( 'redux_demo/opt_name', $opt_name );

    /*
     *
     * --> Used within different fields. Simply examples. Search for ACTUAL DECLARATION for field examples
     *
     */

    $sampleHTML = '';
    if ( file_exists( dirname( __FILE__ ) . '/info-html.html' ) ) {
        Redux_Functions::initWpFilesystem();

        global $wp_filesystem;

        $sampleHTML = $wp_filesystem->get_contents( dirname( __FILE__ ) . '/info-html.html' );
    }

    // Background Patterns Reader
    $sample_patterns_path = ReduxFramework::$_dir . '../sample/patterns/';
    $sample_patterns_url  = ReduxFramework::$_url . '../sample/patterns/';
    $sample_patterns      = array();
    
    if ( is_dir( $sample_patterns_path ) ) {

        if ( $sample_patterns_dir = opendir( $sample_patterns_path ) ) {
            $sample_patterns = array();

            while ( ( $sample_patterns_file = readdir( $sample_patterns_dir ) ) !== false ) {

                if ( stristr( $sample_patterns_file, '.png' ) !== false || stristr( $sample_patterns_file, '.jpg' ) !== false ) {
                    $name              = explode( '.', $sample_patterns_file );
                    $name              = str_replace( '.' . end( $name ), '', $sample_patterns_file );
                    $sample_patterns[] = array(
                        'alt' => $name,
                        'img' => $sample_patterns_url . $sample_patterns_file
                    );
                }
            }
        }
    }

    /**
     * ---> SET ARGUMENTS
     * All the possible arguments for Redux.
     * For full documentation on arguments, please refer to: https://github.com/ReduxFramework/ReduxFramework/wiki/Arguments
     * */

    $theme = wp_get_theme(); // For use with some settings. Not necessary.

    $args = array(
        // TYPICAL -> Change these values as you need/desire
        'opt_name'             => $opt_name,
        // This is where your data is stored in the database and also becomes your global variable name.
        'display_name'         => $theme->get( 'Name' ),
        // Name that appears at the top of your panel
        'display_version'      => $theme->get( 'Version' ),
        // Version that appears at the top of your panel
        'menu_type'            => 'menu',
        //Specify if the admin menu should appear or not. Options: menu or submenu (Under appearance only)
        'allow_sub_menu'       => true,
        // Show the sections below the admin menu item or not
        'menu_title'           => __( 'Sample Options', 'redux-framework-demo' ),
        'page_title'           => __( 'Sample Options', 'redux-framework-demo' ),
        // You will need to generate a Google API key to use this feature.
        // Please visit: https://developers.google.com/fonts/docs/developer_api#Auth
        'google_api_key'       => '',
        // Set it you want google fonts to update weekly. A google_api_key value is required.
        'google_update_weekly' => false,
        // Must be defined to add google fonts to the typography module
        'async_typography'     => false,
        // Use a asynchronous font on the front end or font string
        //'disable_google_fonts_link' => true,                    // Disable this in case you want to create your own google fonts loader
        'admin_bar'            => true,
        // Show the panel pages on the admin bar
        'admin_bar_icon'       => 'dashicons-portfolio',
        // Choose an icon for the admin bar menu
        'admin_bar_priority'   => 50,
        // Choose an priority for the admin bar menu
        'global_variable'      => '',
        // Set a different name for your global variable other than the opt_name
        'dev_mode'             => true,
        // Show the time the page took to load, etc
        'update_notice'        => true,
        // If dev_mode is enabled, will notify developer of updated versions available in the GitHub Repo
        'customizer'           => true,
        // Enable basic customizer support
        //'open_expanded'     => true,                    // Allow you to start the panel in an expanded way initially.
        //'disable_save_warn' => true,                    // Disable the save warning when a user changes a field

        // OPTIONAL -> Give you extra features
        'page_priority'        => null,
        // Order where the menu appears in the admin area. If there is any conflict, something will not show. Warning.
        'page_parent'          => 'themes.php',
        // For a full list of options, visit: http://codex.wordpress.org/Function_Reference/add_submenu_page#Parameters
        'page_permissions'     => 'manage_options',
        // Permissions needed to access the options panel.
        'menu_icon'            => '',
        // Specify a custom URL to an icon
        'last_tab'             => '',
        // Force your panel to always open to a specific tab (by id)
        'page_icon'            => 'icon-themes',
        // Icon displayed in the admin panel next to your menu_title
        'page_slug'            => '',
        // Page slug used to denote the panel, will be based off page title then menu title then opt_name if not provided
        'save_defaults'        => true,
        // On load save the defaults to DB before user clicks save or not
        'default_show'         => false,
        // If true, shows the default value next to each field that is not the default value.
        'default_mark'         => '',
        // What to print by the field's title if the value shown is default. Suggested: *
        'show_import_export'   => true,
        // Shows the Import/Export panel when not used as a field.

        // CAREFUL -> These options are for advanced use only
        'transient_time'       => 60 * MINUTE_IN_SECONDS,
        'output'               => true,
        // Global shut-off for dynamic CSS output by the framework. Will also disable google fonts output
        'output_tag'           => true,
        // Allows dynamic CSS to be generated for customizer and google fonts, but stops the dynamic CSS from going to the head
        // 'footer_credit'     => '',                   // Disable the footer credit of Redux. Please leave if you can help it.

        // FUTURE -> Not in use yet, but reserved or partially implemented. Use at your own risk.
        'database'             => '',
        // possible: options, theme_mods, theme_mods_expanded, transient. Not fully functional, warning!
        'use_cdn'              => true,
        // If you prefer not to use the CDN for Select2, Ace Editor, and others, you may download the Redux Vendor Support plugin yourself and run locally or embed it in your code.

        // HINTS
        'hints'                => array(
            'icon'          => 'el el-question-sign',
            'icon_position' => 'right',
            'icon_color'    => 'lightgray',
            'icon_size'     => 'normal',
            'tip_style'     => array(
                'color'   => 'red',
                'shadow'  => true,
                'rounded' => false,
                'style'   => '',
            ),
            'tip_position'  => array(
                'my' => 'top left',
                'at' => 'bottom right',
            ),
            'tip_effect'    => array(
                'show' => array(
                    'effect'   => 'slide',
                    'duration' => '500',
                    'event'    => 'mouseover',
                ),
                'hide' => array(
                    'effect'   => 'slide',
                    'duration' => '500',
                    'event'    => 'click mouseleave',
                ),
            ),
        )
    );

    // ADMIN BAR LINKS -> Setup custom links in the admin bar menu as external items.
    $args['admin_bar_links'][] = array(
        'id'    => 'redux-docs',
        'href'  => 'http://docs.reduxframework.com/',
        'title' => __( 'Documentation', 'redux-framework-demo' ),
    );

    $args['admin_bar_links'][] = array(
        //'id'    => 'redux-support',
        'href'  => 'https://github.com/ReduxFramework/redux-framework/issues',
        'title' => __( 'Support', 'redux-framework-demo' ),
    );

    $args['admin_bar_links'][] = array(
        'id'    => 'redux-extensions',
        'href'  => 'reduxframework.com/extensions',
        'title' => __( 'Extensions', 'redux-framework-demo' ),
    );

    // SOCIAL ICONS -> Setup custom links in the footer for quick links in your panel footer icons.
    $args['share_icons'][] = array(
        'url'   => 'https://github.com/ReduxFramework/ReduxFramework',
        'title' => 'Visit us on GitHub',
        'icon'  => 'el el-github'
        //'img'   => '', // You can use icon OR img. IMG needs to be a full URL.
    );
    $args['share_icons'][] = array(
        'url'   => 'https://www.facebook.com/pages/Redux-Framework/243141545850368',
        'title' => 'Like us on Facebook',
        'icon'  => 'el el-facebook'
    );
    $args['share_icons'][] = array(
        'url'   => 'http://twitter.com/reduxframework',
        'title' => 'Follow us on Twitter',
        'icon'  => 'el el-twitter'
    );
    $args['share_icons'][] = array(
        'url'   => 'http://www.linkedin.com/company/redux-framework',
        'title' => 'Find us on LinkedIn',
        'icon'  => 'el el-linkedin'
    );

    // Panel Intro text -> before the form
    if ( ! isset( $args['global_variable'] ) || $args['global_variable'] !== false ) {
        if ( ! empty( $args['global_variable'] ) ) {
            $v = $args['global_variable'];
        } else {
            $v = str_replace( '-', '_', $args['opt_name'] );
        }
        $args['intro_text'] = sprintf( __( '<p>Did you know that Redux sets a global variable for you? To access any of your saved options from within your code you can use your global variable: <strong>$%1$s</strong></p>', 'redux-framework-demo' ), $v );
    } else {
        $args['intro_text'] = __( '<p>This text is displayed above the options panel. It isn\'t required, but more info is always better! The intro_text field accepts all HTML.</p>', 'redux-framework-demo' );
    }

    // Add content after the form.
    $args['footer_text'] = __( '<p>This text is displayed below the options panel. It isn\'t required, but more info is always better! The footer_text field accepts all HTML.</p>', 'redux-framework-demo' );

    Redux::setArgs( $opt_name, $args );

    /*
     * ---> END ARGUMENTS
     */


    /*
     * ---> START HELP TABS
     */

    $tabs = array(
        array(
            'id'      => 'redux-help-tab-1',
            'title'   => __( 'Theme Information 1', 'redux-framework-demo' ),
            'content' => __( '<p>This is the tab content, HTML is allowed.</p>', 'redux-framework-demo' )
        ),
        array(
            'id'      => 'redux-help-tab-2',
            'title'   => __( 'Theme Information 2', 'redux-framework-demo' ),
            'content' => __( '<p>This is the tab content, HTML is allowed.</p>', 'redux-framework-demo' )
        )
    );
    Redux::setHelpTab( $opt_name, $tabs );

    // Set the help sidebar
    $content = __( '<p>This is the sidebar content, HTML is allowed.</p>', 'redux-framework-demo' );
    Redux::setHelpSidebar( $opt_name, $content );


    /*
     * <--- END HELP TABS
     */


    /*
     *
     * ---> START SECTIONS
     *
     */

    /*

        As of Redux 3.5+, there is an extensive API. This API can be used in a mix/match mode allowing for


     */

    // -> START Basic Fields

     /*Footer address*/

      Redux::setSection( $opt_name, array(
        'title'            => esc_html__( 'Footer-address', 'geart' ),
        'id'               => 'footer-address',
        'fields'           => array(
        )
    ) );

    /*Footer address city*/
      Redux::setSection( $opt_name, array(
                    'title'            => esc_html__( 'City', 'geart' ),
                    'id'               => 'footer-address-city',
                    'subsection'       => true,
                    'desc'             => esc_html__( 'Enter your city', 'geart' ),
                    'fields'           => array(   
                        array(
                            'id'       => 'geart-city-title',
                            'type'     => 'sortable',
                            'title'    => __( 'Title of city', 'geart' ),
                            'subtitle' => __( 'Enter yours title', 'geart' ),
                            'label'    => true,
                            'options'  => array(
                                'City 1' => 'title',
                                'City 2' => 'title',
                                'City 3' => 'title',
                                'City 4' => 'title',
                                'City 5' => 'title',
                                'City 6' => 'title',
                            )
                        ),
                        
                    )
             ) );

    /*Footer address city-address*/
      Redux::setSection( $opt_name, array(
                    'title'            => esc_html__( 'Address', 'geart' ),
                    'id'               => 'footer-address-city-address',
                    'subsection'       => true,
                    'desc'             => esc_html__( 'Enter your address', 'geart' ),
                    'fields'           => array(   
                        array(
                            'id'       => 'geart-city-address',
                            'type'     => 'sortable',
                            'title'    => __( 'Address of city', 'geart' ),
                            'subtitle' => __( 'Enter address', 'geart' ),
                            'label'    => true,
                            'options'  => array(
                                'Address City 1' => 'address',
                                'Address City 2' => 'address',
                                'Address City 3' => 'address',
                                'Address City 4' => 'address',
                                'Address City 5' => 'address',
                                'Address City 6' => 'address',
                            )
                        ),
                        
                    )
             ) );




    /*Footer*/

      Redux::setSection( $opt_name, array(
        'title'            => esc_html__( 'Footer', 'geart' ),
        'id'               => 'footer',
        'customizer_width' => '130px',
        'desc'             => esc_html__( 'Enter your data', 'geart' ),
        'fields'           => array(
            array(
                'id'       => 'geart-footer-logo',
                'type'     => 'media',
                'url'      => true,
                'title'    => esc_html__( 'Your footer logo', 'geart' ),
                'compiler' => 'true',
                'desc'     => esc_html__( 'Upload your footer logo', 'geart' ),
                'subtitle' => esc_html__( 'Recommended size 130 x 57px', 'geart' ),
                'default'  => '',
            ),
            array(
                'id'       => 'geart-footer-upload-file',
                'type'     => 'media',
                'url'      => true,
                'mode'     => false,
                'title'    => esc_html__( 'Your file', 'geart' ),
                'compiler' => 'true',
                'desc'     => esc_html__( 'Upload file for download', 'geart' ),
                'default'  => '',
            ),

       )
    ) );

    /*Footer contacts*/

            Redux::setSection( $opt_name, array(
                    'title'            => esc_html__( 'Contacts', 'geart' ),
                    'id'               => 'footer-contacts',
                    'subsection'       => true,
                    'desc'             => esc_html__( 'Enter your data', 'geart' ),
                    'fields'           => array(   

                        array(
                            'id'       => 'email',
                            'type'     => 'text',
                            'url'      => true,
                            'title'    => esc_html__( 'Your email', 'geart' ),
                            'compiler' => 'true',
                            'desc' => __( 'Enter your email', 'geart' ),
                            'default'  => '',
                        ),
                        array(
                            'id'       => 'telephone',
                            'type'     => 'text',
                            'url'      => true,
                            'title'    => esc_html__( 'Your telephone', 'geart' ),
                            'compiler' => 'true',
                            'desc'     => esc_html__( 'Enter your telephone', 'geart' ),
                            'default'  => '',
                        ),

                        array(
                            'id'       => 'skype',
                            'type'     => 'text',
                            'url'      => true,
                            'title'    => esc_html__( 'Your skype', 'geart' ),
                            'compiler' => 'true',
                            'desc'     => esc_html__( 'Enter your name', 'geart' ),
                            'default'  => '',
                        ),
                    )
             ) );

    /*Footer social nets*/

            Redux::setSection( $opt_name, array(
                    'title'            => esc_html__( 'Social nets', 'geart' ),
                    'id'               => 'footer-socials',
                    'subsection'       => true,
                    'desc'             => esc_html__( 'Enter your data', 'geart' ),
                    'fields'           => array( 
                        array(
                            'id'       => 'social-nets',
                            'type'     => 'sortable',
                            'title'    => __( 'Links of social nets', 'geart' ),
                            'subtitle' => __( 'Enter yours links', 'geart' ),
                            'label'    => true,
                            'options'  => array(
                                'Facebook'   => 'link',
                                'Instagram'   => 'link',
                                'Behance' => 'link',
                                'Dribbble' => 'link',
                                'Linkedin' => 'link',
                            )
                        ),
                       

                    )

            ) );

   
