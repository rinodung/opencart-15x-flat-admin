<div id="product-tab-<?php echo $module; ?>" class="product-tab">
  <ul id="tabs-<?php echo $module; ?>" class="tabs">
    <?php if($featured_products && $featured_products_status == 1){ ?>
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
  
  <?php if($featured_products && $featured_products_status == 1){ ?>
  <div id="tab-featured-<?php echo $module; ?>" class="tab_content">
    <div class="box-product">
    <div class="owl-carousel product_carousel_tab">
          <?php foreach ($featured_products as $product) { ?>
            <div class="product-item">
              <?php if ($product['thumb']) { ?>
              <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
              <?php } ?>
              <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
              <?php if ($product['price']) { ?>
              <div class="price">
                <?php if (!$product['special']) { ?>
                <?php echo $product['price']; ?>
                <?php } else { ?>
                <span class="price-old"><?php echo $product['price']; ?></span><span class="price-new"><?php echo $product['special']; ?></span>
                <?php if($this->config->get('marketshop_percentage_discount_badge')== 1) { ?>
                <span class="saving">-<?php echo $product['saving']; ?>%</span>
                <?php } ?>
                <?php } ?>
              </div>
              <?php } ?>
              <?php if ($product['rating']) { ?>
              <div class="rating"><img src="catalog/view/theme/marketshop/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
              <?php } ?>
              <div class="cart">
                <input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" />
              </div>
              <div class="wishlist"><a title="<?php echo $button_wishlist; ?>" onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a></div>
  <div class="compare"><a title="<?php echo $button_compare; ?>" onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $button_compare; ?></a></div>
            </div>
          <?php } ?>
      </div>
    </div>
  </div>
  <?php } ?>

  <?php if($latest_products && $latest_products_status == 1){ ?>
  <div id="tab-latest-<?php echo $module; ?>" class="tab_content">
    <div class="box-product">
    <div class="owl-carousel product_carousel_tab">
          <?php foreach ($latest_products as $product) { ?>
            <div class="product-item">
              <?php if ($product['thumb']) { ?>
              <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
              <?php } ?>
              <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
              <?php if ($product['price']) { ?>
              <div class="price">
                <?php if (!$product['special']) { ?>
                <?php echo $product['price']; ?>
                <?php } else { ?>
                <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
                <?php if($this->config->get('marketshop_percentage_discount_badge')== 1) { ?>
                <span class="saving">-<?php echo $product['saving']; ?>%</span>
                <?php } ?>
                <?php } ?>
              </div>
              <?php } ?>
              <?php if ($product['rating']) { ?>
              <div class="rating"><img src="catalog/view/theme/marketshop/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
              <?php } ?>
              <div class="cart">
                <input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" />
              </div>
              <div class="wishlist"><a title="<?php echo $button_wishlist; ?>" onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a></div>
  <div class="compare"><a title="<?php echo $button_compare; ?>" onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $button_compare; ?></a></div>
            </div>
          <?php } ?>
      </div>
    </div>
  </div>
  <?php } ?>
  

  <?php if($bestseller_products && $bestseller_products_status == 1){ ?>
  <div id="tab-bestseller-<?php echo $module; ?>" class="tab_content">
    <div class="box-product">
    <div class="owl-carousel product_carousel_tab">
          <?php foreach ($bestseller_products as $product) { ?>
            <div class="product-item">
              <?php if ($product['thumb']) { ?>
              <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
              <?php } ?>
              <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
              <?php if ($product['price']) { ?>
              <div class="price">
                <?php if (!$product['special']) { ?>
                <?php echo $product['price']; ?>
                <?php } else { ?>
                <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
                <?php if($this->config->get('marketshop_percentage_discount_badge')== 1) { ?>
                <span class="saving">-<?php echo $product['saving']; ?>%</span>
                <?php } ?>
                <?php } ?>
              </div>
              <?php } ?>
              <?php if ($product['rating']) { ?>
              <div class="rating"><img src="catalog/view/theme/marketshop/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
              <?php } ?>
              <div class="cart">
                <input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" />
              </div>
              <div class="wishlist"><a title="<?php echo $button_wishlist; ?>" onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a></div>
  <div class="compare"><a title="<?php echo $button_compare; ?>" onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $button_compare; ?></a></div>
            </div>
          <?php } ?>
      </div>
    </div>
  </div>
  <?php } ?>
  
  <?php if($special_products && $special_products_status == 1){ ?>
  <div id="tab-special-<?php echo $module; ?>" class="tab_content">
    <div class="box-product">
<div class="owl-carousel product_carousel_tab">
          <?php foreach ($special_products as $product) { ?>
            <div class="product-item">
              <?php if ($product['thumb']) { ?>
              <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
              <?php } ?>
              <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
              <?php if ($product['price']) { ?>
              <div class="price">
                <?php if (!$product['special']) { ?>
                <?php echo $product['price']; ?>
                <?php } else { ?>
                <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
                <?php if($this->config->get('marketshop_percentage_discount_badge')== 1) { ?>
                <span class="saving">-<?php echo $product['saving']; ?>%</span>
                <?php } ?>
                <?php } ?>
              </div>
              <?php } ?>
              <?php if ($product['rating']) { ?>
              <div class="rating"><img src="catalog/view/theme/marketshop/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
              <?php } ?>
              <div class="cart">
                <input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" />
              </div>
              <div class="wishlist"><a title="<?php echo $button_wishlist; ?>" onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a></div>
  <div class="compare"><a title="<?php echo $button_compare; ?>" onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $button_compare; ?></a></div>
            </div>
          <?php } ?>
      </div>
    </div>
  </div>
  <?php } ?>
</div>
<script type="text/javascript">
$(document).ready(function() {
	$("#product-tab-<?php echo $module; ?> .product_carousel_tab").owlCarousel({
		itemsCustom : [[320, 1],[600, 2],[768, 3],[992, <?php echo $this->config->get('marketshop_product_tab_slider_product_per_row'); ?>],[1199, <?php echo $this->config->get('marketshop_product_tab_slider_product_per_row'); ?>]],											   
		lazyLoad : true,
		navigation : true,
		navigationText: false,
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
