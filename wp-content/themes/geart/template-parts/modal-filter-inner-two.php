
<div class="modal fade" id="modal-filter-inner-two" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
    	   <div class="modal-header modal-header-inner">
        	   <span class="modal-header-title-inner">All Projects</span> <i class="fa fa-chevron-up" aria-hidden="true"></i>
      	    </div>
      	    <div class="modal-body">

      		    <ul class="modal-filter-list-inner">
                    <li class="filter"><a href="/portfolio-work/">All projects</a></li>
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
                        echo '<li class="filter"><a href="'. '/portfolio/' . $post_parent_name . '/' . $term->slug . '/' . '">' . $term->name . '</a></li>';                
                    endforeach;  ?>  
			    </ul>

      	    </div>			
        </div>
    </div>
</div>