<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
       <h1><?php echo $heading_title; ?></h1>
        <div class="box-content">
        <?php if ($column_left && $column_right) { ?>
  <script>
$(document).ready(function(){
$screensize = $(window).width();
    if ($screensize > 1199) {
        $('.category-list > div:nth-child(4n)').after('<div class="clearfix visible-lg-block"></div>');
    }
    if ($screensize < 1199) {
        $('.category-list > div:nth-child(4n)').after('<div class="clearfix visible-lg-block visible-md-block"></div>');
    }
	if ($screensize < 991) {
        $('.category-list > div:nth-child(6n)').after('<div class="clearfix visible-lg-block visible-sm-block"></div>');
    }
	if ($screensize < 767) {
        $('.category-list > div:nth-child(3n)').after('<div class="clearfix visible-lg-block visible-xs-block"></div>');
    }
$( window ).resize(function() {
    $screensize = $(window).width();
    if ($screensize > 1199) {
        $(".category-list > .clearfix.visible-lg-block").remove();
        $('.category-list > div:nth-child(4n)').after('<div class="clearfix visible-lg-block"></div>');
    } 
    if ($screensize < 1199) {
        $(".category-list > .clearfix.visible-lg-block").remove();
        $('.category-list > div:nth-child(4n)').after('<div class="clearfix visible-lg-block visible-md-block"></div>');
    }
	if ($screensize < 991) {
        $(".category-list > .clearfix.visible-lg-block").remove();
        $('.category-list > div:nth-child(6n)').after('<div class="clearfix visible-lg-block visible-sm-block"></div>');
    }
	if ($screensize < 767) {
        $(".category-list > .clearfix.visible-lg-block").remove();
        $('.category-list > div:nth-child(3n)').after('<div class="clearfix visible-lg-block visible-xs-block"></div>');
    }
});});
</script>
  <?php } elseif ($column_left || $column_right) { ?>
  <script>
$(document).ready(function(){
$screensize = $(window).width();
    if ($screensize > 1199) {
        $('.category-list > div:nth-child(6n)').after('<div class="clearfix visible-lg-block"></div>');
    }
    if ($screensize < 1199) {
        $('.category-list > div:nth-child(6n)').after('<div class="clearfix visible-lg-block visible-md-block"></div>');
    }
	if ($screensize < 991) {
        $('.category-list > div:nth-child(6n)').after('<div class="clearfix visible-lg-block visible-sm-block"></div>');
    }
	if ($screensize < 767) {
        $('.category-list > div:nth-child(3n)').after('<div class="clearfix visible-lg-block visible-xs-block"></div>');
    }
$( window ).resize(function() {
    $screensize = $(window).width();
    if ($screensize > 1199) {
        $(".category-list > .clearfix.visible-lg-block").remove();
        $('.category-list > div:nth-child(6n)').after('<div class="clearfix visible-lg-block"></div>');
    } 
    if ($screensize < 1199) {
        $(".category-list > .clearfix.visible-lg-block").remove();
        $('.category-list > div:nth-child(6n)').after('<div class="clearfix visible-lg-block visible-md-block"></div>');
    }
	if ($screensize < 991) {
        $(".category-list > .clearfix.visible-lg-block").remove();
        $('.category-list > div:nth-child(6n)').after('<div class="clearfix visible-lg-block visible-sm-block"></div>');
    }
	if ($screensize < 767) {
        $(".category-list > .clearfix.visible-lg-block").remove();
        $('.category-list > div:nth-child(3n)').after('<div class="clearfix visible-lg-block visible-xs-block"></div>');
    }
});});
</script>
  <?php } else { ?>
  <script type="text/javascript">
$(document).ready(function(){
$screensize = $(window).width();
    if ($screensize > 1199) {
        $('.category-list > div:nth-child(12n)').after('<div class="clearfix visible-lg-block"></div>');
    }
    if ($screensize < 1199) {
        $('.category-list > div:nth-child(6n)').after('<div class="clearfix visible-lg-block visible-md-block"></div>');
    }
	if ($screensize < 991) {
        $('.category-list > div:nth-child(6n)').after('<div class="clearfix visible-lg-block visible-sm-block"></div>');
    }
	if ($screensize < 767) {
        $('.category-list > div:nth-child(3n)').after('<div class="clearfix visible-lg-block visible-xs-block"></div>');
    }
$( window ).resize(function() {
    $screensize = $(window).width();
    if ($screensize > 1199) {
        $(".category-list > .clearfix.visible-lg-block").remove();
        $('.category-list > div:nth-child(12n)').after('<div class="clearfix visible-lg-block"></div>');
    } 
    if ($screensize < 1199) {
        $(".category-list > .clearfix.visible-lg-block").remove();
        $('.category-list > div:nth-child(6n)').after('<div class="clearfix visible-lg-block visible-md-block"></div>');
    }
	if ($screensize < 991) {
        $(".category-list > .clearfix.visible-lg-block").remove();
        $('.category-list > div:nth-child(6n)').after('<div class="clearfix visible-lg-block visible-sm-block"></div>');
    }
	if ($screensize < 767) {
        $(".category-list > .clearfix.visible-lg-block").remove();
        $('.category-list > div:nth-child(3n)').after('<div class="clearfix visible-lg-block visible-xs-block"></div>');
    }
});});
</script>
  <?php } ?>
            <div class="product-filter">
                <div class="display"><b><?php echo $text_display; ?></b> <span class="grid1-icon"><?php echo $text_list; ?></span><a class="list-icon" onclick="display('grid');"><?php echo $text_grid; ?></a></div>
                <div class="product-compare"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></div>
                <div class="limit"><b><?php echo $text_limit; ?></b>
                    <select onchange="location = this.value;">
                        <?php foreach($limits as $limits) { ?>
                        <?php if($limits['value'] == $limit) { ?>
                            <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                            <?php } ?>
                        <?php } ?>
                    </select>
                </div>
                <div class="sort"><b><?php echo $text_sort; ?></b>
                    <select onchange="location = this.value;">
                        <?php foreach($sorts as $sorts) { ?>
                        <?php if($sorts['value'] == $sort . '-' . $order) { ?>
                            <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                            <?php } ?>
                        <?php } ?>
                    </select>
                </div>
            </div>
            <?php if($this->config->get('marketshop_category_product_per_row')== 'pr3') { ?>
  <?php if ($column_left && $column_right) { ?>
  <?php $class_grid = 'col-lg-4 col-md-6 col-sm-4 col-xs-12'; ?>
  <?php } elseif ($column_left || $column_right) { ?>
  <?php $class_grid = 'col-lg-4 col-md-4 col-sm-4 col-xs-12'; ?>
  <?php } else { ?>
  <?php $class_grid = 'col-lg-4 col-md-4 col-sm-4 col-xs-12'; ?>
  <?php } ?>
  <?php } elseif ($this->config->get('marketshop_category_product_per_row')== 'pr4') {?>
  <?php if ($column_left && $column_right) { ?>
  <?php $class_grid = 'col-lg-3 col-md-3 col-sm-3 col-xs-12'; ?>
  <?php } elseif ($column_left || $column_right) { ?>
  <?php $class_grid = 'col-lg-3 col-md-3 col-sm-3 col-xs-12'; ?>
  <?php } else { ?>
  <?php $class_grid = 'col-lg-3 col-md-3 col-sm-3 col-xs-12'; ?>
  <?php } ?>
  <?php } elseif ($this->config->get('marketshop_category_product_per_row')== 'pr5') {?>
  <?php if ($column_left && $column_right) { ?>
  <?php $class_grid = 'col-lg-5ths col-md-5ths col-sm-3 col-xs-12'; ?>
  <?php } elseif ($column_left || $column_right) { ?>
  <?php $class_grid = 'col-lg-5ths col-md-5ths col-sm-3 col-xs-12'; ?>
  <?php } else { ?>
  <?php $class_grid = 'col-lg-5ths col-md-5ths col-sm-3 col-xs-12'; ?>
  <?php } ?>
  <?php } elseif ($this->config->get('marketshop_category_product_per_row')== 'pr6') {?>
  <?php if ($column_left && $column_right) { ?>
  <?php $class_grid = 'col-lg-2 col-md-2 col-sm-3 col-xs-12'; ?>
  <?php } elseif ($column_left || $column_right) { ?>
  <?php $class_grid = 'col-lg-2 col-md-2 col-sm-3 col-xs-12'; ?>
  <?php } else { ?>
  <?php $class_grid = 'col-lg-2 col-md-2 col-sm-3 col-xs-12'; ?>
  <?php } ?>
  <?php } ?>
            <div class="product-list row"></div>
            <div class="pagination"></div>
        </div>
