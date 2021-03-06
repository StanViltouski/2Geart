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
												<span class="h2"><?php esc_html(the_title()); ?></span>
												<?php esc_html(the_content()); ?>
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
						<div class="count count_year"><span class="number-percentage-count number-percentage" data-value="2015" data-animation-duration="3500">0</span></div>
						<p>Year of foundation</p>
					</div>
				</div>

				<div class="col-auto">
					<div class="s-adv-item">
						<div class="count count_item"><span class="number-percentage-count number-percentage" data-value="3" data-animation-duration="3500">0</span></div>
						<p>State Offices</p>
					</div>
				</div>

				<div class="col-auto">
					<div class="s-adv-item">
						<div class="count count_projects"><span class="number-percentage-count number-percentage" data-value="350" data-animation-duration="3500">0</span></div>
						<p>Number of projects</p>
					</div>
				</div>

				<div class="col-auto">
					<div class="s-adv-item">
						<div class="count count_market"><span class="number-percentage-count number-percentage" data-value="20" data-animation-duration="3500">0</span></div>
						<p>Applications on market</p>
					</div>
				</div>
			</div>
		</div>
	</div>



	<section class="s-projects clearfix">

		<h2 class="text-center">Recent Projects</h2>

		<div class="container-fluid">
			<div id="best_portfolio_grid">

				<?php 
					wp_reset_query();

  					$best_portfolio = array(
    					'post_type' => 'portfolio',
    					'posts_per_page' => -1,
    					'meta_query' => array( 
      						array(
        						'key' => 'show_on_main_page',
        						'value' => '1'
      						)
   						 )
  					);

 				$best_portfolio_query = new WP_Query( $best_portfolio );
  					while ( $best_portfolio_query->have_posts() ) :
    					$best_portfolio_query->the_post(); 
				?>

					<a href="<?php esc_url(the_permalink()); ?>" class="item-project overlay" style="background-image: url(<?php esc_url(the_post_thumbnail_url());  ?>);">
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
								<span class="h3"><?php esc_html(the_title()); ?></span>
								<div class="item-project-overlay-category">
									<?php foreach($wcatTerms as $wcatTerm) : ?>
                               			<p> <?php  echo ($wcatTerm->name . " &nbsp; "); ?> </p> 
                      			 	<?php endforeach; ?>
                      			</div>
										
							</div>
						</a>


				<?php endwhile; wp_reset_query(); ?>

			</div>
			<div class="button-wrap button-wrap_main">
				<a href="/portfolio">See All Projects &nbsp;<i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
			</div>

		</div>
	</section>



	<section class="s-about">
		<div class="container">
			<div class="row">
				
				<div class="s-about_img col-lg-5 align-self-center"><img src="<?php if( get_field('abount_us_image') ): ?><?php esc_url(the_field('abount_us_image')); ?><?php endif; ?>" alt="About Us" class="img-fluid"></div>

				<div class="col-lg-7">
					<?php if(get_post_meta($post->ID, $key = 'abount_us_title', $single = true)){ ?>
                            <h2><?php echo esc_html(get_post_meta($post->ID, $key = 'abount_us_title', $single = true));?></h2>
                    <?php }  ?>

					<?php if(get_post_meta($post->ID, $key = 'abount_us_content', $single = true)){ ?>
                            <?php echo get_post_meta($post->ID, $key = 'abount_us_content', $single = true);?>
                    <?php }  ?>
				</div>
			</div>
		</div>
	</section>


	<section class="main-services">
		<h2>What We Offer</h2>
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-12 mainServices_block">
					<div class="mainServices_img">
						<img src="<?php bloginfo('template_directory') ?>/img/design-icon.svg" alt="design-icon">
					</div>
					<div class="mainServices_list">
						<a href="/design/"><h4>Design</h4></a>
						<ul>
							<li>Web Design</li>
							<li>App Design</li>
							<li>Logo Design</li>
							<li>Graphic Design</li>
							<li>Banner Design</li>
						</ul>
					</div>
				</div>
				<div class="col-md-6 col-12 mainServices_block">
					<div class="mainServices_img">
						<img src="<?php bloginfo('template_directory') ?>/img/web-development-icon.svg" alt="web-development-icon">
					</div>
					<div class="mainServices_list">
						<a href="/web-development/"><h4>Web Development</h4></a>
						<ul>
							<li>Angular JS</li>
							<li>HTML, CSS</li>
							<li>Javascript</li>
							<li>Node JS</li>
							<li>Java</li>
							<li>CMS</li>
						</ul>
					</div>
				</div>
				<div class="col-md-6 col-12 mainServices_block">
					<div class="mainServices_img">
						<img src="<?php bloginfo('template_directory') ?>/img/marketing.svg" alt="marketing">
					</div>
					<div class="mainServices_list">
						<a href="/internet-marketing/"><h4>Internet Marketing</h4></a>
						<ul>
							<li>Enterprise SEO</li>
							<li>Local SEO</li>
							<li>E-commerce</li>
							<li>Website Optimization</li>
							<li>Google my Business</li>
							<li>Audit</li>
						</ul>
					</div>
				</div>
				<div class="col-md-6 col-12 mainServices_block">
					<div class="mainServices_img">
						<img src="<?php bloginfo('template_directory') ?>/img/app-dev-icon.svg" alt="app-dev-icon">
					</div>
					<div class="mainServices_list">
						<a href="/app-development/"><h4>App Development</h4></a>
						<ul>
							<li>IOS</li>
							<li>Android</li>
							<li>Backend</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section class="s-customers">
		<h2 class="text-center">Customers</h2>
		<div class="container">
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