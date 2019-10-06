<?php 

/**
* Template name: Service Internet Marketing Template
*/

get_header(); ?>


<main class="content mr-top">
		<div class="page-nav">
			<div class="container">
				<div class="row no-gutters">
					<div class="col-12">
						<div class="page_title">
							All Services
						</div>
						<div class="filter-wrap">
							<ul class="filter-list">
								<li id="button_filter" class="filter filterAction_mobile active" data-filter=".all">All services <i class="fa fa-chevron-down" aria-hidden="true"></i></li>
								<li class="filter filter_mobile" data-filter=".design">Design</li>
								<li class="filter filter_mobile" data-filter=".web">Web Development</li>
								<li class="filter filter_mobile" data-filter=".app">App Development</li>
								<li class="filter filter_mobile" data-filter=".internet">Internet Marketing</li>
							</ul>
						</div>
					</div>	
				</div>	
			</div>
		</div>

		<div id="services" class="s-services clearfix">

			<div class="list-items" id="services-grid">


				<?php
                wp_reset_query();
                $args = array( 'post_type'=> 'service', 'posts_per_page' => -1,  'orderby'=> 'rand', 'tax_query' => array(
                    array(
                        'taxonomy' => 'services-page',
                        'field'    => 'slug',
                        'terms'   => array( 'internet-marketing' )
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





<?php get_footer(); ?>