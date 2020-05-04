
/*Services/Portfolio Modal*/

(function() {

	var widthWindow = $(window).innerWidth();

	(widthWindow <= 767) ?
		$('#title_filter-inner, #title_filter, #service_title_filter').attr('data-toggle', 'modal') :
		$('#title_filter-inner, #title_filter, #service_title_filter').attr('data-toggle', '')

}());


$(window).on('resize', function() {

		var widthWindow = $(window).innerWidth();

		(widthWindow <= 767) ?
			$('#title_filter-inner, #title_filter, #service_title_filter').attr('data-toggle', 'modal') :
			$('#title_filter-inner, #title_filter, #service_title_filter').attr('data-toggle', '')
	});


/*Certificates Modal*/

(function() {

	$('.carousel-certificates-item').on('click', function(){
		
		var img_url = $(this).attr('data-certificate');
		$('#certificate_img img').attr('src', img_url);

	})

}());


/*Close Modal*/

(function() {
	$('.modal-header, .modal-content-certificate .button_close i').on('click', function() {
			$("#modal-certificate, #modal-filter-portf, #service-design-modal, #service-inner-modal, #modal-filter-inner-one, #modal-filter-inner-two").click();
		})
}());