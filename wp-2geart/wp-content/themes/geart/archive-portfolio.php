<?php 

get_header(); ?>

	<main class="content mr-top">
		<div class="page-nav">
		<div class="container">
			<div class="row no-gutters">
				<div class="col-12">
					<div class="page_title">
						All Projects
					</div>
					<div class="filter-wrap">

						<ul class="filter-list">
							<li id="title_filter" class="filter filterAction_mobile"><a href="/portfolios">All projects </a><i class="fa fa-chevron-down" aria-hidden="true"></i></li>

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

						if ( have_posts() ) :
						while ( have_posts() ) :
								the_post(); ?>
								
						<div class="item-project item-project-portfolio overlay" style="background-image: url(<?php esc_url(the_post_thumbnail_url());  ?>);">
							<div class="item-project_category">
								<span>mobile app</span>
							</div>
							<div class="item-project_title">
								<?php esc_html(the_title()); ?>
							</div>
							<div class="item-project-content">
								<h3><a href="<?php esc_url(the_permalink()); ?>">Ledger App</a></h3>
								<p>Application</p>
							</div>
						</div>

					<?php 	endwhile; endif; ?>
					
				</div>
			</div>
		</section>
	</main>


<?php get_footer(); ?>