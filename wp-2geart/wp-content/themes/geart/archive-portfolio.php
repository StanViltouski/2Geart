<?php 

get_header(); ?>

	<main class="content mr-top">
		<div class="page-nav">
			<div class="container">
				<div class="row no-gutters">
					<div class="col-12">
						<div class="page_title">
							All Projects
						</div>
						<div class="filter-wrap">

						<?php wp_nav_menu([
                    		'theme_location'  => '',
                    		'menu'            => 'Portfolio-category', 
                    		'container'       => 'div', 
                    		'menu_class'      => false, 
                    		'echo'            => true,
                    		'fallback_cb'     => 'wp_page_menu',
                    		'items_wrap'      => '<ul class="filter-list">%3$s</ul>',
                    		'depth'           => 0,
                			]);
                		?>
<!--
							<ul class="filter-list">
								<li id="button_filter" class="filter filterAction_mobile active" data-filter=".all"><span>All projects </span><i class="fa fa-chevron-down" aria-hidden="true"></i></li>
								<li class="filter filter_mobile" data-filter=".design">Design</li>
								<li class="filter filter_mobile" data-filter=".web">Web Development</li>
								<li class="filter filter_mobile" data-filter=".app">App Development</li>
								<li class="filter filter_mobile" data-filter=".internet">Internet Marketing</li>
							</ul>
-->
						</div>
					</div>	
				</div>
			</div>
		</div>

		<section id="portfolio" class="s-projects s-projects_portfolio clearfix">
			<div class="container-fluid">
				<div id="portfolio-grid">

					<?php

						if ( have_posts() ) :
						while ( have_posts() ) :
								the_post(); ?>
								
						<div class="item-project item-project-portfolio overlay" style="background-image: url(<?php esc_url(the_post_thumbnail_url());  ?>);">
							<div class="item-project_category">
								<span>mobile app</span>
							</div>
							<div class="item-project_title">
								<?php esc_html(the_title()); ?>
							</div>
							<div class="item-project-content">
								<h3><a href="<?php esc_url(the_permalink()); ?>">Ledger App</a></h3>
								<p>Application</p>
							</div>
						</div>

					<?php 	endwhile; endif; ?>
					
				</div>
			</div>
		</section>
	</main>


<?php get_footer(); ?>