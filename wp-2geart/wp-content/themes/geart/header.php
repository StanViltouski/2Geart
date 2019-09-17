<?php  global $geart_option; ?>
<?php $custom_desk_logo = ($geart_option['geart-desk-logo']['url']); ?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="description" content="asdasd">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>Main</title>

	<link rel="icon" href="<?php bloginfo('template_directory') ?>/img/favicon/favicon.ico">
	<link rel="apple-touch-icon" sizes="180x180" href="<?php bloginfo('template_directory') ?>/img/favicon/favicon.png">

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

	<?php wp_head(); ?>

</head>
<body>

	<div class="overlay-bg"></div>

	<header class="top-line">
		<div class="container-fluid">
			<div class="row justify-content-end align-items-center">

				<?php 
                if($custom_desk_logo){ ?>
                    <a class="logo" href="/"><img class="img-svg" src="<?php echo esc_url($custom_desk_logo); ?>" title="2Geart Design Bureau" alt="logo"></a>
                <?php 
                } else {
                    echo "No image";
                } ?> 

				<div class="menu-wrap">
					<nav class="main-menu">

						<?php wp_nav_menu([
                    		'theme_location'  => 'primary',
                    		'menu'            => 'header-menu', 
                    		'container'       => false, 
                    		'menu_class'      => false, 
                    		'echo'            => true,
                    		'fallback_cb'     => 'wp_page_menu',
                    		'items_wrap'      => '<ul>%3$s</ul>',
                    		'depth'           => 0,

                			]);
                		?>

					</nav>
					<div class="button-wrap btn-mob">
						<a href="form.html" class="button btn-big">Send a Request</a>	
					</div>
				</div>
				<div class="button-wrap">
					<a href="form.html" class="button btn-big headerBtn-big-mobile">Request</a>
					<a href="#" class="toggle-mnu"><span></span></a>
				</div>
			</div>
		</div>
	</header>