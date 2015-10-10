// Collapse function ready
// =========================
$('.collapse').on('hidden', function () {
  // do something…
})
// collapse panel icons change
// =========================
$('.collapse').on('show', function(){
    $(this).parent().find(".fa-plus-square").removeClass("fa-plus-square").addClass("fa-minus-square");
}).on('hide', function(){
    $(this).parent().find(".fa-minus-square").removeClass("fa-minus-square").addClass("fa-plus-square");
});
//tooltip
//====================
$('.tooltip-title').tooltip({
  selector: "a[data-toggle=tooltip], li[data-toggle=tooltip], , input[data-toggle=tooltip]"
})
$('.tooltip').tooltip();
//simple swap
//====================
function SimpleSwap(el,which){
  el.src=el.getAttribute(which || "origsrc");
}
function SimpleSwapSetup(){
  var x = document.getElementsByTagName("img");
  for (var i=0;i<x.length;i++){
	var oversrc = x[i].getAttribute("oversrc");
	if (!oversrc) continue;
	x[i].oversrc_img = new Image();
	x[i].oversrc_img.src=oversrc;
	x[i].onmouseover = new Function("SimpleSwap(this,'oversrc');");
	x[i].onmouseout = new Function("SimpleSwap(this);");
	x[i].setAttribute("origsrc",x[i].src);
  }
}
var PreSimpleSwapOnload =(window.onload)? window.onload : function(){};
window.onload = function(){PreSimpleSwapOnload(); SimpleSwapSetup();};

// responsive slides (bx slider) for more options visit http://bxslider.com/options
//====================
$(document).ready(function(){
  $('.slider6').bxSlider({
    slideWidth: 170,
    minSlides: 1,
      maxSlides: 4,
    moveSlides: 4,
    slideMargin: 30,
  });
  $('.slider7').bxSlider({
    slideWidth: 270,
    minSlides: 1,
      maxSlides: 4,
    moveSlides: 4,
    slideMargin: 30,
  });
  $('.slider8').bxSlider({
    slideWidth: 270,
    minSlides: 1,
    maxSlides: 4,
    moveSlides: 4,
    slideMargin: 30,
  });
  $('.slider9').bxSlider({
    slideWidth: 270,
    minSlides: 1,
    maxSlides: 4,
    moveSlides: 4,
    slideMargin: 30,
  });
});
// Latest by products tabs
//====================
var slidertabs =[];
$.each($('.slidertabs'),function(i,v){
var rel=$(this).attr("rel");
	slidertabs[rel]=$('.slidertabs'+rel).bxSlider({
	slideWidth: 270,
	minSlides: 1,
	maxSlides: 4,
	moveSlides: 1,
	slideMargin: 30,
	});
});
$('#myTab a').click(function (e) {
	e.preventDefault();
	var rel=$(this).attr("rel");
	if($('.slidertabs'+rel).length > 0)
	slidertabs[rel].destroySlider();
	$(this).tab('show');
	if($('.slidertabs'+rel).length > 0){
	slidertabs[rel]=$('.slidertabs'+rel).bxSlider({
	slideWidth: 270,
	minSlides: 1,
	maxSlides: 4,
	moveSlides: 1,
	slideMargin: 30,
	});
	}
});
// Quantity adder
//===================
$(".quantity-adder .add-action").click( function(){
	if( $(this).hasClass('add-up') ) {  
		$("[name=quantity]",'.quantity-adder').val( parseInt($("[name=quantity]",'.quantity-adder').val()) + 1 );
	}else {
		if( parseInt($("[name=quantity]",'.quantity-adder').val())  > 1 ) {
			$("input",'.quantity-adder').val( parseInt($("[name=quantity]",'.quantity-adder').val()) - 1 );
		}
	}
} );
// Camera slideshow
//===================
jQuery(function(){		
	jQuery('#camera_wrap_1').camera({
		height: '50%',
		thumbnails: true,
		mobileAutoAdvance: true
	});
});