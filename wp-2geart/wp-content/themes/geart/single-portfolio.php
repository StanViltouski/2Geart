<?php get_header(); ?>


<section>

	<?php

						if ( have_posts() ) {
						while ( have_posts() ) :
								the_post(); ?>


								<?php the_content(); ?>


						<?php 	endwhile; } ?>

						
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
	


</section>



<?php get_footer(); ?>