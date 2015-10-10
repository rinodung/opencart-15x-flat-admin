<?php if ($products && !$subcats) { ?>

<h3><?php echo $category_name; ?>
  <?php if (!isset($this->request->get['path'])) { ?>
  - <a class="viewall" href="<?php echo $category_url; ?>"><?php echo $viewall; ?></a>
  <?php } ?>
</h3>
<div class="owl-carousel latest_category_carousel">
  <?php foreach ($products as $product) { ?>
  <div class="product-thumb">
    <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
    <div class="caption">
      <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
      <!--<p><?php echo $product['description']; ?></p>-->
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
<script type="text/javascript">
	$(document).ready(function() {
		$(".owl-carousel.latest_category_carousel").owlCarousel({
		itemsCustom : [[320, 1],[600, 2],[768, 3],[992, <?php global $config; echo $config->get('marketshop_lpbc_slider_product_per_row'); ?>],[1199, <?php echo $config->get('marketshop_lpbc_slider_product_per_row'); ?>]],											   
		lazyLoad : true,
		navigation : true,
		navigationText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
		scrollPerPage : true
    }); 
		});
</script>
<?php } elseif ($subcats) { ?>
<div class="category-module" id="latest_category<?php echo $module; ?>">
  <h3><?php echo $category_name; ?>
    <?php if (!isset($this->request->get['path'])) { ?>
    - <a class="viewall" href="<?php echo $category_url; ?>"><?php echo $viewall; ?></a>
    <?php } ?>
  </h3>
  <div class="category-module-content">
    <ul id="sub-cat<?php echo $module; ?>" class="tabs">
      <?php foreach ($subcats as $subcat) { ?>
      <?php if (count($subcat['subproducts']) > $pmin) { ?>
      <li><a href="#tab-cat<?php echo $subcat['id']; ?>-<?php echo $module; ?>"><?php echo $subcat['name']; ?></a></li>
      <?php } ?>
      <?php } ?>
    </ul>
    <?php foreach ($subcats as $subcat) { ?>
    <?php if (count($subcat['subproducts']) > $pmin) { ?>
    <div id="tab-cat<?php echo $subcat['id']; ?>-<?php echo $module; ?>" class="tab_content">
      <div class="owl-carousel latest_category_tabs">
        <?php foreach ($subcat['subproducts'] as $product) { ?>
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
    <?php } ?>
  </div>
</div>
<script type="text/javascript">
$(document).ready(function() {
	$("#content #latest_category<?php echo $module; ?> .owl-carousel.latest_category_tabs").owlCarousel({
		itemsCustom : [[320, 1],[600, 2],[768, 3],[992, <?php global $config; echo $config->get('marketshop_lpbc_slider_product_per_row'); ?>],[1199, <?php echo $config->get('marketshop_lpbc_slider_product_per_row'); ?>]],											   
		lazyLoad : true,
		navigation : true,
		navigationText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
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
		$("#latest_category<?php echo $module; ?> .tab_content").hide(); 
        var activeTab = $(this).find("a").attr("href"); //Find the rel attribute value to identify the active tab + content
        $(activeTab).fadeIn(); //Fade in the active content
        return false;
    });
});
</script>
<?php } ?>
