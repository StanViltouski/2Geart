<?php 

/**
* Template name: Service Post Template
*/

get_header(); ?>

<?php
	while ( have_posts() ) : the_post(); ?>

	<main class="content mr-top mr-top_app">
		<div class="s-header s-header_app" style="background: url(<?php the_post_thumbnail_url(); ?>)no-repeat center/cover">

			<div id="s-header-content_post" class="s-header-content s-header-content_post">
				<div class="container">
					<div class="button_back"><a href="javascript:history.back();"><img src="<?php bloginfo('template_directory') ?>/img/arrow-back.svg" alt="arrow back">Services</a></div>
					<div class="s-header-title"><?php the_title(); ?></div>
				</div>
			</div>	

		</div>


		<article class="s-post">
			<div class="container container_services_post">
				
				<?php the_content(); ?>

			</div>
		</article>

		<!--Widget -->

			<div class="s-order-wrap s-order-wrap_app">
				<div class="container">
					<div class="row no-gutter">
						<div class="col-12 widget-wrapper-padding">
							<div class="s-order service_widget">
								<div class="title">READY TO TALK?</div>
								 <?php esc_html(dynamic_sidebar( 'Services Plate' )); ?>
								<div class="button-wrap">
									<a href="/form" class="button btn-white"><span>Send Request</span><i class="lnr lnr-arrow-right"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

	</main>
<?php endwhile; ?>	


<?php get_footer(); ?>