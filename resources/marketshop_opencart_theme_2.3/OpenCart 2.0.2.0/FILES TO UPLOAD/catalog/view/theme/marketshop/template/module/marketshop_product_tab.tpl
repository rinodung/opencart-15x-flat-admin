<div id="product-tab-<?php echo $module; ?>" class="product-tab">
  <ul id="tabs-<?php echo $module; ?>" class="tabs">
    <?php if($products && $featured_products_status == 1){ ?>
    <li><a href="#tab-featured-<?php echo $module; ?>"><?php echo $tab_featured; ?></a></li>
    <?php } ?>
    <?php if($latest_products && $latest_products_status == 1){ ?>
    <li><a href="#tab-latest-<?php echo $module; ?>"><?php echo $tab_latest; ?></a></li>
    <?php } ?>
    <?php if($bestseller_products && $bestseller_products_status == 1){ ?>
    <li><a href="#tab-bestseller-<?php echo $module; ?>"><?php echo $tab_bestseller; ?></a></li>
    <?php } ?>
    <?php if($special_products && $special_products_status == 1){ ?>
    <li><a href="#tab-special-<?php echo $module; ?>"><?php echo $tab_special; ?></a></li>
    <?php } ?>
  </ul>
  <?php if($products && $featured_products_status == 1){ ?>
  <div id="tab-featured-<?php echo $module; ?>" class="tab_content">
    <div class="owl-carousel product_carousel_tab">
      <?php foreach ($products as $product) { ?>
      <div class="product-thumb">
        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
        <div class="caption">
          <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
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
          <button class="btn-primary" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span></button>
          <div class="add-to-links">
            <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
            <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
          </div>
        </div>
      </div>
      <?php } ?>
    </div>
  </div>
  <?php } ?>
  <?php if($latest_products && $latest_products_status == 1){ ?>
  <div id="tab-latest-<?php echo $module; ?>" class="tab_content">
    <div class="owl-carousel product_carousel_tab">
      <?php foreach ($latest_products as $product) { ?>
      <div class="product-thumb">
        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
        <div class="caption">
          <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
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
          <button class="btn-primary" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span></button>
          <div class="add-to-links">
            <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
            <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
          </div>
        </div>
      </div>
      <?php } ?>
    </div>
  </div>
  <?php } ?>
  <?php if($bestseller_products && $bestseller_products_status == 1){ ?>
  <div id="tab-bestseller-<?php echo $module; ?>" class="tab_content">
    <div class="owl-carousel product_carousel_tab">
      <?php foreach ($bestseller_products as $product) { ?>
      <div class="product-thumb">
        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
        <div class="caption">
          <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
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
          <button class="btn-primary" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span></button>
          <div class="add-to-links">
            <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
            <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
          </div>
        </div>
      </div>
      <?php } ?>
    </div>
  </div>
  <?php } ?>
  <?php if($special_products && $special_products_status == 1){ ?>
  <div id="tab-special-<?php echo $module; ?>" class="tab_content">
    <div class="owl-carousel product_carousel_tab">
      <?php foreach ($special_products as $product) { ?>
      <div class="product-thumb">
        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
        <div class="caption">
          <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
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
          <button class="btn-primary" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span></button>
          <div class="add-to-links">
            <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
            <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
          </div>
        </div>
      </div>
      <?php } ?>
    </div>
  </div>
  <?php } ?>
</div>
<script type="text/javascript">
$(document).ready(function() {
	$("#product-tab-<?php echo $module; ?> .product_carousel_tab").owlCarousel({
		itemsCustom : [[320, 1],[600, 2],[768, 3],[992, <?php global $config; echo $config->get('marketshop_product_tab_slider_product_per_row'); ?>],[1199, <?php echo $config->get('marketshop_product_tab_slider_product_per_row'); ?>]],											   
		lazyLoad : true,
		navigation : true,
		navigationText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
		scrollPerPage : true
    }); 
	$("#product-tab-<?php echo $module; ?> .tab_content").addClass("deactive");
$("#product-tab-<?php echo $module; ?> .tab_content:first").show();
    //Default Action
    $("ul#tabs-<?php echo $module; ?> li:first").addClass("active").show(); //Activate first tab
    //On Click Event
    $("ul#tabs-<?php echo $module; ?> li").click(function() {
        $("ul#tabs-<?php echo $module; ?> li").removeClass("active"); //Remove any "active" class
        $(this).addClass("active"); //Add "active" class to selected tab
		$("#product-tab-<?php echo $module; ?> .tab_content").hide(); 
        var activeTab = $(this).find("a").attr("href"); //Find the rel attribute value to identify the active tab + content
        $(activeTab).fadeIn(); //Fade in the active content
        return false;
    });
});
</script>
