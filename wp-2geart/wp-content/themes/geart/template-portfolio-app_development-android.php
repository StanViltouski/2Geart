<?php 

/**
* Template name: Portfolio App Development Android Template
*/

get_header(); ?>
	<main class="content mr-top">

	<?php get_template_part( 'template-parts/portfolio-category-menu-inner-two', 'filter-menu-inner-two' ); ?>

		<section id="portfolio" class="s-projects s-projects_portfolio clearfix">
			<div class="container-fluid">
				<div id="portfolio-grid">
					
            		<?php
            		    wp_reset_query();
            		    $args = array( 'post_type'=> 'portfolio', 'orderby'=> 'rand', 'posts_per_page' => -1, 'tax_query' => array(
            		        	array(
            		            	'taxonomy' => 'categories-portfolio',
            		           		'field'    => 'slug',
            		            	'terms'   => array( 'android-work' )
            		        	)
            		    )
            		);

                $posts = get_posts($args);

                foreach($posts as $post) : ?>
								
						<div class="item-project overlay" style="background-image: url(<?php esc_url(the_post_thumbnail_url());  ?>);">
							<div class="item-project_category">
								<?php 
                       				$postID = get_the_ID();

                        			$wcatTerms = wp_get_object_terms($postID, 'categories-portfolio', array(
                                		'childless' => true,
                       				));
                       
                        			foreach($wcatTerms as $wcatTerm) : ?>

                               			<span> <?php  echo ($wcatTerm->name);?> </span> 
                               			
                      			 	<?php endforeach; ?>
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

<?php get_template_part( 'template-parts/modal-filter-inner-two', 'modal-filter-inner-two' ); ?>
	
<?php get_footer(); ?>