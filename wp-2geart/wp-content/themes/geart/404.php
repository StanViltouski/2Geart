<?php

/**
 * The template for displaying 404 pages (not found)
 */

get_header(); ?>

	<main class="content">
		<div class="s-404">
			<div class="container-fluid">
				<div class="row">
					<div class="col">

						<div class="desc">
							<img src="<?php bloginfo('template_directory') ?>/img/404.png" alt="alt" class="img-responsive">
							<h1>Page not found</h1>
							<span>Relax, take it easy. Keep fresh your mind!</span>
							<a href="/" class="button">Go Home <i class='lnr lnr-chevron-right'></i></a>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</main>

<?php get_footer();
