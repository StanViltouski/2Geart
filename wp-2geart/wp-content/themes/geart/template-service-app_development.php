<?php 

/**
* Template name: Service App Development Template
*/

get_header(); ?>



<main class="content mr-top">

		<?php get_template_part( 'template-parts/service-app-development-menu-inner', 'services-app-development-menu-inner' ); ?>

		<div id="services" class="s-services clearfix">

			<div class="list-items" id="services-grid">


				<?php
                wp_reset_query();
                $args = array( 'post_type'=> 'service', 'posts_per_page' => -1,  'orderby'=> 'rand', 'tax_query' => array(
                    array(
                        'taxonomy' => 'services-page',
                        'field'    => 'slug',
                        'terms'   => array( 'app-development' )
                    )
                )
            	); 

            	$posts = get_posts($args);
                foreach($posts as $post) :setup_postdata($post);?>


							<div class="list-item mix all">
								<div class="list-row">
									<div class="list-content">
										<div class="list-composition">
											<h3 class="h3"><?php esc_html(the_title()); ?></h3>
											<div class="list-text">
												<?php if(get_post_meta($post->ID, $key = 'content', $single = true)){ ?>
                            					<p><?php echo esc_html(get_post_meta($post->ID, $key = 'content', $single = true));?></p>
                    							<?php }  ?>
											</div>
											<a href="<?php if(get_post_meta($post->ID, $key = 'link', $single = true)){ echo esc_html(get_post_meta($post->ID, $key = 'link', $single = true)); } ?>" class="button">See More <i class='lnr lnr-chevron-right'></i></a>
										</div>						
									</div>
									<div class="list-image" style="background-image: url(<?php esc_html(the_post_thumbnail_url()); ?>)"></div>
								</div>
							</div>	

				 <?php endforeach; wp_reset_query(); ?>
									
			</div>
		</div>



<?php get_template_part( 'template-parts/service-modal-filter', 'service-modal' ); ?>


<?php get_footer(); ?>