<?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
function display(view) {
	if (view == 'list') {
		$('#content .product-grid').attr('class', 'product-list row');
		$('#content .product-list > div').attr('class', 'col-xs-12');
		$("#content .product-list > .clearfix.visible-lg-block").remove();
		$('#content .product-list > div').each(function(index, element) {

              html = '<div class="left">';
			
			var image = $(element).find('.image').html();
			
			if (image != null) { 
				html += '<div class="image">' + image + '</div>';
			}
					
			html += '  <div class="name">' + $(element).find('.name').html() + '</div>';
			html += '  <div class="description">' + $(element).find('.description').html() + '</div>';
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
			
			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}
			html += '  <div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '  <div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			html += '  <div class="compare">' + $(element).find('.compare').html() + '</div>';
			
			html += '</div>';
						
			$(element).html(html);
		});

		$('.display').html('<b><?php echo $text_display; ?></b> <span class="grid1-icon"><?php echo $text_list; ?></span> <a title="<?php echo $text_grid; ?>" class="list-icon" onclick="display(\'grid\');"><?php echo $text_grid; ?></a>');

        $.totalStorage('display', 'list');
	} else {
		$('#content .product-list').attr('class', 'product-grid row');
		$('#content .product-grid > div').attr('class', '<?php if(isset($class_grid)) { ?><?php echo $class_grid; ?><?php } ?>');
		<?php if($this->config->get('marketshop_category_product_per_row')== 'pr3') { ?>
  <?php if ($column_left && $column_right) { ?>
$(document).ready(function(){
$screensize = $(window).width();
    if ($screensize > 1199) {
        $('#content .product-grid > div:nth-child(3n)').after('<span class="clearfix visible-lg-block"></span>');
    }
    if ($screensize < 1199 && $screensize > 991) {
        $('#content .product-grid > div:nth-child(2n)').after('<span class="clearfix visible-lg-block visible-md-block"></span>');
    }
	if ($screensize < 991) {
        $('#content .product-grid > div:nth-child(3n)').after('<span class="clearfix visible-lg-block visible-sm-block"></span>');
    }
$( window ).resize(function() {
    $screensize = $(window).width();
    if ($screensize > 1199) {
        $("#content .product-grid > .clearfix.visible-lg-block").remove();
        $('#content .product-grid > div:nth-child(3n)').after('<span class="clearfix visible-lg-block"></span>');
    } 
    if ($screensize < 1199 && $screensize > 991) {
        $("#content .product-grid > .clearfix.visible-lg-block").remove();
        $('#content .product-grid > div:nth-child(2n)').after('<span class="clearfix visible-lg-block visible-md-block"></span>');
    }
	if ($screensize < 991) {
        $("#content .product-grid > .clearfix.visible-lg-block").remove();
        $('#content .product-grid > div:nth-child(3n)').after('<span class="clearfix visible-lg-block visible-sm-block"></span>');
    }
	if ($screensize < 767) {
        $("#content .product-grid > .clearfix.visible-lg-block").remove();
    }
});});
  <?php } elseif ($column_left || $column_right) { ?>
$(document).ready(function(){
$screensize = $(window).width();
    if ($screensize > 1199) {
        $('#content .product-grid > div:nth-child(3n)').after('<span class="clearfix visible-lg-block"></span>');
    }
    if ($screensize < 1199 && $screensize > 991) {
        $('#content .product-grid > div:nth-child(3n)').after('<span class="clearfix visible-lg-block visible-md-block"></span>');
    }
	if ($screensize < 991) {
        $('#content .product-grid > div:nth-child(3n)').after('<span class="clearfix visible-lg-block visible-sm-block"></span>');
    }
$( window ).resize(function() {
    $screensize = $(window).width();
    if ($screensize > 1199) {
        $("#content .product-grid > .clearfix.visible-lg-block").remove();
        $('#content .product-grid > div:nth-child(3n)').after('<span class="clearfix visible-lg-block"></span>');
    } 
    if ($screensize < 1199 && $screensize > 991) {
        $("#content .product-grid > .clearfix.visible-lg-block").remove();
        $('#content .product-grid > div:nth-child(3n)').after('<span class="clearfix visible-lg-block visible-md-block"></span>');
    }
	if ($screensize < 991) {
        $("#content .product-grid > .clearfix.visible-lg-block").remove();
        $('#content .product-grid > div:nth-child(3n)').after('<span class="clearfix visible-lg-block visible-sm-block"></span>');
    }
	if ($screensize < 767) {
        $("#content .product-grid > .clearfix.visible-lg-block").remove();
    }
});});
  <?php } else { ?>
$(document).ready(function(){
$screensize = $(window).width();
    if ($screensize > 1199) {
        $('#content .product-grid > div:nth-child(3n)').after('<span class="clearfix visible-lg-block"></span>');
    }
    if ($screensize < 1199 && $screensize > 991) {
        $('#content .product-grid > div:nth-child(3n)').after('<span class="clearfix visible-lg-block visible-md-block"></span>');
    }
	if ($screensize < 991) {
        $('#content .product-grid > div:nth-child(3n)').after('<span class="clearfix visible-lg-block visible-sm-block"></span>');
    }
$( window ).resize(function() {
    $screensize = $(window).width();
    if ($screensize > 1199) {
        $("#content .product-grid > .clearfix.visible-lg-block").remove();
        $('#content .product-grid > div:nth-child(3n)').after('<span class="clearfix visible-lg-block"></span>');
    } 
    if ($screensize < 1199 && $screensize > 991) {
        $("#content .product-grid > .clearfix.visible-lg-block").remove();
        $('#content .product-grid > div:nth-child(3n)').after('<span class="clearfix visible-lg-block visible-md-block"></span>');
    }
	if ($screensize < 991) {
        $("#content .product-grid > .clearfix.visible-lg-block").remove();
        $('#content .product-grid > div:nth-child(3n)').after('<span class="clearfix visible-lg-block visible-sm-block"></span>');
    }
	if ($screensize < 767) {
        $("#content .product-grid > .clearfix.visible-lg-block").remove();
    }
});});
  <?php } ?>
  <?php } elseif ($this->config->get('marketshop_category_product_per_row')== 'pr4') {?>
$(document).ready(function(){
$screensize = $(window).width();
    if ($screensize > 1199) {
        $('#content .product-grid > div:nth-child(4n)').after('<span class="clearfix visible-lg-block"></span>');
    }
    if ($screensize < 1199 && $screensize > 991) {
        $('#content .product-grid > div:nth-child(4n)').after('<span class="clearfix visible-lg-block visible-md-block"></span>');
    }
	if ($screensize < 991) {
        $('#content .product-grid > div:nth-child(4n)').after('<span class="clearfix visible-lg-block visible-sm-block"></span>');
    }
$( window ).resize(function() {
    $screensize = $(window).width();
    if ($screensize > 1199) {
        $("#content .product-grid > .clearfix.visible-lg-block").remove();
        $('#content .product-grid > div:nth-child(4n)').after('<span class="clearfix visible-lg-block"></span>');
    } 
    if ($screensize < 1199 && $screensize > 991) {
        $("#content .product-grid > .clearfix.visible-lg-block").remove();
        $('#content .product-grid > div:nth-child(4n)').after('<span class="clearfix visible-lg-block visible-md-block"></span>');
    }
	if ($screensize < 991) {
        $("#content .product-grid > .clearfix.visible-lg-block").remove();
        $('#content .product-grid > div:nth-child(4n)').after('<span class="clearfix visible-lg-block visible-sm-block"></span>');
    }
	if ($screensize < 767) {
        $("#content .product-grid > .clearfix.visible-lg-block").remove();
    }
});});
  <?php } elseif ($this->config->get('marketshop_category_product_per_row')== 'pr5') {?>
$(document).ready(function(){
$screensize = $(window).width();
    if ($screensize > 1199) {
        $('#content .product-grid > div:nth-child(5n)').after('<span class="clearfix visible-lg-block"></span>');
    }
    if ($screensize < 1199 && $screensize > 991) {
        $('#content .product-grid > div:nth-child(5n)').after('<span class="clearfix visible-lg-block visible-md-block"></span>');
    }
	if ($screensize < 991) {
        $('#content .product-grid > div:nth-child(4n)').after('<span class="clearfix visible-lg-block visible-sm-block"></span>');
    }
$( window ).resize(function() {
    $screensize = $(window).width();
    if ($screensize > 1199) {
        $("#content .product-grid > .clearfix.visible-lg-block").remove();
        $('#content .product-grid > div:nth-child(5n)').after('<span class="clearfix visible-lg-block"></span>');
    } 
    if ($screensize < 1199 && $screensize > 991) {
        $("#content .product-grid > .clearfix.visible-lg-block").remove();
        $('#content .product-grid > div:nth-child(5n)').after('<span class="clearfix visible-lg-block visible-md-block"></span>');
    }
	if ($screensize < 991) {
        $("#content .product-grid > .clearfix.visible-lg-block").remove();
        $('#content .product-grid > div:nth-child(4n)').after('<span class="clearfix visible-lg-block visible-sm-block"></span>');
    }
	if ($screensize < 767) {
        $("#content .product-grid > .clearfix.visible-lg-block").remove();
    }
});});
  <?php } elseif ($this->config->get('marketshop_category_product_per_row')== 'pr6') {?>
$(document).ready(function(){
$screensize = $(window).width();
    if ($screensize > 1199) {
        $('#content .product-grid > div:nth-child(6n)').after('<span class="clearfix visible-lg-block"></span>');
    }
    if ($screensize < 1199 && $screensize > 991) {
        $('#content .product-grid > div:nth-child(6n)').after('<span class="clearfix visible-lg-block visible-md-block"></span>');
    }
	if ($screensize < 991) {
        $('#content .product-grid > div:nth-child(4n)').after('<span class="clearfix visible-lg-block visible-sm-block"></span>');
    }
$( window ).resize(function() {
    $screensize = $(window).width();
    if ($screensize > 1199) {
        $("#content .product-grid > .clearfix.visible-lg-block").remove();
        $('#content .product-grid > div:nth-child(6n)').after('<span class="clearfix visible-lg-block"></span>');
    } 
    if ($screensize < 1199 && $screensize > 991) {
        $("#content .product-grid > .clearfix.visible-lg-block").remove();
        $('#content .product-grid > div:nth-child(6n)').after('<span class="clearfix visible-lg-block visible-md-block"></span>');
    }
	if ($screensize < 991) {
        $("#content .product-grid > .clearfix.visible-lg-block").remove();
        $('#content .product-grid > div:nth-child(4n)').after('<span class="clearfix visible-lg-block visible-sm-block"></span>');
    }
	if ($screensize < 767) {
        $("#content .product-grid > .clearfix.visible-lg-block").remove();
    }
});});
  <?php } ?>
		$('#content .product-grid > div').each(function(index, element) {
			html = '';

			var image = $(element).find('.image').html();
			
			if (image != null) {
				html += '<div class="image">' + image + '</div>';
			}
			
			html += '<div class="name">' + $(element).find('.name').html() + '</div>';
			html += '<div class="description">' + $(element).find('.description').html() + '</div>';
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}			
			html += '<div class="cart">' + $(element).find('.cart').html() + '</div>';
			
			html += '<div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			html += '<div class="compare">' + $(element).find('.compare').html() + '</div><div class="clear"></div>';
			
			$(element).html(html);
		});

		$('.display').html('<b><?php echo $text_display; ?></b> <a title="<?php echo $text_list; ?>" class="grid-icon" onclick="display(\'list\');"><?php echo $text_list; ?></a><span class="list1-icon"><?php echo $text_grid; ?></span>');

        $.totalStorage('display', 'grid');
	}
}

var view = $.totalStorage('display');

if (view) {
    display(view);
} else {
    display('grid');
}
//--></script>
<?php echo $footer; ?>