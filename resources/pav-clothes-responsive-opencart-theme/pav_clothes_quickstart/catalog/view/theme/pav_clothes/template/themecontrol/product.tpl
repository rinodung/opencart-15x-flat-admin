<?php echo $header;  $config = $this->registry->get('config');  ?>
<style type="text/css">
	#footer,#powered, #pavo-mass-bottom, #header,.products-related,.tabs-group,.product-box-bottom,#sidebar-right,#page .show-mobile > div,.product-info .product-action .wishlist,.product-info .product-action .compare,.product-info .review{
		display: none;
	}
	#sys-notification{
		padding-top:30px;
	}
</style>
<?php 
	$themeConfig = (array)$config->get('themecontrol');
	$productConfig = array(  	  
		'product_enablezoom'         => 1,
		'product_zoommode'           => 'basic',
		'product_zoomeasing'         => 1,
		'product_zoomlensshape'      => "round",
		'product_zoomlenssize'       => "150",
		'product_zoomgallery'        => 0,
		'enable_product_customtab'   => 0,
		'product_customtab_name'     => '',
		'product_customtab_content'  => '',
		'product_related_column'     => 0,        
	);
	$productConfig 		            = array_merge( $productConfig, $themeConfig );   

	$SPAN[0] = 0;
	$SPAN[1] = 12;
	$SPAN[2] = 0;   
?>
   <section id="sidebar-main" class="col-md-<?php echo $SPAN[1];?>">
   	<div id="content">        
        <?php require( PAVO_THEME_DIR."/template/product/product_detail_hitech.tpl" );  ?>
    </div>
   </section> 
<script type="text/javascript">
    $(document).ready(function() {
     $( "#notification" ).delegate( "a", "click", function() {
      window.parent.location = $(this).attr('href');
      return false;
     });
     $(".alert a").each(function(){
      $(this).click(function(){
        if($(this).children('img').length==0){
         window.parent.location = $(this).attr('href');
        return false;
        }
       });
     });
    }); 
</script>

<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			
			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));
						
						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}
				
				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}
				
				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}
			
			if (json['success']) {
				$('#notification').html('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
				$('#cart-total', window.parent.document ).html(json['total']);
				
				$('html, body').animate({ scrollTop: 0 }, 'slow');
				
				$('#cart > ul', window.parent.document).load('index.php?route=common/cart/info ul li');
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;
	
	$('#form-upload').remove();
	
	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');
	
	$('#form-upload input[name=\'file\']').trigger('click');
	
	$('#form-upload input[name=\'file\']').on('change', function() {
		$.ajax({
			url: 'index.php?route=tool/upload',
			type: 'post',
			dataType: 'json',
			data: new FormData($(this).parent()[0]),
			cache: false,
			contentType: false,
			processData: false,
			beforeSend: function() {
				$(node).button('loading');
			},
			complete: function() {
				$(node).button('reset');
			},
			success: function(json) {
				$('.text-danger').remove();
				
				if (json['error']) {
					$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
				}
				
				if (json['success']) {
					alert(json['success']);
					
					$(node).parent().find('input').attr('value', json['code']);
				}
			},
			error: function(xhr, ajaxOptions, thrownError) {
				alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});
	});
});
//--></script> 
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
  e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
			$('#captcha').attr('src', 'index.php?route=tool/captcha#'+new Date().getTime());
			$('input[name=\'captcha\']').val('');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();
			
			if (json['error']) {
				$('#review-form  form').before('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}
			
			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');
				
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
				$('input[name=\'captcha\']').val('');
			}
		}
	});
});

$(document).ready(function() { 
	$('.image a').click(
		function(){  
			$.magnificPopup.open({
			  items: {
			    src:  $('img',this).attr('src')
			  },
			  type: 'image'
			});	
			return false;
		}
	);
});
//--></script> 
<?php if( $productConfig['product_enablezoom'] ) { ?>
<script type="text/javascript" src=" catalog/view/javascript/jquery/elevatezoom/elevatezoom-min.js"></script>
<script type="text/javascript">
		var zoomCollection = '<?php echo $productConfig["product_zoomgallery"]=="basic"?".product-image-zoom":"#image";?>';
		$( zoomCollection ).elevateZoom({
		<?php if( $productConfig['product_zoommode'] != 'basic' ) { ?>
		zoomType        : "<?php echo $productConfig['product_zoommode'];?>",
		<?php } ?>
		lensShape : "<?php echo $productConfig['product_zoomlensshape'];?>",
		lensSize    : <?php echo (int)$productConfig['product_zoomlenssize'];?>,
		easing:true,
		gallery:'image-additional-carousel',
		cursor: 'pointer',
		galleryActiveClass: "active"
	});
 
</script>
<?php } ?>
</body></html>