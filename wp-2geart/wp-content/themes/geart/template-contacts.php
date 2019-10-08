<?php 

/**
* Template name: Contacts Template
*/

get_header(); ?>

		<main class="content mr-top">

		<section class="s-callback s-white text-center" id="contact">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<h1 class="page_title page_title_contact">Our Contacts</h1>
						<div class="filter-wrap-contacts">
							<ul class="filter-list filter-list-contacts">
								<?php  
                    				wp_reset_query();
            
                    				$resent_list = new WP_Query(array('post_type'=> 'contacts', 'order'=> 'ASC', 'posts_per_page'=> -1));
                    				$count = 0; 
                    				if ( $resent_list->have_posts() ) :
                        				while ( $resent_list->have_posts() ) :
                            				$resent_list->the_post(); 
                            				$count++;?>

											<li class="filter filter_mobile filter-map" data-map="<?php echo($count); ?>"><?php esc_html(the_title()); ?></li>

                            	<?php  endwhile; endif;  wp_reset_query(); ?>

							</ul>
						</div>
					</div>
				</div>
			</div>
		</section >
		<div class="address">
			<div class="address-items">

				<?php  
                    wp_reset_query();
            
                    $resent_list = new WP_Query(array('post_type'=> 'contacts', 'order'=> 'ASC', 'posts_per_page'=> -1)); 
                    if ( $resent_list->have_posts() ) :
                        while ( $resent_list->have_posts() ) :
                            $resent_list->the_post(); ?>
                            
								<div class="address-item">

									<div class="link" data-page="">

										<div class="link_city"><?php esc_html(the_title()); ?></div>

										<div class="addressItem-block addressItem-address">
											<i class="fa fa-map-marker"></i>
											<?php if(get_post_meta($post->ID, $key = 'address', $single = true)){ ?>
                            				<span><?php echo esc_html(get_post_meta($post->ID, $key = 'address', $single = true));?></span>
                    						<?php }  ?>
										</div>
				
										<div class="addressItem-block addressItem-telephone">
											<i class="fa fa-phone"></i>
											<?php if(get_post_meta($post->ID, $key = 'telephone', $single = true)){ ?>
                            				<span><?php echo esc_html(get_post_meta($post->ID, $key = 'telephone', $single = true));?></span>
                    						<?php }  ?>
										</div>
				
										<div class="addressItem-block addressItem-email">
											<i class="fa fa-envelope"></i>
											<?php if(get_post_meta($post->ID, $key = 'email', $single = true)){ ?>
                            				<span><?php echo esc_html(get_post_meta($post->ID, $key = 'email', $single = true));?></span>
                    						<?php }  ?>
										</div>
				
										<div class="addressItem-block addressItem-email">
											<i class="fa fa-skype"></i>
											<?php if(get_post_meta($post->ID, $key = 'skype', $single = true)){ ?>
                            				<span><?php echo esc_html(get_post_meta($post->ID, $key = 'skype', $single = true));?></span>
                    						<?php }  ?>
										</div>
									
										<div class="button-wrap btn-mob">
											<a href="map_1" class="btn-small">Show Map</a>
										</div>
									</div>
									<span id="map_1" class="maps">
										<?php if(get_post_meta($post->ID, $key = 'map', $single = true)){ ?>
                            			<?php echo get_post_meta($post->ID, $key = 'map', $single = true);?>
                    					<?php }  ?>
									</span>

								</div>

                    <?php  endwhile; endif;  wp_reset_query(); ?>

			</div>
		</div>        
	</main>



<?php get_footer(); ?>

