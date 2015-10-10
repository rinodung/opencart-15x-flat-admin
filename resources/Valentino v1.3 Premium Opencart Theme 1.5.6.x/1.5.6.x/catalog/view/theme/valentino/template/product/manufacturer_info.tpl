<?php echo $header; ?>
<div class="breadcrumb">
    <div class="container">
	    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
	    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
	    <?php } ?>
    </div>
</div>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <h1><?php echo $heading_title; ?></h1>
  <?php if ($products) { ?>
  <div class="product-filter">
  	
  	<div class="sort"><?php echo $text_sort; ?>
      <select onchange="location = this.value;">
        <?php foreach ($sorts as $sorts) { ?>
        <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
        <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
    </div>
    <div class="limit"><?php echo $text_limit; ?>
      <select onchange="location = this.value;">
        <?php foreach ($limits as $limits) { ?>
        <?php if ($limits['value'] == $limit) { ?>
        <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
    </div>
    <div class="product-compare"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></div>
    <div class="display"><?php echo $text_display; ?><?php echo $text_list; ?> / <a onclick="display('grid');"><?php echo $text_grid; ?></a></div>
  </div>
  
  <!-- Product List / Grid -->
  <div class="row">
  <div class="product-list">
    <?php foreach ($products as $product) { ?>
    <div class="ifList">
      <!-- Image -->
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
     <!-- Name -->
     <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
     <!-- Description --> 
     <div class="description"><?php echo $product['description']; ?></div>
     <!-- Rating --> 
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
        <div class="clearfix"></div>
        <?php if ($product['tax']) { ?>
        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
        <?php } ?>
      </div>
      <?php } ?>
      
      <ul class="btnGroup tooltip-title">
	    	<li class="cartBt"><a class="cartBtn" onclick="addToCart('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></a></li>
	    	<li class="wishBt"><a class="wish" onclick="addToWishList('<?php echo $product['product_id']; ?>');" title="<?php echo $button_wishlist; ?>" data-toggle="tooltip"></a></li>
	    	<li class="compareBt"><a class="compare" onclick="addToCompare('<?php echo $product['product_id']; ?>');" title="<?php echo $button_compare; ?>" data-toggle="tooltip"></a></li>
	  </ul>
	  
      </div><!-- /infoWrap -->
    </div><!--/span3-->
    <?php } ?>
  </div>
  </div>
  <div class="pagination"><?php echo $pagination; ?></div>
  <?php } else { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php }?>
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
function display(view) {
	if (view == 'list') {
		$('.product-grid').attr('class', 'product-list');
		
		$('.product-list > div').each(function(index, element) {
			html = '<div>';
				html += '<div class="left">';
					html += '<div class="btnImgWrap">';
					//image
					var image = $(element).find('.image').html();
					if (image != null) { 
						html += '<div class="image">' + image + '</div>';
					}
					html += '</div>';
				html += '</div>';//end left
				
				html += '<div class="right">';
					//name
					html += '  <div class="name">' + $(element).find('.name').html() + '</div>';
					//description
					html += '  <div class="description">' + $(element).find('.description').html() + '</div>';
					//rating
					var rating = $(element).find('.rating').html();
					if (rating != null) {
						html += '<div class="rating">' + rating + '</div>';
					}
					//price
					var price = $(element).find('.price').html();
					if (price != null) {
						html += '<div class="price">' + price  + '</div>';
					}
					//buttons
					html += '<ul class="btnGroup tooltip-title">';
					html += '  <li class="cartBt">' + $(element).find('.cartBt').html() + '</li>';
					html += '  <li class="wishBt">' + $(element).find('.wishBt').html() + '</li>';
					html += '  <li class="compareBt">' + $(element).find('.compareBt').html() + '</li>';
					html += '</ul>';
					//END	
				html += '</div>';//end right
			html += '</div>';
			$(element).html(html);
		});		
		
		$('.display').html('<b><?php echo $text_display; ?></b> <div class="display_list"><?php echo $text_list; ?></div> <div class="display_grid"><a  onclick="display(\'grid\');" title="<?php echo $text_grid; ?>"></a></div>');
		
		$.totalStorage('display', 'list'); 
	} else {
		$('.product-list').attr('class', 'product-grid');
		
		$('.product-grid > div').each(function(index, element) {
			html = '';
			
			//image
			html += '<div class="btnImgWrap">';
				var image = $(element).find('.image').html();
				if (image != null) {
					html += '<div class="image">' + image + '</div>';
				}
			html += '</div>';
			html += '<div class="infoWrap">';
			//name
			html += '<div class="name">' + $(element).find('.name').html() + '</div>';
			//description
			html += '<div class="description">' + $(element).find('.description').html() + '</div>';
			//rating
			var rating = $(element).find('.rating').html();
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}
			//price
			var price = $(element).find('.price').html();
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
			//buttons
			html += '<ul class="btnGroup tooltip-title">';
			html += '  <li class="cartBt">' + $(element).find('.cartBt').html() + '</li>';
			html += '  <li class="wishBt">' + $(element).find('.wishBt').html() + '</li>';
			html += '  <li class="compareBt">' + $(element).find('.compareBt').html() + '</li>';
			html += '</ul>';
			html += '</div>';
			//end
			html += '</div>';
			
			$(element).html(html);
		});	
					
		$('.display').html('<b><?php echo $text_display; ?></b> <div class="display_list"><a onclick="display(\'list\');"  title="<?php echo $text_list; ?>"></a></div> <div class="display_grid"><?php echo $text_grid; ?></div>');
		
		$.totalStorage('display', 'grid');
	}
}

view = $.totalStorage('display');

if (view) {
	display(view);
} else {
	display('grid');
}
//--></script> 
<?php echo $footer; ?>