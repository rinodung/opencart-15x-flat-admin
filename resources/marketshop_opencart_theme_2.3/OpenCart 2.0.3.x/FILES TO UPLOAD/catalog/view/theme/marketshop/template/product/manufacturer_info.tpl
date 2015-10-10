<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h2><?php echo $heading_title; ?></h2>
      <?php if ($products) { ?>
      <div class="product-filter">
        <div class="row">
          <div class="col-md-4 col-sm-5">
            <div class="btn-group">
              <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
              <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
              <a href="<?php echo $compare; ?>" id="compare-total"> <?php echo $text_compare; ?></a> </div>
          </div>
          <div class="col-sm-2 text-right">
            <label class="control-label" for="input-sort"><?php echo $text_sort; ?></label>
          </div>
          <div class="col-md-3 col-sm-2 text-right">
            <select id="input-sort" class="form-control col-sm-3" onchange="location = this.value;">
              <?php foreach ($sorts as $sorts) { ?>
              <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
              <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
          </div>
          <div class="col-sm-1 text-right">
            <label class="control-label" for="input-limit"><?php echo $text_limit; ?></label>
          </div>
          <div class="col-sm-2 text-right">
            <select id="input-limit" class="form-control" onchange="location = this.value;">
              <?php foreach ($limits as $limits) { ?>
              <?php if ($limits['value'] == $limit) { ?>
              <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
          </div>
        </div>
      </div>
      <br />
      <div class="row products-category">
        <?php foreach ($products as $product) { ?>
        <div class="product-layout product-list col-xs-12">
          <div class="product-thumb">
            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
            <div class="caption">
              <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
              <p class="description"><?php echo $product['description']; ?></p>
              <?php if ($product['price']) { ?>
              <p class="price">
                <?php if (!$product['special']) { ?>
                <?php echo $product['price']; ?>
                <?php } else { ?>
                <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                <?php global $config; if($config->get('marketshop_percentage_discount_badge')== 1) { ?>
                <span class="saving">-<?php echo $product['saving']; ?>%</span>
                <?php } ?>
                <?php } ?>
                <?php if ($product['tax']) { ?>
                <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                <?php } ?>
              </p>
              <?php } ?>
              <?php if ($product['rating']) { ?>
              <div class="rating">
                <?php for ($i = 1; $i <= 5; $i++) { ?>
                <?php if ($product['rating'] < $i) { ?>
                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                <?php } else { ?>
                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                <?php } ?>
                <?php } ?>
              </div>
              <?php } ?>
            </div>
            <div class="button-group">
              <button class="btn-primary" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');">
              <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
              <div class="add-to-links">
                <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i> <span><?php echo $button_wishlist; ?></span></button>
                <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i> <span><?php echo $button_compare; ?></span></button>
              </div>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
      <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
      <?php } else { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php global $config; if($config->get('marketshop_manufacturer_product_per_row')== 'pr3') { ?>
      <?php if ($column_left && $column_right) { ?>
      <script type="text/javascript">
	$(document).on('click', '#grid-view', function(e){
		$('#content .product-layout').attr('class', 'product-layout product-grid col-lg-4 col-md-6 col-sm-4 col-xs-12');
		
$(document).ready(function(){
$screensize = $(window).width();
    if ($screensize > 1199) {
        $('.product-grid:nth-child(3n)').after('<span class="clearfix visible-lg-block"></span>');
    }
    if ($screensize < 1199) {
        $('.product-grid:nth-child(2n)').after('<span class="clearfix visible-lg-block visible-md-block"></span>');
    }
	if ($screensize < 991) {
        $('.product-grid:nth-child(3n)').after('<span class="clearfix visible-lg-block visible-sm-block"></span>');
    }
$( window ).resize(function() {
    $screensize = $(window).width();
    if ($screensize > 1199) {
        $(".products-category > .clearfix.visible-lg-block").remove();
        $('.product-grid:nth-child(3n)').after('<span class="clearfix visible-lg-block"></span>');
    } 
    if ($screensize < 1199) {
        $(".products-category > .clearfix.visible-lg-block").remove();
        $('.product-grid:nth-child(2n)').after('<span class="clearfix visible-lg-block visible-md-block"></span>');
    }
	if ($screensize < 991) {
        $(".products-category > .clearfix.visible-lg-block").remove();
        $('.product-grid:nth-child(3n)').after('<span class="clearfix visible-lg-block visible-sm-block"></span>');
    }
	if ($screensize < 767) {
        $(".products-category > .clearfix.visible-lg-block").remove();
    }
});
localStorage.setItem('display', 'grid');
$('.btn-group').find('#grid-view').addClass('selected');
$('.btn-group').find('#list-view').removeClass('selected');
	});   
if (localStorage.getItem('display') == 'list') {
		$('#list-view').trigger('click');
	} else {
		$('#grid-view').trigger('click');
	}
});
</script>
      <?php } elseif ($column_left || $column_right) { ?>
      <script type="text/javascript">
$(document).ready(function(){
$(document).on('click', '#grid-view', function(e){
		$('#content .product-layout').attr('class', 'product-layout product-grid col-lg-4 col-md-4 col-sm-4 col-xs-12');
		
$screensize = $(window).width();
    if ($screensize > 1199) {
        $('.product-grid:nth-child(3n)').after('<span class="clearfix visible-lg-block"></span>');
    }
    if ($screensize < 1199) {
        $('.product-grid:nth-child(3n)').after('<span class="clearfix visible-lg-block visible-md-block"></span>');
    }
	if ($screensize < 991) {
        $('.product-grid:nth-child(3n)').after('<span class="clearfix visible-lg-block visible-sm-block"></span>');
    }
$( window ).resize(function() {
    $screensize = $(window).width();
    if ($screensize > 1199) {
        $(".products-category > .clearfix.visible-lg-block").remove();
        $('.product-grid:nth-child(3n)').after('<span class="clearfix visible-lg-block"></span>');
    } 
    if ($screensize < 1199) {
        $(".products-category > .clearfix.visible-lg-block").remove();
        $('.product-grid:nth-child(3n)').after('<span class="clearfix visible-lg-block visible-md-block"></span>');
    }
	if ($screensize < 991) {
        $(".products-category > .clearfix.visible-lg-block").remove();
        $('.product-grid:nth-child(3n)').after('<span class="clearfix visible-lg-block visible-sm-block"></span>');
    }
	if ($screensize < 767) {
        $(".products-category > .clearfix.visible-lg-block").remove();
    }
});
localStorage.setItem('display', 'grid');
$('.btn-group').find('#grid-view').addClass('selected');
$('.btn-group').find('#list-view').removeClass('selected');
	});   
if (localStorage.getItem('display') == 'list') {
		$('#list-view').trigger('click');
	} else {
		$('#grid-view').trigger('click');
	}
});
</script>
      <?php } else { ?>
      <script type="text/javascript">
$(document).ready(function(){
$(document).on('click', '#grid-view', function(e){
		$('#content .product-layout').attr('class', 'product-layout product-grid col-lg-4 col-md-4 col-sm-4 col-xs-12');
		
$screensize = $(window).width();
    if ($screensize > 1199) {
        $('.product-grid:nth-child(3n)').after('<span class="clearfix visible-lg-block"></span>');
    }
    if ($screensize < 1199) {
        $('.product-grid:nth-child(3n)').after('<span class="clearfix visible-lg-block visible-md-block"></span>');
    }
	if ($screensize < 991) {
        $('.product-grid:nth-child(3n)').after('<span class="clearfix visible-lg-block visible-sm-block"></span>');
    }
$( window ).resize(function() {
    $screensize = $(window).width();
    if ($screensize > 1199) {
        $(".products-category > .clearfix.visible-lg-block").remove();
        $('.product-grid:nth-child(3n)').after('<span class="clearfix visible-lg-block"></span>');
    } 
    if ($screensize < 1199) {
        $(".products-category > .clearfix.visible-lg-block").remove();
        $('.product-grid:nth-child(3n)').after('<span class="clearfix visible-lg-block visible-md-block"></span>');
    }
	if ($screensize < 991) {
        $(".products-category > .clearfix.visible-lg-block").remove();
        $('.product-grid:nth-child(3n)').after('<span class="clearfix visible-lg-block visible-sm-block"></span>');
    }
	if ($screensize < 767) {
        $(".products-category > .clearfix.visible-lg-block").remove();
    }
});
localStorage.setItem('display', 'grid');
$('.btn-group').find('#grid-view').addClass('selected');
$('.btn-group').find('#list-view').removeClass('selected');
	});   
if (localStorage.getItem('display') == 'list') {
		$('#list-view').trigger('click');
	} else {
		$('#grid-view').trigger('click');
	}
});
</script>
      <?php } ?>
      <?php } elseif ($config->get('marketshop_manufacturer_product_per_row')== 'pr4') {?>
      <script type="text/javascript">
$(document).ready(function(){
$(document).on('click', '#grid-view', function(e){
			$('#content .product-layout').attr('class', 'product-layout product-grid col-lg-3 col-md-3 col-sm-3 col-xs-12');
		
$screensize = $(window).width();
    if ($screensize > 1199) {
        $('.product-grid:nth-child(4n)').after('<span class="clearfix visible-lg-block"></span>');
    }
    if ($screensize < 1199) {
        $('.product-grid:nth-child(4n)').after('<span class="clearfix visible-lg-block visible-md-block"></span>');
    }
	if ($screensize < 991) {
        $('.product-grid:nth-child(4n)').after('<span class="clearfix visible-lg-block visible-sm-block"></span>');
    }
$( window ).resize(function() {
    $screensize = $(window).width();
    if ($screensize > 1199) {
        $(".products-category > .clearfix.visible-lg-block").remove();
        $('.product-grid:nth-child(4n)').after('<span class="clearfix visible-lg-block"></span>');
    } 
    if ($screensize < 1199) {
        $(".products-category > .clearfix.visible-lg-block").remove();
        $('.product-grid:nth-child(4n)').after('<span class="clearfix visible-lg-block visible-md-block"></span>');
    }
	if ($screensize < 991) {
        $(".products-category > .clearfix.visible-lg-block").remove();
        $('.product-grid:nth-child(4n)').after('<span class="clearfix visible-lg-block visible-sm-block"></span>');
    }
	if ($screensize < 767) {
        $(".products-category > .clearfix.visible-lg-block").remove();
    }
});
localStorage.setItem('display', 'grid');
$('.btn-group').find('#grid-view').addClass('selected');
$('.btn-group').find('#list-view').removeClass('selected');
	});   
if (localStorage.getItem('display') == 'list') {
		$('#list-view').trigger('click');
	} else {
		$('#grid-view').trigger('click');
	}
});
</script>
      <?php } elseif ($config->get('marketshop_manufacturer_product_per_row')== 'pr5') {?>
      <script type="text/javascript">
$(document).ready(function(){

$(document).on('click', '#grid-view', function(e){
	$('#content .product-layout').attr('class', 'product-layout product-grid col-lg-5ths col-md-5ths col-sm-3 col-xs-12');
		
$screensize = $(window).width();
    if ($screensize > 1199) {
        $('.product-grid:nth-child(5n)').after('<span class="clearfix visible-lg-block"></span>');
    }
    if ($screensize < 1199) {
        $('.product-grid:nth-child(5n)').after('<span class="clearfix visible-lg-block visible-md-block"></span>');
    }
	if ($screensize < 991) {
        $('.product-grid:nth-child(4n)').after('<span class="clearfix visible-lg-block visible-sm-block"></span>');
    }
$( window ).resize(function() {
    $screensize = $(window).width();
    if ($screensize > 1199) {
        $(".products-category > .clearfix.visible-lg-block").remove();
        $('.product-grid:nth-child(5n)').after('<span class="clearfix visible-lg-block"></span>');
    } 
    if ($screensize < 1199) {
        $(".products-category > .clearfix.visible-lg-block").remove();
        $('.product-grid:nth-child(5n)').after('<span class="clearfix visible-lg-block visible-md-block"></span>');
    }
	if ($screensize < 991) {
        $(".products-category > .clearfix.visible-lg-block").remove();
        $('.product-grid:nth-child(4n)').after('<span class="clearfix visible-lg-block visible-sm-block"></span>');
    }
	if ($screensize < 767) {
        $(".products-category > .clearfix.visible-lg-block").remove();
    }
});
localStorage.setItem('display', 'grid');
$('.btn-group').find('#grid-view').addClass('selected');
$('.btn-group').find('#list-view').removeClass('selected');
	});

if (localStorage.getItem('display') == 'list') {
		$('#list-view').trigger('click');
	} else {
		$('#grid-view').trigger('click');
	}
});
</script>
      <?php } elseif ($config->get('marketshop_manufacturer_product_per_row')== 'pr6') {?>
      <script type="text/javascript">
$(document).ready(function(){

$(document).on('click', '#grid-view', function(e){
			$('#content .product-layout').attr('class', 'product-layout product-grid col-lg-2 col-md-2 col-sm-3 col-xs-12');

$screensize = $(window).width();
    if ($screensize > 1199) {
        $('.product-grid:nth-child(6n)').after('<span class="clearfix visible-lg-block"></span>');
    }
    if ($screensize < 1199) {
        $('.product-grid:nth-child(6n)').after('<span class="clearfix visible-lg-block visible-md-block"></span>');
    }
	if ($screensize < 991) {
        $('.product-grid:nth-child(4n)').after('<span class="clearfix visible-lg-block visible-sm-block"></span>');
    }
$( window ).resize(function() {
    $screensize = $(window).width();
    if ($screensize > 1199) {
        $(".products-category > .clearfix.visible-lg-block").remove();
        $('.product-grid:nth-child(6n)').after('<span class="clearfix visible-lg-block"></span>');
    } 
    if ($screensize < 1199) {
        $(".products-category > .clearfix.visible-lg-block").remove();
        $('.product-grid:nth-child(6n)').after('<span class="clearfix visible-lg-block visible-md-block"></span>');
    }
	if ($screensize < 991) {
        $(".products-category > .clearfix.visible-lg-block").remove();
        $('.product-grid:nth-child(4n)').after('<span class="clearfix visible-lg-block visible-sm-block"></span>');
    }
	if ($screensize < 767) {
        $(".products-category > .clearfix.visible-lg-block").remove();
    }
});
localStorage.setItem('display', 'grid');
$('.btn-group').find('#grid-view').addClass('selected');
$('.btn-group').find('#list-view').removeClass('selected');
	});

if (localStorage.getItem('display') == 'list') {
		$('#list-view').trigger('click');
	} else {
		$('#grid-view').trigger('click');
	}
});
</script>
      <?php } ?>
<?php echo $footer; ?>