<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link rel="icon" href="<?php bloginfo('template_directory') ?>/img/favicon.ico">
<meta name="yandex-verification" content="529fafdffa381d8f" />
	<meta name="google-site-verification" content="pe5FsafPLR4dVqZnEM-kMXiy26FjnW4aDnYrku5rQfA" />
	
	<?php wp_head(); ?>

	<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-160870987-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-160870987-1');
</script>

</head>

<?php if( is_page(15) ){?><body class="page page-about"><?php } if( !is_front_page() && !is_404() ){?><body class="page"><?php } ?>

	<div class="overlay-bg"></div>

	<header class="top-line">
		<div class="container-fluid">
			<div class="row justify-content-end align-items-center">

				<?php 
                if(is_front_page()){ ?>
                    <a class="logo" href="/"><img class="img-svg" src="<?php bloginfo('template_directory') ?>/uploads/2019/10/logo.svg" title="2Geart Design Bureau" alt="logo"></a>
                <?php 
                } else { ?>
                    <a class="logo" href="/"><img class="img-svg" src="<?php bloginfo('template_directory') ?>/uploads/2019/10/logo-black.svg" title="2Geart Design Bureau" alt="logo"></a>
                <?php } ?>

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
						<a href="/form/" class="button btn-big">Send Request</a>	
					</div>
				</div>

				<div class="button-wrap">
					<a href="/form/" class="button btn-big headerBtn-big-mobile">Send Request</a>
					<a href="#" class="toggle-mnu"><span></span></a>
				</div>
			</div>
		</div>
	</header>