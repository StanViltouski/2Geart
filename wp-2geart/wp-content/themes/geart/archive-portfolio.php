<?php 
/**
* Template name: Archive Portfolio
*/
get_header(); ?>

<main class="content mr-top">

	<div class="page-nav">
		<div class="container">
			<div class="row no-gutters">
				<div class="col-12">

					<div class="page_title">All Projects</div>

					<div class="filter-wrap">
						<ul class="filter-list">
							<li id="title_filter" class="filter filterAction_mobile" data-toggle="modal" data-target="#modal-filter-portf"><a href="/portfolios" style="color: #febb16;">All projects </a><i class="fa fa-chevron-down" aria-hidden="true"></i></li>

							<?php $wcatTerms = get_terms('categories-portfolio', 
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

	<section id="portfolio" class="s-projects s-projects_portfolio clearfix">
		<div class="container-fluid">
			<div id="portfolio-grid">

					
				<?php  
                    wp_reset_query();
        
                    $resent_list = new WP_Query(array('post_type'=> 'portfolio', 'order'=> 'ASC', 'posts_per_page'=> -1));

                    if ( $resent_list->have_posts() ) :
                       	while ( $resent_list->have_posts() ) :
                          		$resent_list->the_post(); ?>
								
						<div class="item-project item-project-portfolio overlay" style="background-image: url(<?php esc_url(the_post_thumbnail_url()); ?>);">
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
								<h3><a href="<?php esc_url(the_permalink()); ?>">Ledger App</a></h3>
								<p>Application</p>
							</div>
						</div>

					<?php  endwhile; endif;  wp_reset_query(); ?>
					
			</div>
		</div>
	</section>
</main>



<!-- Modal -->


<div class="modal fade" id="modal-filter-portf" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">

            <div class="modal-header modal-header-portf">
                <span class="modal-header-title">All Projects</span><i class="fa fa-chevron-up" aria-hidden="true"></i>
            </div>

            <div class="modal-body">
                <ul class="modal-filter-list">
                    <?php $wcatTerms = get_terms('categories-portfolio', 
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