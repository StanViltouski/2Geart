
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
    	<div class="modal-header">
        	All Projects <i class="fa fa-chevron-up" aria-hidden="true"></i>
      	</div>
      	 <div class="modal-body">

      		  <ul class="modal-filter-list-inner">
              <li class="filter"><a href="/portfolios">All projects</a></li>
				      <?php 

					     $term_name = (get_queried_object()->post_name);
					     $myTaxonomy = 'categories-portfolio';
					     $termID = get_term_by( 'slug', $term_name, $myTaxonomy)->term_id;
					     $termchildren = get_term_children( $termID, $myTaxonomy);
		
					      foreach ($termchildren as $child) :
                  $term = get_term_by( 'id', $child, $myTaxonomy );
                  echo '<li class="filter"><a href="'. '/' . $term->slug . '">' . $term->name . '</a></li>';
                    
                endforeach;  ?>
			       </ul>

      	</div>			
    </div>
  </div>
</div>