$(document).ready(function(){

/* clearfix for Horizontal Category Menu */
$screensize = $(window).width();
    if ($screensize > 1199) {
        $('#menu .nav > li.categories_hor > div > .column:nth-child(6n)').after('<div class="clearfix visible-lg-block"></div>');
    }
    if ($screensize < 1199) {
        $('#menu .nav > li.categories_hor > div > .column:nth-child(4n)').after('<div class="clearfix visible-lg-block visible-md-block"></div>');
    }
$( window ).resize(function() {
    $screensize = $(window).width();
    if ($screensize > 1199) {
        $("#menu .nav > li.categories_hor > div .clearfix.visible-lg-block").remove();
        $('#menu .nav > li.categories_hor > div > .column:nth-child(6n)').after('<div class="clearfix visible-lg-block"></div>');
    } 
    if ($screensize < 1199) {
        $("#menu .nav > li.categories_hor > div .clearfix.visible-lg-block").remove();
        $('#menu .nav > li.categories_hor > div > .column:nth-child(4n)').after('<div class="clearfix visible-lg-block visible-md-block"></div>');
    }
});
/* clearfix for Brand Menu */
$screensize = $(window).width();
    if ($screensize > 1199) {
        $('#menu .nav > li.menu_brands > div > div:nth-child(12n)').after('<div class="clearfix visible-lg-block"></div>');
    }
    if ($screensize < 1199) {
        $('#menu .nav > li.menu_brands > div > div:nth-child(6n)').after('<div class="clearfix visible-lg-block visible-md-block"></div>');
    }
    if ($screensize < 991) {
		$("#menu .nav > li.menu_brands > div > .clearfix.visible-lg-block").remove();
        $('#menu .nav > li.menu_brands > div > div:nth-child(4n)').after('<div class="clearfix visible-lg-block visible-sm-block"></div>');
		$('#menu .nav > li.menu_brands > div > div:last-child').after('<div class="clearfix visible-lg-block visible-sm-block"></div>');
    }
	if ($screensize < 767) {
		$("#menu .nav > li.menu_brands > div > .clearfix.visible-lg-block").remove();
        $('#menu .nav > li.menu_brands > div > div:nth-child(2n)').after('<div class="clearfix visible-lg-block visible-xs-block"></div>');
		$('#menu .nav > li.menu_brands > div > div:last-child').after('<div class="clearfix visible-lg-block visible-xs-block"></div>');
    }

$( window ).resize(function() {
    $screensize = $(window).width();
    if ($screensize > 1199) {
        $("#menu .nav > li.menu_brands > div > .clearfix.visible-lg-block").remove();
        $('#menu .nav > li.menu_brands > div > div:nth-child(12n)').after('<div class="clearfix visible-lg-block"></div>');
    } 
    if ($screensize < 1199) {
        $("#menu .nav > li.menu_brands > div > .clearfix.visible-lg-block").remove();
        $('#menu .nav > li.menu_brands > div > div:nth-child(6n)').after('<div class="clearfix visible-lg-block visible-md-block"></div>');
    }
	if ($screensize < 991) {
        $("#menu .nav > li.menu_brands > div > .clearfix.visible-lg-block").remove();
        $('#menu .nav > li.menu_brands > div > div:nth-child(4n)').after('<div class="clearfix visible-lg-block visible-sm-block"></div>');
		$('#menu .nav > li.menu_brands > div > div:last-child').after('<div class="clearfix visible-lg-block visible-sm-block"></div>');
    }
	if ($screensize < 767) {
        $("#menu .nav > li.menu_brands > div > .clearfix.visible-lg-block").remove();
        $('#menu .nav > li.menu_brands > div > div:nth-child(4n)').after('<div class="clearfix visible-lg-block visible-xs-block"></div>');
		$('#menu .nav > li.menu_brands > div > div:last-child').after('<div class="clearfix visible-lg-block visible-xs-block"></div>');
    }
});


/*`Scroll to top */
$(function () {
		$(window).scroll(function () {
			if ($(this).scrollTop() > 150) {
				$('#back-top').fadeIn();
			} else {
				$('#back-top').fadeOut();
			}
		});
		});
jQuery('.backtotop').click(function(){
	jQuery('html, body').animate({scrollTop:0}, 'slow');
});



/******** Menu Show Hide Sub Menu ********/
$('#menu .nav > li').mouseover(function() {
			$screensize = $(window).width();
			if ($screensize > 991) {
			$(this).find('> div').stop(true, true).slideDown('fast');
			}			
			$(this).bind('mouseleave', function() {
				$screensize = $(window).width();
			if ($screensize > 991) {
				$(this).find('> div').stop(true, true).css('display', 'none');
			}
		});});

$('#menu .nav > li.categories > div > .column, #menu .nav > li div > ul > li').mouseover(function() {
			$screensize = $(window).width();
			if ($screensize > 991) {
			$(this).find('> div').css('display', 'block');
			}			
			$(this).bind('mouseleave', function() {
				$screensize = $(window).width();
			if ($screensize > 991) {
				$(this).find('> div').css('display', 'none');
			}
		});});

$('#menu .nav > li > div').closest("li").addClass('sub');

/******** Navigation Menu ********/
$('#menu .navbar-header > span').click(function () {
	  $(this).toggleClass("active");  
	  $("#menu .navbar-collapse").slideToggle('medium');
	});

$('#menu .nav > li > div > .column > div, .submenu, #menu .nav > li > div').before('<span class="submore"></span>');
		$('span.submore').click(function () {
			$(this).next().slideToggle('fast');
			$(this).toggleClass('plus');
				});

/******** plus mines button in qty ********/
$(".qtyBtn").click(function(){
		if($(this).hasClass("plus")){
			var qty = $("#qty").val();
			qty++;
			$("#qty").val(qty);
		}else{
			var qty = $("#qty").val();
			qty--;
			if(qty>0){
				$("#qty").val(qty);
			}
		}
	});	

/******** Language and Currency Dropdowns ********/
$('#currency, #language').hover(function() {
    $(this).find('ul').stop(true, true).slideDown('fast');
  },function() {
    $(this).find('ul').stop(true, true).css('display', 'none');
  });



$('.drop-icon').click(function () {
	  //$(this).toggleClass("active");  
	  $('#header .htop').find('.left-top').slideToggle('fast');
	});


$('.wrap_custom_block').mouseover(function() {
			$(this).find('> .custom_block').slideDown('fast');
			$(this).bind('mouseleave', function() {
				$(this).find('> .custom_block').css('display', 'none');
			});
		});
/*************************/
});