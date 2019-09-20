<?php get_header(); ?>


<section style="height: 1000px;">

	<?php

						if ( have_posts() ) :
						while ( have_posts() ) :
								the_post(); ?>

								<div class="text-center mt-5"><?php the_title(); ?></div>
								<div class="text-center mt-5"><?php the_post_thumbnail(); ?></div>




						<?php 	endwhile; endif; ?>
	


</section>



<?php get_footer(); ?>