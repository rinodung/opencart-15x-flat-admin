<?php if ($products) { ?>
<h3><?php echo $manufacturer_name; ?> - <a class="viewall" href="<?php echo $manufacturer_url; ?>"><?php echo $viewall; ?></a></h3>
<div class="owl-carousel latest_brands_carousel">
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
		$(".owl-carousel.latest_brands_carousel").owlCarousel({
		itemsCustom : [[320, 1],[600, 2],[768, 3],[992, <?php global $config; echo $config->get('marketshop_latest_product_brand_per_row'); ?>],[1199, <?php echo $config->get('marketshop_latest_product_brand_per_row'); ?>]],											   
		lazyLoad : true,
		navigation : true,
		navigationText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
		scrollPerPage : true
    }); 
		});
</script>
<?php } ?>