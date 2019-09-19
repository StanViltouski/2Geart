$(function() {
// fix menu
var navfix = $(".top-line"),
navHeight = $('.top-line').height();

if ($(window).scrollTop()) {
	navfix.addClass("fix").removeClass("top-line");
};

if (navfix.length) {
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		if(!$("header").hasClass("on")) {
			if (scroll < navHeight) {
				navfix.addClass("top-line");
				navfix.removeClass("fix-line");

				$(".logo .img-svg").attr("src", "http://wp-2geart/wp-content/themes/geart/img/logo.svg");
			/*
				if($("body").hasClass("is-home")) {
					$(".logo .img-svg").attr("src", "http://wp-2geart/wp-content/themes/geart/img/logo.svg");
				};
				if($("body").hasClass("project-1")) {
					$(".logo .img-svg").attr("src", "http://wp-2geart/wp-content/themes/geart/img/logo.svg");
				};	
				if($("body").hasClass("project-dark")) {
					$(".logo .img-svg").attr("src", "http://wp-2geart/wp-content/themes/geart/img/logo.svg");
				};
			*/

			};
			if (scroll > navHeight){
				navfix.addClass("fix-line");
				navfix.removeClass("top-line");
				if(!$("body").hasClass("page-inversion")) {
					$(".logo .img-svg").attr("src", "http://wp-2geart/wp-content/themes/geart/img/logo-black.svg");
				};
			};
		};
	});
};
//Toggle menu

