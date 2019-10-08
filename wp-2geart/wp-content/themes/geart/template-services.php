<?php 

/**
* Template name: Services Template
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
								<li id="service_title_filter" class="filter filterAction_mobile" data-toggle='' data-target="#modal-filter-portf"><a href="/services" style="color: #febb16;">All services </a><i class="fa fa-chevron-down" aria-hidden="true"></i></li>

							<?php $wcatTerms = get_terms('services-page', 
                            	array(
                                	'hide_empty' => 0,
                                	'parent'     => 0,
                                	'orderby'    => 'count',
                                	'order'      => 'DESK',

                            	)); 

                        	foreach($wcatTerms as $wcatTerm) : ?>

                        		<li class="filter filter_mobile"><a href="<?php echo ('/'. $wcatTerm->slug) ?>"><?php echo $wcatTerm->name; ?></a></li>

                        	<?php endforeach; ?>
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

  					$best_portfolio = array(
    					'post_type' => 'service',
    					'posts_per_page' => -1,
    					'meta_query' => array( 
      						array(
        						'key' => 'show_on_services',
        						'value' => '1'
      						)
   						 )
  					);

 							$best_portfolio_query = new WP_Query( $best_portfolio );
  							while ( $best_portfolio_query->have_posts() ) :
    							$best_portfolio_query->the_post(); 
				?>

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


				<?php endwhile; wp_reset_query(); ?>
									
			</div>
		</div>


	<!-- Modal -->

<div class="modal fade" id="modal-filter-portf" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header modal-header-portf">
                <span class="modal-header-title">All Services</span><i class="fa fa-chevron-up" aria-hidden="true"></i>
            </div>
            <div class="modal-body">
                <ul class="modal-filter-list">
                    <?php $wcatTerms = get_terms('services-page', 
                        array(
                            'hide_empty' => 0,
                            'parent'     => 0,
                            'orderby'    => 'count',
                            'order'      => 'DESK',
                        )); 

                    foreach($wcatTerms as $wcatTerm) : ?>

                      <li class="filter"><a href="<?php echo ('/'. $wcatTerm->slug) ?>"><?php echo $wcatTerm->name; ?></a></li>

                    <?php endforeach; ?>

                </ul>  
            </div>  
        </div>
    </div>
</div>




<?php get_footer(); ?>