<?php if ($module['position'] == 'content_bottom' || $module['position'] == 'content_top') { ?>

<div class="box">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
    <div class="box-product">
      <div class="owl-carousel featured_carousel">
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
          <div class="clear"></div>
        </div>
        <?php } ?>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
	$(document).ready(function() {
		$(".owl-carousel.featured_carousel").owlCarousel({
		itemsCustom : [[320, 1],[600, 2],[768, 3],[992, <?php echo $this->config->get('marketshop_featured_slider_product_per_row'); ?>],[1199, <?php echo $this->config->get('marketshop_featured_slider_product_per_row'); ?>]],											   
		lazyLoad : true,
		navigation : true,
		navigationText: false,
		scrollPerPage : true
    }); 
		});
</script>
<?php } else { ?>
<div class="box">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
    <div class="product-grid-lr row">
      <?php foreach ($products as $product) { ?>
      <div>
        <?php if ($product['thumb']) { ?>
        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } ?>
        <div class="product-details">
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
        </div>
        <div class="clearfix"></div>
      </div>
      <?php } ?>
    </div>
  </div>
</div>
<?php } ?>