if ($(window).width() < 960) {
	$(".toggle-mnu").on('click', function() {
		$(this).toggleClass("on");
		$(".menu-wrap").toggleClass("on");
		$(".overlay-bg").toggleClass("on").css("opacity", "1");
		$("header").toggleClass("on");
		$(".logo .img-svg").attr("src", "img/logo.svg");
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

//Slider header
var owl = $(".slider");
owl.owlCarousel({
	loop: true,
	items: 1,
	autoplay: true,
	autoplayTimeout: 8000,
	smartSpeed: 1000,
	nav: true,
	dots: false,
	navText: ["<i class='lnr lnr-chevron-left'></i>", "<i class='lnr lnr-chevron-right'></i>"]
});

if ($(window).width() < 560) { 
	var owl = $(".carousel-colors");
	owl.owlCarousel({
		loop: true,
		items: 1,
		autoplay: true,
		autoplayTimeout: 8000,
		smartSpeed: 1000,
		nav: false,
		dots: true,
		navText: ["<i class='lnr lnr-chevron-left'></i>", "<i class='lnr lnr-chevron-right'></i>"]
	});
};
//Carousel customers
var owl = $(".carousel-customers");
owl.owlCarousel({		
	loop: true,
	margin: 0,
	dots: true,
	nav: true,
	navText: ["<i class='lnr lnr-chevron-left'></i>", "<i class='lnr lnr-chevron-right'></i>"],
	responsive:{
		0:{
			items:1,
		},
		520:{
			items:2,
		},
		560:{
			items:3,
		},
		768:{
			items:4,
		},
		992:{
			items:4,
		},
		1200:{
			items:6,
		}
	}
});
//Carousel certificates
var owl = $(".carousel-certificates");
owl.owlCarousel({		
	loop: true,
	margin: 0,
	dots: true,
	nav: true,
	navText: ["<i class='lnr lnr-chevron-left'></i>", "<i class='lnr lnr-chevron-right'></i>"],
	responsive:{
		0:{
			items:2,
		},
		520:{
			items:2,
		},
		560:{
			items:3,
		},
		768:{
			items:4,
		},
		992:{
			items:5,
		},
		1200:{
			items:6,
		}
	}
});

//Carousel carousel-exemple
var owl = $(".carousel-exemples");
owl.owlCarousel({		
	loop: false,
	margin: 15,
	dots: true,
	nav: true,
	navText: ["<i class='lnr lnr-chevron-left'></i>", "<i class='lnr lnr-chevron-right'></i>"],
	responsive:{
		0:{
			items:1,
		},
		520:{
			items:1,
		},
		560:{
			items:3,
		},
		768:{
			items:3,
		},
		992:{
			items:3,
		},
		1200:{
			items:3,
		}
	}
});

// Image svg

$('.custom-svg').each(function(){
	var $img = $(this);
	var imgClass = $img.attr('class');
	var imgURL = $img.attr('src');
	$.get(imgURL, function(data) {
		var $svg = $(data).find('svg');
		if(typeof imgClass !== 'undefined') {
			$svg = $svg.attr('class', imgClass+' replaced-svg');
		}
		$svg = $svg.removeAttr('xmlns:a');
		if(!$svg.attr('viewBox') && $svg.attr('height') && $svg.attr('width')) {
			$svg.attr('viewBox', '0 0 ' + $svg.attr('height') + ' ' + $svg.attr('width'))
		}
		$img.replaceWith($svg);
	}, 'xml');
});

//Select

$('select').styler();

var items_el = document.getElementById('portfolio-grid');

$("#filter").on("change", function(){
	console.log(this.value);
	var items = items_el.getElementsByClassName('all');
	for (var i=0; i<items.length; i++) {
		if (items[i].classList.contains(this.value)) {
			items[i].style.display = 'block';
		} else {
			items[i].style.display = 'none';
		}
	}
});

$("select[name='portfolio']").on("change", function(){
	var mynumber=jQuery("select[name='portfolio'] option:selected").index();
	$(".filter_div").slideUp();
	$("#controls" + mynumber).slideDown();
});

$("#portfolio-grid").mixItUp();

$(".s-projects li").click(function() {
	$(".s-projects li").removeClass("active");
	$(this).addClass("active");
});

$("#services-grid").mixItUp({
	animation: {
		enable: true,
		effects: 'scale fade',
		duration: 2000
	},
	load: {
		filter:'.all',
	}
});

$(".s-services li").click(function() {
	$(".s-services li").removeClass("active");
	$(this).addClass("active");
});

//Swiper Team
var swiper = new Swiper('.swiper-container', {
	direction: 'vertical',
	slidesPerView: 1,
	mousewheel: true,	
	// effect: 'fade',
	navigation: {
		nextEl: '.swiper-next',
		prevEl: '.swiper-prev',
	},
});

//Footer tabs
$.fn.lightTabs = function(options){
	var createTabs = function(){
		tabs = this;
		i = 0;
		showPage = function(i){
			$(tabs).children("div").children("div").hide();
			$(tabs).children("div").children("div").eq(i).show();
			$(tabs).children("ul").children("li").removeClass("active");
			$(tabs).children("ul").children("li").eq(i).addClass("active");
		}
		showPage(0);				
		$(tabs).children("ul").children("li").each(function(index, element){
			$(element).attr("data-page", i);
			i++;                        
		});
		$(tabs).children("ul").children("li").click(function(){
			showPage(parseInt($(this).attr("data-page")));
		});				
	};		
	return this.each(createTabs);
};	
$(document).ready(function(){
	$(".tabs").lightTabs();
}); 

// Contact tabs

var active = 'map_1';
$(window).bind('resize', function(){ 
	if ($(window).width() > 990) {
		$('.link').click(function(e){
			e.preventDefault();
			var id = $(this).attr('data-page');
			$('.link').removeClass('active');
			$('.link').removeClass('custom-active');
			$(this).addClass('active');

			$('#'+active).addClass('none');
			$('#'+id).removeClass('none');
			active = id;
		});
	}	else { 
		if ($(window).width() < 990) { 
			$('.link a').click(function(e){
				e.preventDefault();
				var id = $(this).attr('href');
				$('.link').removeClass('custom-active');
				$('.link').removeClass('active');
				$(this).toggleClass('on');
				$('#'+id).slideToggle('maps').css("opacity", "1");
				$('#'+id+'-li').toggleClass('up');
				if($(this).hasClass('on')){
					$(this).text('Hide Maps');
				}else{
					$(this).text('Sow Maps');
				}
			});
			return false;

		}
		return false;
	}
}).trigger('resize');

//E-mail Ajax Send
$("form.callback").submit(function() {
	var th = $(this);
	$.ajax({
		type: "POST",
		url: "/mail.php", //Change
		data: th.serialize()
	}).done(function() {
		$(th).find('.success').addClass('active').css("display", "flex").hide().fadeIn();
		setTimeout(function() {
			$(th).find('.success').removeClass('active').fadeOut();
			th.trigger("reset");
		}, 1500);
	});
	return false;
});

$("form.review").submit(function() {
	var th = $(this);
	$.ajax({
		type: "POST",
		url: "/mail.php", //Change
		data: th.serialize()
	}).done(function() {
		window.location = "/form-send.html";
	});
	return false;
});

});
