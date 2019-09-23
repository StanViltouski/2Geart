/*
(function() {

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
					'borderBottom' : '1px solid #cbcbcb',
					'marginBottom' : '20px',
				})

				$('.filter-list').css({
					'position' : 'relative',
					'width' : '95%',
					'padding': '0 10px 20px 10px',
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
					'borderBottom' : 'none',
					'marginBottom' : '0px',
				})

				$('.filter-list').css({
					'position' : 'inherit',
					'width' : '',
					'padding': '0 25px',
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
*/

(function() {

	$(window).on('resize', function(){

	var widthWindow = $(window).innerWidth();

	if(widthWindow <= 767) {
		$('#title_filter-inner').attr('data-toggle', 'modal');
	} else {$('#title_filter-inner').attr('data-toggle', '');}

	})

}());
