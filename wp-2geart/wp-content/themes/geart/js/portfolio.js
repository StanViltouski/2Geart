(function() {

$('.menu-portfolio-category-container li:eq(0)').addClass('filterAction_mobile').attr('id', 'button_filter');
$('.menu-portfolio-category-container li a:eq(0)').after('<i class="fa fa-chevron-down" aria-hidden="true"></i>');
$('.menu-portfolio-category-container li').addClass('filter');
$(".menu-portfolio-category-container li:not(:first)").addClass('filter_mobile');

	$('.filterAction_mobile').on('click', function(){

		var widthWindow = $(window).innerWidth(),
			showBlock = $('.filter-list .filter_mobile'),
			chevron = $('.filterAction_mobile i');

		if(widthWindow <= 767) {

			if (!showBlock.hasClass('act')) {

				$(showBlock).slideDown(200).addClass('act');
				$(chevron).css({
					'transform' : 'rotate(-180deg)',
					'transition' : '0.2s'
				})

				$(this).css({
					'padding' : '15px 0 20px 0',
					'borderBottom' : '1px solid #cbcbcb',
				})

				$('.filter-list').css({
					'position' : 'relative',
					'width' : '95%',
					'margin' : '5px auto 25px',
					'borderRadius' : '7px',
					'boxShadow' : '0 2px 10px 0 rgba(0, 0, 0, 0.2)',
					'zIndex': '99',
					'transition' : '0.2s',
				})

			} else { 

				$(showBlock).slideUp(200).removeClass('act');
				$(chevron).css({
					'transform' : 'rotate(0deg)',
					'transition' : '0.2s',
				}) 

				$(this).css({
					'padding' : '0px',
					'borderBottom' : 'none',
				})

				$('.filter-list').css({
					'position' : 'inherit',
					'width' : '100%',
					'margin' : '0',
					'borderRadius' : 'none',
					'boxShadow' : 'none',
					'zIndex': 'none',
					'transition' : '0.2s',
				})
			}

			
		}

		})
}());
