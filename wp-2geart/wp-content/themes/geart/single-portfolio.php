<?php get_header(); ?>

<?php  
    wp_reset_query();
            
    $resent_list = new WP_Query(array('post_type'=> 'portfolio', 'order'=> 'ASC', 'posts_per_page'=> -1));
    $length = -1; 
    $curpost_id = get_the_ID();
    $prev_post;
    $next_post;
    $allposts = array();

                                
        if ( $resent_list->have_posts() ) :
            while ( $resent_list->have_posts() ) :
            $resent_list->the_post(); 
            $length++;
            $post_id = get_the_ID(); 
            array_push($allposts,  $post_id);

 		endwhile; endif;  wp_reset_query(); 


$key = array_search($curpost_id , $allposts);

$prev_post = $key - 1; 
$next_post = $key + 1; 

	if($prev_post < 0) {
		$prev_post = $length;
	}

	if($next_post > $length) {
		$next_post = 0;
	}
?>

<main >
	<section class="single_portfolio">
		<div class="container">

		<?php
	
			if ( have_posts() ) {
			while ( have_posts() ) : 
			 the_post(); ?>
	
    	        <?php the_content(); ?>
	
			<?php 	endwhile; } ?>
		</div>
	</section>
</main>



<section class="single_portfolio_widgets">

		<!--Widget -->

		<div class="s-order-wrap s-order-wrap_app">
			<div class="container">
				<div class="row no-gutter">
					<div class="col-12 widget-wrapper-padding">
						<div class="s-order service_widget widget_portfolio">
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


		<div class="change_post">
			<div class="row">
					<?php 
						wp_reset_query();
	
						$resent_list = new WP_Query(array('post_type'=> 'portfolio', 'post__in' => array($allposts[$prev_post]), 'order'=> 'ASC', 'posts_per_page'=> -1));
	
						if ( $resent_list->have_posts() ) {
	            			while ( $resent_list->have_posts() ) :
	            			$resent_list->the_post(); ?>

								<div class="col-6 change_post_link" style="background: url(<?php esc_url(the_post_thumbnail_url()); ?>)no-repeat center/cover;">
									<a href="<?php esc_url(the_permalink()); ?>"><h3>Project Prev</h3></a>
									<div class="postLink_desc">
										<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard.</p>
									</div>
								</div>

						<?php endwhile; }  wp_reset_query(); ?>


					<?php 
						wp_reset_query();
	
						$resent_list = new WP_Query(array('post_type'=> 'portfolio', 'post__in' => array($allposts[$next_post]), 'order'=> 'ASC', 'posts_per_page'=> -1));
	
						if ( $resent_list->have_posts() ) {
	            			while ( $resent_list->have_posts() ) :
	            			$resent_list->the_post(); ?>

								<div class="col-6 change_post_link" style="background: url(<?php esc_url(the_post_thumbnail_url()); ?>)no-repeat center/cover;">
									<a href="<?php esc_url(the_permalink()); ?>"><h3>Project Prev</h3></a>
									<div class="postLink_desc">
										<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard.</p>
									</div>
								</div>

						<?php endwhile; }  wp_reset_query(); ?>
			</div>	
		</div>
</section>
	
<?php get_footer(); ?>