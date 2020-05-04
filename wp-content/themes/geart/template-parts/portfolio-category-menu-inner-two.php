	<!-- For lavel inner pages (Design) -->

	<div class="page-nav">
		<div class="container">
			<div class="row no-gutters">
				<div class="col-12">
					<div class="page_title-inner">	
						<a href="javascript:history.back();">
							<img src="<?php bloginfo('template_directory') ?>/img/arrow-back.svg" alt="back">
						</a><span>
						<?php esc_html(the_title()); ?></span>
					</div>
			
					<div class="filter-wrap">
                        <ul class="filter-list">
                            <li id="title_filter-inner" class="filter" data-toggle="" data-target="#modal-filter-inner-two"><a href="/portfolio-work/">All Projects </a><i class="fa fa-chevron-down" aria-hidden="true"></i></li>
                        
                            <?php 
                            	$term_name = (get_queried_object()->post_name);
                            	$myTaxonomy = 'categories-portfolio';
                            	$termID = get_term_by( 'slug', $term_name, $myTaxonomy)->term_id;
                            	$termParentID = get_term($termID)->parent;
                            	$termchildren = get_term_children($termParentID, $myTaxonomy);
                                $post_parent = get_queried_object()->post_parent;
                                $post_parent_name = get_post($post_parent)->post_name;

                            foreach ($termchildren as $child) :
                                $term = get_term_by( 'id', $child, $myTaxonomy );
                                echo '<li class="filter filter_mobile"><a href="'. '/portfolio/' . $post_parent_name . '/' . $term->slug . '/' . '">' . $term->name . '</a></li>';                
                            endforeach;  ?>                  
                        </ul>
                        
					</div>

				</div>	
			</div>
		</div>
	</div>