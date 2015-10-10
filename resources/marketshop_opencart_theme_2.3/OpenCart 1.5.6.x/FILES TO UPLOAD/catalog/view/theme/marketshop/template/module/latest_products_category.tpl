<?php if ($products && !$subcats) { ?>

<div class="box">
  <div class="box-heading"> <?php echo $category_name; ?>
    <?php if (!isset($this->request->get['path'])) { ?>
    - <a href="<?php echo $category_url; ?>"><?php echo $viewall; ?></a>
    <?php } ?>
  </div>
  <div class="box-content">
    <div class="box-product">
      <div class="owl-carousel latest_category_carousel">
          <?php foreach ($products as $product) { ?>
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
              <div class="rating"> <img src="catalog/view/theme/marketshop/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
              <?php } ?>
              <div class="cart">
                <input type="button" value="<?php echo $button_cart; ?>"onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" />
              </div>
              <div class="wishlist"><a title="<?php echo $button_wishlist; ?>" onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a></div>
  <div class="compare"><a title="<?php echo $button_compare; ?>" onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $button_compare; ?></a></div>
              <div class="clear"></div>
            </div>
          <?php } ?>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
	$(document).ready(function() {
		$(".owl-carousel.latest_category_carousel").owlCarousel({
		itemsCustom : [[320, 1],[600, 2],[768, 3],[992, <?php echo $this->config->get('marketshop_lpbc_slider_product_per_row'); ?>],[1199, <?php echo $this->config->get('marketshop_lpbc_slider_product_per_row'); ?>]],											   
		lazyLoad : true,
		navigation : true,
		navigationText: false,
		scrollPerPage : true
    }); 
		});
</script>

<?php } elseif ($subcats) { ?>

<div class="box category" id="latest_category<?php echo $module; ?>">
  <div class="box-heading"> <?php echo $category_name; ?>
    <?php if (!isset($this->request->get['path'])) { ?>
    - <a href="<?php echo $category_url; ?>"><?php echo $viewall; ?></a>
    <?php } ?>
  </div>
  <div class="box-content">
    <ul id="sub-cat<?php echo $module; ?>" class="tabs">
      <?php foreach ($subcats as $subcat) { ?>
      <?php if (count($subcat['subproducts']) > $pmin) { ?>
      <li><a href="#tab-cat<?php echo $subcat['id']; ?>"><?php echo $subcat['name']; ?></a></li>
      <?php } ?>
      <?php } ?>
    </ul>
    <?php foreach ($subcats as $subcat) { ?>
    <?php if (count($subcat['subproducts']) > $pmin) { ?>
    <div id="tab-cat<?php echo $subcat['id']; ?>" class="tab_content" style="padding:0px; border: none;">
      <div class="box-product">
      <div class="owl-carousel latest_category_tabs">
            <?php foreach ($subcat['subproducts'] as $product) { ?>
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
                  <input type="button" value="<?php echo $button_cart; ?>"onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" />
                </div>
                <div class="wishlist"><a title="<?php echo $button_wishlist; ?>" onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a></div>
  <div class="compare"><a title="<?php echo $button_compare; ?>" onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $button_compare; ?></a></div>
                <div class="clear"></div>
              </div>
            <?php } ?>
        </div>
      </div>
    </div>
    
    
    <?php } ?>
    <?php } ?>
	
  </div>
</div>

<script type="text/javascript">
$(document).ready(function() {
	$("#latest_category<?php echo $module; ?> .owl-carousel.latest_category_tabs").owlCarousel({
		itemsCustom : [[320, 1],[600, 2],[768, 3],[992, <?php echo $this->config->get('marketshop_lpbc_slider_product_per_row'); ?>],[1199, <?php echo $this->config->get('marketshop_lpbc_slider_product_per_row'); ?>]],											   
		lazyLoad : true,
		navigation : true,
		navigationText: false,
		scrollPerPage : true,
});
$("#latest_category<?php echo $module; ?> .tab_content").addClass("deactive");
$("#latest_category<?php echo $module; ?> .tab_content:first").show();
	//Default Action
    $("#latest_category<?php echo $module; ?> ul#sub-cat<?php echo $module; ?> li:first").addClass("active").show(); //Activate first tab
    //On Click Event
    $("#latest_category<?php echo $module; ?> ul#sub-cat<?php echo $module; ?> li").click(function() {
        $("#latest_category<?php echo $module; ?> ul#sub-cat<?php echo $module; ?> li").removeClass("active"); //Remove any "active" class
        $(this).addClass("active"); //Add "active" class to selected tab
		$("#latest_category<?php echo $module; ?> .box-content .tab_content").hide(); 
        var activeTab = $(this).find("a").attr("href"); //Find the rel attribute value to identify the active tab + content
        $(activeTab).fadeIn(); //Fade in the active content
        return false;
    });
});
</script>
<?php } ?>