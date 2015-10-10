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
  <b><?php echo $text_critea; ?></b>
  <div class="content">
    <p><?php echo $entry_search; ?>
      <?php if ($search) { ?>
      <input type="text" name="search" value="<?php echo $search; ?>" />
      <?php } else { ?>
      <input type="text" name="search" value="<?php echo $search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '000000'" style="color: #999;" />
      <?php } ?>
      <select name="category_id">
        <option value="0"><?php echo $text_category; ?></option>
        <?php foreach ($categories as $category_1) { ?>
        <?php if ($category_1['category_id'] == $category_id) { ?>
        <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
        <?php } ?>
        <?php foreach ($category_1['children'] as $category_2) { ?>
        <?php if ($category_2['category_id'] == $category_id) { ?>
        <option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
        <?php } ?>
        <?php foreach ($category_2['children'] as $category_3) { ?>
        <?php if ($category_3['category_id'] == $category_id) { ?>
        <option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
        <?php } ?>
        <?php } ?>
        <?php } ?>
        <?php } ?>
      </select>
      <?php if ($sub_category) { ?>
      <input type="checkbox" name="sub_category" value="1" id="sub_category" checked="checked" />
      <?php } else { ?>
      <input type="checkbox" name="sub_category" value="1" id="sub_category" />
      <?php } ?>
      <label for="sub_category"><?php echo $text_sub_category; ?></label>
    </p>
    <?php if ($description) { ?>
    <input type="checkbox" name="description" value="1" id="description" checked="checked" />
    <?php } else { ?>
    <input type="checkbox" name="description" value="1" id="description" />
    <?php } ?>
    <label for="description"><?php echo $entry_description; ?></label>
  </div>
  <div class="buttons">
    <div class="right"><input type="button" value="<?php echo $button_search; ?>" id="button-search" class="button" /></div>
  </div>
  <h2><?php echo $text_search; ?></h2>
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
  <?php }?>
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$('#content input[name=\'search\']').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('select[name=\'category_id\']').bind('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').attr('disabled', 'disabled');
		$('input[name=\'sub_category\']').removeAttr('checked');
	} else {
		$('input[name=\'sub_category\']').removeAttr('disabled');
	}
});

$('select[name=\'category_id\']').trigger('change');

$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';
	
	var search = $('#content input[name=\'search\']').attr('value');
	
	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}

	var category_id = $('#content select[name=\'category_id\']').attr('value');
	
	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}
	
	var sub_category = $('#content input[name=\'sub_category\']:checked').attr('value');
	
	if (sub_category) {
		url += '&sub_category=true';
	}
		
	var filter_description = $('#content input[name=\'description\']:checked').attr('value');
	
	if (filter_description) {
		url += '&description=true';
	}

	location = url;
});

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