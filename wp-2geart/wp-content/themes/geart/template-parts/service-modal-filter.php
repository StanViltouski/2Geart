
<div class="modal fade" id="service-design-modal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
    	   <div class="modal-header modal-header-inner">
        	   <span class="modal-header-title-inner">All Projects</span> <i class="fa fa-chevron-up" aria-hidden="true"></i>
      	    </div>
      	    <div class="modal-body">

      		    <ul class="modal-filter-list-inner">
                    <li class="filter"><a href="/services">All services</a></li>
				    <?php 

					    $term_name = (get_queried_object()->post_name);
					    $myTaxonomy = 'services-page';
					    $termID = get_term_by( 'slug', $term_name, $myTaxonomy)->term_id;
					    $termchildren = get_term_children( $termID, $myTaxonomy);
		
					    foreach ($termchildren as $child) :
                            $term = get_term_by( 'id', $child, $myTaxonomy );
                            echo '<li class="filter"><a href="'. '/' . $term->slug . '">' . $term->name . '</a></li>';                    
                        endforeach;  
                    ?>
			    </ul>

      	    </div>			
        </div>
    </div>
</div>
