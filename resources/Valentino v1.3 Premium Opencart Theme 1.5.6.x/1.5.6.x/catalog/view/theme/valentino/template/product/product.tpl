<?php echo $header; ?>
<div class="breadcrumb">
	<div class="container">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		<?php } ?>
	</div>
 </div>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
  
  <?php echo $content_top; ?>
  
  <div class="product-info">
  	
  	
    <?php if ($thumb || $images) { ?>
    <div class="left">  
      <?php if ($thumb) { ?>
          <div class="image">
          	<span class="zoom"></span>
            <a href="<?php echo $popup; ?>" class = 'cloud-zoom' id='zoom1' rel="">
            <img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" />
            </a>
          </div>
          <?php } ?>    
          <?php if ($images) { ?>    
          <div class="image-additional">
            <?php foreach ($images as $image) { ?>        
            <a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" class="cloud-zoom-gallery" rel="useZoom: 'zoom1', smallImage: '<?php echo $image['thumb']; ?>' ">
            <img src="<?php echo $image['thumb']; ?>"  title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
            </a>       
            <?php } ?>
          </div>      
          <?php } ?>         
    </div><!--/left-->
    <?php } ?>
    
    
    
    <div class="right">
      <h1><?php echo $heading_title; ?></h1>  
      <!-- description -->
      <div class="description">
        <?php if ($manufacturer) { ?>
        <span><?php echo $text_manufacturer; ?></span> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a><br />
        <?php } ?>
        <span><?php echo $text_model; ?></span> <?php echo $model; ?><br />
        <?php if ($reward) { ?>
        <span><?php echo $text_reward; ?></span> <?php echo $reward; ?><br />
        <?php } ?>
        <span><?php echo $text_stock; ?></span> <?php echo $stock; ?>
      </div>
      
      
      <!-- price -->
      <?php if ($price) { ?>
      <div class="price">
      	<?php echo $text_price; ?>
        <?php if (!$special) { ?>
        <?php echo $price; ?>
        <?php } else { ?>
        <span class="price-old"><?php echo $price; ?></span> <span class="price-new"><?php echo $special; ?></span>
        <br />
        <span style="color: red; font-size: 15px"><?php echo $text_save; ?> <?php echo $saving; ?>%</span>
        <?php } ?>
        <br />
        <?php if ($tax) { ?>
        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $tax; ?></span><br />
        <?php } ?>
        <?php if ($points) { ?>
        <span class="reward"><small><?php echo $text_points; ?> <?php echo $points; ?></small></span><br />
        <?php } ?>
        <?php if ($discounts) { ?>
        <br />
        <div class="discount">
          <?php foreach ($discounts as $discount) { ?>
          <?php echo sprintf($text_discount, $discount['quantity'], $discount['price']); ?><br />
          <?php } ?>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      
      
      <!-- Review -->
      <?php if ($review_status) { ?>
      <div class="review">
        <div>
        	<img src="catalog/view/theme/valentino/image/stars-<?php echo $rating; ?>.png" alt="<?php echo $reviews; ?>" />
        	<div class="revLinks">
	        	<a onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $reviews; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;
	        	<a onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $text_write; ?></a>
        	</div>
        </div>
        <div class="share">
          <!-- AddThis Button BEGIN -->
          <div class="addthis_default_style"><a class="addthis_button_compact"><?php echo $text_share; ?></a> <a class="addthis_button_email"></a><a class="addthis_button_print"></a> <a class="addthis_button_facebook"></a> <a class="addthis_button_twitter"></a></div>
          <script type="text/javascript" src="//s7.addthis.com/js/250/addthis_widget.js"></script> 
          <!-- AddThis Button END --> 
        </div>
      </div>
      <?php } ?>
      
      
      <?php if ($profiles): ?>
      <div class="option">
          <h2><span class="required">*</span><?php echo $text_payment_profile ?></h2>
          <br />
          <select name="profile_id">
              <option value=""><?php echo $text_select; ?></option>
              <?php foreach ($profiles as $profile): ?>
              <option value="<?php echo $profile['profile_id'] ?>"><?php echo $profile['name'] ?></option>
              <?php endforeach; ?>
          </select>
          <br />
          <br />
          <span id="profile-description"></span>
          <br />
          <br />
      </div>
      <?php endif; ?>
      
      
      <!-- options -->
      <?php if ($options) { ?>
      <div class="options">
        <h2><?php echo $text_option; ?></h2>
        <br />
        <?php foreach ($options as $option) { ?>
        <?php if ($option['type'] == 'select') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <select name="option[<?php echo $option['product_option_id']; ?>]">
            <option value=""><?php echo $text_select; ?></option>
            <?php foreach ($option['option_value'] as $option_value) { ?>
            <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
            <?php if ($option_value['price']) { ?>
            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
            <?php } ?>
            </option>
            <?php } ?>
          </select>
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'radio') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <?php foreach ($option['option_value'] as $option_value) { ?>
          <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
          <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
            <?php if ($option_value['price']) { ?>
            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
            <?php } ?>
          </label>
          <br />
          <?php } ?>
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'checkbox') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <?php foreach ($option['option_value'] as $option_value) { ?>
          <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
          <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
            <?php if ($option_value['price']) { ?>
            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
            <?php } ?>
          </label>
          <br />
          <?php } ?>
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'image') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <table class="option-image">
            <?php foreach ($option['option_value'] as $option_value) { ?>
            <tr>
              <td style="width: 1px;"><input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" /></td>
              <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" /></label></td>
              <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                  <?php if ($option_value['price']) { ?>
                  (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                  <?php } ?>
                </label></td>
            </tr>
            <?php } ?>
          </table>
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'text') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" />
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'textarea') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <textarea name="option[<?php echo $option['product_option_id']; ?>]" cols="40" rows="5"><?php echo $option['option_value']; ?></textarea>
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'file') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <input type="button" value="<?php echo $button_upload; ?>" id="button-option-<?php echo $option['product_option_id']; ?>" class="button">
          <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" />
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'date') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="date" />
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'datetime') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="datetime" />
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'time') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="time" />
        </div>
        <br />
        <?php } ?>
        <?php } ?>
      </div>
      <?php } ?>
      
      <!-- cart / quantity -->
      <div class="cart">
        <div>
          <div class="quantity-adder">
	          <?php echo $text_qty; ?>
	          <div class="quantityWrap">
		          <input type="text" name="quantity" class="quantity" size="2" value="<?php echo $minimum; ?>" />
		          <span class="add-up add-action">+</span> <span class="add-down add-action">ــ</span>
	          </div>
          </div>
          <input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" />        
          <input type="button" value="<?php echo $button_cart; ?>" id="button-cart" class="addToCart" />
          <span class="or">&nbsp;&nbsp;<?php echo $text_or; ?>&nbsp;&nbsp;</span>
          <ul class="links">
          	<li><a onclick="addToWishList('<?php echo $product_id; ?>');"><?php echo $button_wishlist; ?></a></li>
            <li><a class="com2" onclick="addToCompare('<?php echo $product_id; ?>');"><?php echo $button_compare; ?></a></li>
          </ul>
        </div>
        <div class="clearfix"></div>
        <?php if ($minimum > 1) { ?>
        <div class="minimum"><?php echo $text_minimum; ?></div>
        <?php } ?>
      </div>
      
    </div><!--/right-->
  </div><!--/product info-->
  
  <div class="tabsProd">
  <!-- Tabs -->
  <div id="tabs" class="htabs">
  	<h4><a href="#tab-description"><?php echo $tab_description; ?></a></h4>
    <?php if ($attribute_groups) { ?>
    <h4><a href="#tab-attribute"><?php echo $tab_attribute; ?></a></h4>
    <?php } ?>
    <?php if ($review_status) { ?>
    <h4><a href="#tab-review"><?php echo $tab_review; ?></a></h4>
    <?php } ?>
    <?php if ($products) { ?>
    <h4><a href="#tab-related"><?php echo $tab_related; ?> (<?php echo count($products); ?>)</a></h4>
    <?php } ?>
  </div>
  
  <div id="tab-description" class="tab-content"><?php echo $description; ?></div>
  <?php if ($attribute_groups) { ?>
  <div id="tab-attribute" class="tab-content">
    <table class="attribute">
      <?php foreach ($attribute_groups as $attribute_group) { ?>
      <thead>
        <tr>
          <td colspan="2"><?php echo $attribute_group['name']; ?></td>
        </tr>
      </thead>
      <tbody>
        <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
        <tr>
          <td><?php echo $attribute['name']; ?></td>
          <td><?php echo $attribute['text']; ?></td>
        </tr>
        <?php } ?>
      </tbody>
      <?php } ?>
    </table>
  </div>
  <?php } ?>
  <?php if ($review_status) { ?>
  <div id="tab-review" class="tab-content">
    
    <div class="wReview">
	    <h2 id="review-title"><?php echo $text_write; ?></h2>
	    <?php echo $entry_name; ?><br />
	    <input type="text" name="name" value="" />
	    <br />
	    <br />
	    <?php echo $entry_review; ?>
	    <textarea name="text" cols="40" rows="8" style="width: 98%;"></textarea>
	    <span style="font-size: 11px;"><?php echo $text_note; ?></span><br />
	    <br /><br />
	    <?php echo $entry_rating; ?><br /> 
	    <span style="font-size: 12px;"><?php echo $entry_bad; ?></span>&nbsp;
	    <input type="radio" name="rating" value="1" />
	    &nbsp;
	    <input type="radio" name="rating" value="2" />
	    &nbsp;
	    <input type="radio" name="rating" value="3" />
	    &nbsp;
	    <input type="radio" name="rating" value="4" />
	    &nbsp;
	    <input type="radio" name="rating" value="5" />
	    &nbsp;<span style="font-size: 12px;"><?php echo $entry_good; ?></span><br />
	    <br />
	    <b><?php echo $entry_captcha; ?></b><br />
	    <input type="text" name="captcha" value="" style="width: 150px; height: 26px; margin-top: 10px;" />&nbsp;&nbsp;<img src="index.php?route=product/product/captcha" alt="" id="captcha" /><br />
	    <br />
	     <a id="button-review" class="button"><?php echo $button_continue; ?></a>
    </div><!--/wReview-->
    <div class="reviewsList">
    	<div id="review"></div>
    </div>
  </div>
  <?php } ?>
  <?php if ($products) { ?>
  <div id="tab-related" class="tab-content">
    <div class="box-product">
      <?php foreach ($products as $product) { ?>
      <div class="singleProduct">
        <!-- Thumb -->
      	<div class="btnImgWrap">
			  <?php if ($product['thumb_swap']) { ?>
			  <div class="image">
			      <a href="<?php echo $product['href']; ?>">
			         <img oversrc="<?php echo $product['thumb_swap']; ?>" src="<?php echo $product['thumb']; ?>" 
			         title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" style="border:none"/>
			      </a>
			  </div>
			  <?php } else {?>
			  <div class="image">
			      <a href="<?php echo $product['href']; ?>">
			          <img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" 
			          alt="<?php echo $product['name']; ?>" style="border:none"/>
			      </a>
			  </div>
			  <?php } ?>
        </div>
        <div class="infoWrap">
	        <!-- name -->
	        <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
	        <!-- rating -->
	        <div class="rating"><img src="catalog/view/theme/valentino/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
	        <!-- Price -->
            <?php if ($product['price']) { ?>
            <div class="price">
              <?php if (!$product['special']) { ?>
              <?php echo $product['price']; ?>
              <?php } else { ?>
              <span class="price-old"><?php echo $product['price']; ?></span>
              <span class="price-new"><?php echo $product['special']; ?></span> 
              <span class="sale">-<?php echo $product['saving']; ?>%</span>
              <span class="saleIcon"><span class="rotate"><?php echo $text_sale ?></span></span>
              <?php } ?>
            </div>
            <?php } ?>
            <div class="clearfix"></div>
	        <!-- buttons -->
	        <input type="button" class="cartBtn" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" />
	        <ul class="btnGroup tooltip-title">
	        	<li class="wishBt"><input type="button" class="wish" onclick="addToWishList('<?php echo $product['product_id']; ?>');" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" /></li>
            	<li class="compareBt"><input type="button" class="compare" onclick="addToCompare('<?php echo $product['product_id']; ?>');" data-toggle="tooltip" title="<?php echo $button_compare; ?>" /></li>
	        </ul>
	        <div class="clearfix"></div>
        </div><!--/infoWrap-->
      </div>
      <?php } ?>
  </div>
  </div>
  <?php } ?>
  
  <?php if ($tags) { ?>
  <div class="tags">
	  <div class="row">
		    <div class="span1"><h4><?php echo $text_tags; ?></h4></div>
		    <div class="span8">
			    <div class="tagLinks">
			    <?php for ($i = 0; $i < count($tags); $i++) { ?>
			    <?php if ($i < (count($tags) - 1)) { ?>
			    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
			    <?php } else { ?>
			    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
			    <?php } ?>
			    <?php } ?>
			    </div>
		    </div>
	  </div>
  </div>
  <?php } ?>
  
  </div>
  
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$(document).ready(function() {
	$('.colorbox').colorbox({
		overlayClose: true,
		opacity: 0.5,
		rel: "colorbox"
	});
});
//--></script> 
<script type="text/javascript"><!--

