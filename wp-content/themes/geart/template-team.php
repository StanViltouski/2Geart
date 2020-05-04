<?php 

/**
* Template name: Team Template
*/

get_header(); ?>

	<main>
		<section class="s-team overlay-dark">

			<div class="swiper-container">
				<div class="swiper-wrapper">


					<?php  
                   		wp_reset_query();
            
                    	$resent_list = new WP_Query(array('post_type'=> 'team', 'order'=> 'ASC', 'posts_per_page'=> -1));
                    	$count = 0; 
                                
                    	if ( $resent_list->have_posts() ) :
                        	while ( $resent_list->have_posts() ) :
                            	$resent_list->the_post(); 
                            	$count++; ?>
								<div class="swiper-slide swiper-slide-item">
									<div class="swiper-slide-row">
										<div class="slider-image-wrap"><figure class="slide-img swiper-slide-cover" style="background-image:url(<?php esc_url(the_post_thumbnail_url());  ?>);"></figure></div>
										<div class="swiper-slide-content">
											<div class="swiper_first swiper-slide-composition">
									
												<?php if($count == 1) { ?>
													<h1><?php esc_html(the_title()); ?></h1>
												<?php } else { ?><h2><?php esc_html(the_title()); ?></h2><?php } ?>
									

												<?php if(get_post_meta($post->ID, $key = 'position', $single = true)){ ?>
                            					<div class="swiper-slide-post"><?php echo esc_html(get_post_meta($post->ID, $key = 'position', $single = true));?></div>
                    							<?php }  ?>

												<?php if(get_post_meta($post->ID, $key = 'description', $single = true)){ ?>
                            					<p><?php echo get_post_meta($post->ID, $key = 'description', $single = true);?></p>
                    							<?php }  ?>

                    							<div class="swiper-slide-social">
													<ul>
														<?php if(get_post_meta($post->ID, $key = 'instagram', $single = true)){ ?>
															<li><a href="<?php echo esc_html(get_post_meta($post->ID, $key = 'instagram', $single = true));?>"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
														<?php }  ?>	

														<?php if(get_post_meta($post->ID, $key = 'behance', $single = true)){ ?>
															<li><a href="<?php echo esc_html(get_post_meta($post->ID, $key = 'behance', $single = true));?>"><i class="fa fa-behance" aria-hidden="true"></i></a></li>
														<?php }  ?>

														<?php if(get_post_meta($post->ID, $key = 'dribbble', $single = true)){ ?>
															<li><a href="<?php echo esc_html(get_post_meta($post->ID, $key = 'dribbble', $single = true));?>"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
														<?php }  ?>	

														<?php if(get_post_meta($post->ID, $key = 'facebook', $single = true)){ ?>
														<li><a href="<?php echo esc_html(get_post_meta($post->ID, $key = 'facebook', $single = true));?>"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
														<?php }  ?>

														<?php if(get_post_meta($post->ID, $key = 'linkedin', $single = true)){ ?>
															<li><a href="<?php echo esc_html(get_post_meta($post->ID, $key = 'linkedin', $single = true));?>"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
														<?php }  ?>										
													</ul>
												</div>
											</div>
										</div>							
									</div>
								</div>

								<?php  endwhile; endif;  wp_reset_query(); ?>

				</div>
			</div>



			<div class="slider-buttons vertical-buttons">
				<div class="slider-btn-wrapper">
					<div class="swiper-prev"><i class="lnr lnr-chevron-up"></i></div>
					<div class="swiper-next"><i class="lnr lnr-chevron-down"></i></div>
				</div>
			</div>

		</section>
	</main>



<?php get_footer(); ?>