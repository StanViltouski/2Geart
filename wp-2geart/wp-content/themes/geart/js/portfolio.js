(function() {

	$(window).on('resize', function(){

	var widthWindow = $(window).innerWidth();

	if(widthWindow <= 767) {
		$('#title_filter-inner').attr('data-toggle', 'modal');
		$('#title_filter').attr('data-toggle', 'modal');
	} else {
		$('#title_filter-inner').attr('data-toggle', '');
		$('#title_filter').attr('data-toggle', '');
	}

	})

}());