$('select[name="profile_id"], input[name="quantity"]').change(function(){
    $.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name="product_id"], input[name="quantity"], select[name="profile_id"]'),
		dataType: 'json',
        beforeSend: function() {
            $('#profile-description').html('');
        },
		success: function(json) {
			$('.success, .warning, .attention, information, .error').remove();
            
			if (json['success']) {
                $('#profile-description').html(json['success']);
			}	
		}
	});
});
    
$('#button-cart').bind('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, information, .error').remove();
			
			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						$('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
					}
				}
                
                if (json['error']['profile']) {
                    $('select[name="profile_id"]').after('<span class="error">' + json['error']['profile'] + '</span>');
                }
			} 
			
			if (json['success']) {
				$('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/valentino/image/close.png" alt="" class="close" /></div>');
					
				$('.success').fadeIn('slow');
					
				$('#cart-total').html(json['total']);
				
				$('html, body').animate({ scrollTop: 0 }, 'slow'); 
			}	
		}
	});
});
//--></script>
<?php if ($options) { ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/ajaxupload.js"></script>
<?php foreach ($options as $option) { ?>
<?php if ($option['type'] == 'file') { ?>
<script type="text/javascript"><!--
new AjaxUpload('#button-option-<?php echo $option['product_option_id']; ?>', {
	action: 'index.php?route=product/product/upload',
	name: 'file',
	autoSubmit: true,
	responseType: 'json',
	onSubmit: function(file, extension) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').after('<img src="catalog/view/theme/valentino/image/loading.gif" class="loading" style="padding-left: 5px;" />');
		$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', true);
	},
	onComplete: function(file, json) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', false);
		
		$('.error').remove();
		
		if (json['success']) {
			alert(json['success']);
			
			$('input[name=\'option[<?php echo $option['product_option_id']; ?>]\']').attr('value', json['file']);
		}
		
		if (json['error']) {
			$('#option-<?php echo $option['product_option_id']; ?>').after('<span class="error">' + json['error'] + '</span>');
		}
		
		$('.loading').remove();	
	}
});
//--></script>
<?php } ?>
<?php } ?>
<?php } ?>
<script type="text/javascript"><!--
$('#review .pagination a').live('click', function() {
	$('#review').fadeOut('slow');
		
	$('#review').load(this.href);
	
	$('#review').fadeIn('slow');
	
	return false;
});			

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').bind('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#button-review').attr('disabled', true);
			$('#review-title').after('<div class="attention"><img src="catalog/view/theme/valentino/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			$('#button-review').attr('disabled', false);
			$('.attention').remove();
		},
		success: function(data) {
			if (data['error']) {
				$('#review-title').after('<div class="warning">' + data['error'] + '</div>');
			}
			
			if (data['success']) {
				$('#review-title').after('<div class="success">' + data['success'] + '</div>');
								
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').attr('checked', '');
				$('input[name=\'captcha\']').val('');
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('#tabs a').tabs();
//--></script> 
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
<script type="text/javascript"><!--
$(document).ready(function() {
	if ($.browser.msie && $.browser.version == 6) {
		$('.date, .datetime, .time').bgIframe();
	}

	$('.date').datepicker({dateFormat: 'yy-mm-dd'});
	$('.datetime').datetimepicker({
		dateFormat: 'yy-mm-dd',
		timeFormat: 'h:m'
	});
	$('.time').timepicker({timeFormat: 'h:m'});
});
//--></script> 
<?php echo $footer; ?>