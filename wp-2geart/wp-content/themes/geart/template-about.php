<?php 

/**
* Template name: About Template
*/

get_header(); ?>

	<main class="content">
		<section class="s-header block-center">
			<div class="container-fluid">
				<div class="row no-gutters">
					
					<div class="col-xl-7 order-xl-2 col-lg-6 order-lg-2">					
						<img src="<?php esc_url(the_post_thumbnail_url()); ?>" alt="alt" class="about-us">
					</div>
					<div class="col-xl-5 col-lg-6">
						<div class="s-header-content">
							<?php if(get_post_meta($post->ID, $key = 'title_page', $single = true)){ ?>
                            <h1><?php echo esc_html(get_post_meta($post->ID, $key = 'title_page', $single = true));?></h1>
                    		<?php }  ?>

							<?php if(get_post_meta($post->ID, $key = 'title_content', $single = true)){ ?>
                            <p><?php echo esc_html(get_post_meta($post->ID, $key = 'title_content', $single = true));?></p>
                    		<?php }  ?>
						</div>
					</div>

				</div>
			</div>
		</section>

		<section class="s-certificates s-accent">
			<div class="container">
				<div class="row">
					<div class="col">
						<h2>Diplomas & Certificates</h2>	
					</div>
				</div>
			</div>
			<div class="container ">
				<div class="row no-gutters">
					<div class="col-md-12">
						<div class="carousel-certificates owl-carousel">

							<?php  
                    			wp_reset_query();
            
                    			$resent_list = new WP_Query(array('post_type'=> 'certificates', 'order'=> 'ASC', 'posts_per_page'=> -1)); 
                                
                    			if ( $resent_list->have_posts() ) :
                        			while ( $resent_list->have_posts() ) :
                           			 	$resent_list->the_post(); ?>

                           			 	<div class="carousel-certificates-item" data-toggle="modal" data-target="#modal-certificate" data-certificate="<?php if( get_field('image_certificate') ) esc_url(the_field('image_certificate')); ?>">
											<div class="carousel-certificates-item-block"></div>
											<span class="type-certificate"><?php esc_html(the_title()); ?></span>
											<span class="location-certificate">
											<?php if(get_post_meta($post->ID, $key = 'where_did_you_get', $single = true)){ ?>
                            				<?php echo esc_html(get_post_meta($post->ID, $key = 'where_did_you_get', $single = true));?>
                    						<?php }  ?>
											</span>
										</div>

                   	        	<?php  endwhile; endif;  wp_reset_query(); ?>

						</div>
					</div>
				</div>
			</div>
		</section>

		<div class="s-about clearfix">

			<div class="list-items">

				<div class="list-item">
					<div class="list-row">
						<div class="list-content">
							<div class="list-composition">
								<h3 class="h3">Studio Foundation</h3>
								<div class="list-text">
									<p>We believe a designer is not only an artist but also an engineer. And that success comes with the attention to details. We are always fully engaged in the project from beginning to end. We'll take you from an idea to its implementation.</p>
									<p>We believe a designer is not only an artist but also an engineer. And that success comes with the attention to details. We are always fully engaged in the project from beginning to end. We'll take you from an idea to its implementation.</p>
								</div>
							</div>						
						</div>
						<div class="list-image" style="background-image: url(<?php bloginfo('template_directory') ?>/img/about/studio.png)"></div>
					</div>
				</div>	
				<!-- // -->
				<div class="list-item">
					<div class="list-row">
						<div class="list-content">
							<div class="list-composition">
								<h3 class="h3">Main Areas of Work</h3>
								<div class="list-text">
									<p>We believe a designer is not only an artist but also an engineer. And that success comes with the attention to details. We are always fully engaged in the project from beginning to end. We'll take you from an idea to its implementation.</p>
									<p>We believe a designer is not only an artist but also an engineer. And that success comes with the attention to details. We are always fully engaged in the project from beginning to end. We'll take you from an idea to its implementation.</p>
								</div>
							</div>						
						</div>
						<div class="list-image" style="background-image: url(<?php bloginfo('template_directory') ?>/img/about/main-work.png)"></div>
					</div>
				</div>
			</div>
		</div>

	</main>


	<!-- Modal -->

<div class="modal fade" id="modal-certificate" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content modal-content-certificate">
        	<div class="button_close"><i class="fa fa-times" aria-hidden="true"></i></div>
        	<div id="certificate_img">
        		<img class="img-fluid" src="" alt="certificate">
        	</div>
        </div>
    </div>
</div>


<?php get_footer(); ?>

<script>

	$('.carousel-certificates-item').on('click', function(){
		var img_url = $(this).attr('data-certificate');
		$('#certificate_img img').attr('src', img_url);

	})

	$('.modal-content-certificate .button_close i').on('click', function(){
		$("#modal-certificate").click();
	})
</script>