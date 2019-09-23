<?php 

/**
* Template name: Design (Portf) Template
*/
get_header(); ?>

<main class="content mr-top">
	<?php get_template_part( 'template-parts/portfolio-category-menu', 'filter-menu' ); ?>

		<section id="portfolio" class="s-projects s-projects_portfolio clearfix">
			<div class="container-fluid">
				<div id="portfolio-grid">
					
            		<?php
            		    wp_reset_query();
            		    $args = array( 'post_type'=> 'portfolio', 'orderby'=> 'rand', 'posts_per_page' => -1, 'tax_query' => array(
            		        	array(
            		            	'taxonomy' => 'categories-portfolio',
            		           		'field'    => 'slug',
            		            	'terms'   => array( 'design' )
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


		<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
    	<div class="modal-header">
        	All Projects <i class="fa fa-chevron-up" aria-hidden="true"></i>
      	</div>
      	<div class="modal-body">
      		<ul class="modal-filter-list">
			
				<?php 

					$term_name = (get_queried_object()->post_name);
					$myTaxonomy = 'categories-portfolio';
					$termID = get_term_by( 'slug', $term_name, $myTaxonomy)->term_id;
					$termchildren = get_term_children( $termID, $myTaxonomy);
		
					foreach ($termchildren as $child) :
                    	$term = get_term_by( 'id', $child, $myTaxonomy );

                    	echo '<li class="filter"><a href="'. '/' . $term->slug . '">' . $term->name . '</a></li>';
                    
                	endforeach;  ?>
			</ul>
      	</div>
        				
    </div>
  </div>
</div>



<?php get_footer(); ?>