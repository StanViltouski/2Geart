<?php 

/**
* Template name: Home Template
*/

get_header(); ?>
		
	<section class="s-header">
		<div class="bg-circle-blue"></div>
		<div class="bg-circle"></div>
		<div class="bg-circle-gray"></div>
		<div class="container-fluid">
			<div class="slider owl-carousel">

						<?php  
                            wp_reset_query();
            
                                $resent_list = new WP_Query(array('post_type'=> 'main_slider', 'order'=> 'ASC', 'posts_per_page'=> -1)); 
                                
                                if ( $resent_list->have_posts() ) :
                                    while ( $resent_list->have_posts() ) :
                                    $resent_list->the_post(); ?>

                            		<div class="slider-item">
										<div class="row">
											<div class="container container_main_slider">
												<div class="row">
                          							<div class="col-xl-6 order-xl-2 col-lg-6 order-lg-2"><img src="<?php esc_url(the_post_thumbnail_url()); ?>" alt="alt" class="img-fluid"></div>
														<div class="col-xl-6 col-lg-6">
															<div class="slider-item-cont">
																<h2><?php esc_html(the_title()); ?></h2>
																<p><?php esc_html(the_content()); ?></p>
																<a href="<?php esc_url(the_permalink()); ?>" class="button btn-white btn-arrow"><span>About Service</span><i class="lnr lnr-arrow-right"></i></a>	
															</div>
														</div>	
                            					</div>
											</div>
										</div>
									</div>
                         
                        <?php  endwhile; endif;  wp_reset_query(); ?>
							
			</div>	
		</div>
	</section>

	<div class="s-adv">
		<div class="container">
			<div class="row justify-content-between">
				<div class="col-auto">
					<div class="s-adv-item">
						<div class="count count_year"><span data-count="2015">0</span></div>
						<p>Year of foundation</p>
					</div>
				</div>
				<div class="col-auto">
					<div class="s-adv-item">
						<div class="count count_item"><span data-count="3">0</span></div>
						<p>State Offices</p>
					</div>
				</div>
				<div class="col-auto">
					<div class="s-adv-item">
						<div class="count count_projects"><span data-count="350">0</span></div>
						<p>Number of projects</p>
					</div>
				</div>
				<div class="col-auto">
					<div class="s-adv-item">
						<div class="count count_market"><span data-count="20">0</span></div>
						<p>Applications on market</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<section class="s-projects clearfix">
		<h2>Recent Projects</h2>
		<div class="container-fluid">
				<div id="best_portfolio_grid">

					<div class="item-project overlay" style="background-image: url(<?php bloginfo('template_directory') ?>/img/projects/javalanding.png)">
						<div class="item-project_category">
							<span>mobile app</span>
						</div>
						<div class="item-project_title">
							Ledger App
						</div>
						<div class="item-project-content">
							<h3><a href="#">Ledger App</a></h3>
							<p>mobile app</p>
						</div>
					</div>

					<div class="item-project overlay " style="background-image: url(<?php bloginfo('template_directory') ?>/img/projects/ledger.png)">
						<div class="item-project_category">
							<span>mobile app</span>
						</div>
						<div class="item-project_title">
							Ledger App
						</div>
						<div class="item-project-content">
							<h3><a href="#">Ledger App</a></h3>
							<p>Application</p>
						</div>
					</div>

					<div class="item-project overlay " style="background-image: url(<?php bloginfo('template_directory') ?>/img/projects/logicway.png)">
						<div class="item-project_category">
							<span>mobile app</span>
						</div>
						<div class="item-project_title">
							Ledger App
						</div>
						<div class="item-project-content">
							<h3><a href="#">Ledger App</a></h3>
							<p>Application</p>
						</div>
					</div>

					<div class="item-project overlay " style="background-image: url(<?php bloginfo('template_directory') ?>/img/projects/bpm.png)">
						<div class="item-project_category">
							<span>mobile app</span>
						</div>
						<div class="item-project_title">
							Ledger App
						</div>
						<div class="item-project-content">
							<h3><a href="#">Ledger App</a></h3>
							<p>Application</p>
						</div>
					</div>

					<div class="item-project overlay " style="background-image: url(<?php bloginfo('template_directory') ?>/img/projects/spintrivia.png)">
						<div class="item-project_category">
							<span>mobile app</span>
						</div>
						<div class="item-project_title">
							Ledger App
						</div>
						<div class="item-project-content">
							<h3><a href="#">Ledger App</a></h3>
							<p>Application</p>
						</div>
					</div>

					<div class="item-project overlay " style="background-image: url(<?php bloginfo('template_directory') ?>/img/projects/aida.png)">
						<div class="item-project_category">
							<span>mobile app</span>
						</div>
						<div class="item-project_title">
							Ledger App
						</div>
						<div class="item-project-content">
							<h3><a href="#">Ledger App</a></h3>
							<p>Application</p>
						</div>
					</div>

					<div class="item-project overlay " style="background-image: url(<?php bloginfo('template_directory') ?>/img/projects/debtapp.png)">
						<div class="item-project_category">
							<span>mobile app</span>
						</div>
						<div class="item-project_title">
							Ledger App
						</div>
						<div class="item-project-content">
							<h3><a href="#">Ledger App</a></h3>
							<p>Application</p>
						</div>
					</div>

					<div class="item-project overlay " style="background-image: url(<?php bloginfo('template_directory') ?>/img/projects/domain.png)">
						<div class="item-project_category">
							<span>mobile app</span>
						</div>
						<div class="item-project_title">
							Ledger App
						</div>
						<div class="item-project-content">
							<h3><a href="#">Ledger App</a></h3>
							<p>Application</p>
						</div>
					</div>
					
				</div>
				<div class="button-wrap button-wrap_main">
					<a href="/portfolio">See All Projects &nbsp;<i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
				</div>

		</div>
	</section>

	<section class="s-about">
		<div class="container">
			<div class="row">
				<div class="col-lg-5 align-self-center"><img src="<?php if( get_field('abount_us_image') ): ?><?php esc_url(the_field('abount_us_image')); ?><?php endif; ?>" alt="About Us" class="img-fluid"></div>

				<div class="col-lg-7">
					<?php if(get_post_meta($post->ID, $key = 'abount_us_title', $single = true)){ ?>
                            <h2><?php echo esc_html(get_post_meta($post->ID, $key = 'abount_us_title', $single = true));?></h2>
                    <?php }  ?>

					<?php if(get_post_meta($post->ID, $key = 'abount_us_content', $single = true)){ ?>
                            <p><?php echo esc_html(get_post_meta($post->ID, $key = 'abount_us_content', $single = true));?></p>
                    <?php }  ?>
				</div>
			</div>
		</div>
	</section>

	<section class="s-customers">
		<h2>Customers</h2>
		<div class="container ">
			<div class="row">
				<div class="col-md-12">
					<div class="carousel-customers owl-carousel">

						<?php  
                            wp_reset_query();
            
                                $resent_list = new WP_Query(array('post_type'=> 'customers', 'order'=> 'ASC', 'posts_per_page'=> -1)); 
                                
                                if ( $resent_list->have_posts() ) :
                                    while ( $resent_list->have_posts() ) :
                                    $resent_list->the_post(); ?>

                                    <div class="carousel-customer">
										<span><?php esc_html(the_post_thumbnail()); ?></span>
									</div>

                        <?php  endwhile; endif;  wp_reset_query(); ?>
					</div>
				</div>
			</div>
		</div>
	</section>



<?php get_footer(); ?>