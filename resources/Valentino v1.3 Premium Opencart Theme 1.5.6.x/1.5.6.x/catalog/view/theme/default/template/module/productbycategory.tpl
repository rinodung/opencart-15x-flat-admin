    <div class="box">
      <div class="box-heading"><?php echo $category_info['name']; ?>  <div class="head-arrow"><i class="fa fa-caret-down"></i></div>
     	<a href="<?php echo $category_info['href']; ?>"><?php echo $viewall; ?></a>
      </div>
      <div class="box-content">
              <!-- First section -->
		    <ul class="box-product jcarousel-skin-opencart <?php echo ($display=="slider")?"SliderProductByCategory":""; ?>">
		      <?php foreach ($products as $product) { ?>
		      <li>
		        <?php if (isset($product['thumb']) && $product['thumb']) { ?>
		        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo (isset($product['name']))?$product['name']:""; ?>" /></a></div>
		        <?php } ?>
		        <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo (isset($product['name']))?$product['name']:""; ?></a></div>
		        <?php if (isset($product['price']) && $product['price']) { ?>
		        <div class="price">
		          <?php if (!$product['special']) { ?>
		          <?php echo $product['price']; ?>
		          <?php } else { ?>
		          <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
		          <?php } ?>
		        </div>
		        <?php } ?>
		        <?php if (isset($product['rating']) && $product['rating']) { ?>
		        <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
		        <?php } ?>
		        <div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" /></div>
		      </li>
		      <?php } ?>
		    </ul><!--/box-product-->
      </div><!--/box-content-->
    </div>
<script>
	$(function(){
		// Latest by products tabs
		$('.SliderProductByCategory').jcarousel({
			vertical: false,
			visible: 5,
			scroll: 3
		});
		
	});
</script>
	