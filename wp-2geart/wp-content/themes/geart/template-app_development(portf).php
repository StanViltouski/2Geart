<?php 

/**
* Template name: App Development (Portf) Template
*/

get_header(); ?>

<main class="content mr-top">

	<?php get_template_part( 'template-parts/portfolio-category-menu-inner_one', 'filter-menu-inner_one' ); ?>

		<section id="portfolio" class="s-projects s-projects_portfolio clearfix">
			<div class="container-fluid">
				<div id="portfolio-grid">
					
            		<?php
            		    wp_reset_query();
            		    $args = array( 'post_type'=> 'portfolio', 'orderby'=> 'rand', 'posts_per_page' => -1, 'tax_query' => array(
            		        	array(
            		            	'taxonomy' => 'categories-portfolio',
            		           		'field'    => 'slug',
            		            	'terms'   => array( 'app-dev' )
            		        	)
            		    )
            		);

                $posts = get_posts($args);

                foreach($posts as $post) : ?>
								
						<div class="item-project overlay" style="background-image: url(<?php esc_url(the_post_thumbnail_url());  ?>);">
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

			<?php endforeach; wp_reset_query(); ?>
					
				</div>
			</div>
		</section>
	</main>

<?php get_template_part( 'template-parts/modal-filter-inner-one', 'modal-filter-inner-one' ); ?>

<?php get_footer(); ?>