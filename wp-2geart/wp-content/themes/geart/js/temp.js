$(function() {
//maps
 var latlng = new google.maps.LatLng("40.716188", "-74.006305");
 var myOptions = {
 	zoom: 12,
	center: latlng,
 	mapTypeId: google.maps.MapTypeId.ROADMAP
 };
 var map = new google.maps.Map(document.getElementById("makemap_canvas"),myOptions);
 map.scrollwheel=true;
 map.setOptions({ mapTypeControl:false});

var marker = new google.maps.Marker({
 	position: {lat: 40.716188, lng: -74.006305},
 	map: map,
 	title: '2Greart',
 	icon: {
 		url: "http://wp-2geart/wp-content/themes/geart/img/map marker.svg",
 		scaledSize: new google.maps.Size(64, 64)
 	}
 });
//END Footer tabs


$(window).bind('resize', function(){ 
	if ($(window).width() < 960) {
			$(".toggle-mnu").on('click', function() {
			$(this).toggleClass("on");
			$(".menu-wrap").toggleClass("on");
			$(".overlay-bg").toggleClass("on").css("opacity", "1");
			$("header").toggleClass("on");
			$(".logo .img-svg").attr("src", "http://wp-2geart/wp-content/themes/geart/img/logo.svg");
		});

		$(function(){ 
			var mainNav = $('.main-menu > ul > li > span');
			$('.main-menu > ul > li > ul').hide();

			$('span').click(function(e) {
				e.preventDefault();
			});

			mainNav.click(function() {
				$(this).toggleClass("active");
				$(this).siblings('ul').slideToggle();
			}); 
		}); 
	} 
	else { 
		if ($(window).width() > 960) { 
			$(".toggle-mnu").on('click', function() {
				$(this).toggleClass("in");
				$(".menu-wrap").toggleClass("in");
				$(".button.btn-big").toggleClass("in");
				return false;
			});
		}
	}
}).trigger('resize');
});