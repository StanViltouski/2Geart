
<div class="modal fade" id="example" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <ul class="filter-list filter-list-modal">
          <li id="title_filter" class="filter filter-modal filterAction_mobile" data-toggle="modal" data-target="#example"><a href="/portfolios" >All projects </a><i class="fa fa-chevron-down" aria-hidden="true"></i></li>

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