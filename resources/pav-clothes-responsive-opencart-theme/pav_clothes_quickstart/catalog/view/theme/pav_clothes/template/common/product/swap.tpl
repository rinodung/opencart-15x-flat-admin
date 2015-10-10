
<?php $objlang = $this->registry->get('language');  $ourl = $this->registry->get('url');   ?>
<div class="product-block default" itemtype="http://schema.org/Product" itemscope>	
	<?php if ($product['thumb']) {    ?>
		<div class="image swap">
			<?php if( $product['special'] ) {   ?>
			<span class="product-label-special label"><span><?php echo $objlang->get( 'text_sale' ); ?></span></span>
			<?php } ?>
			<a class="img" itemprop="url" title="<?php echo $product['name']; ?>" href="<?php echo $product['href']; ?>">
				<img class="img-responsive" itemprop="image" src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" />
			</a>
			
		 	<?php if( isset($product['thumb2']) ){ ?>
		 	<div class="faceback hidden-xs hidden-sm">
				<a class="hover-image" href="<?php echo $product['href']; ?>"><img class="img-responsive" src="<?php echo $product['thumb2']; ?>" alt="<?php echo $product['name']; ?>"></a>
			</div>
			<?php } ?>

			<?php if( isset($categoryPzoom) && $categoryPzoom ) { $zimage = str_replace( "cache/","", preg_replace("#-\d+x\d+#", "",  $product['thumb'] ));  ?>
			<a href="<?php echo $zimage;?>" class="info-view colorbox product-zoom hidden-sm hidden-xs btn btn-default cboxElement" title="<?php echo $product['name']; ?>"><span class="fa fa-zoom-in"></span></a>
			<?php } ?>		

			<div class="quickview hidden-sm hidden-xs">
				<a class="btn btn-faint iframe-link pav-colorbox" href="<?php echo $ourl->link('themecontrol/product','product_id='.$product['product_id']);?>"  title="<?php echo $objlang->get('quick_view'); ?>" ><?php echo $objlang->get('quick_view'); ?></a>
			</div>
		</div>
	<?php } ?>
					 
	<div class="product-meta">
		<div class="warp-info">
			<h3 class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h3>
			<?php if( isset($product['description']) ){ ?> 
				<div class="description" itemprop="description"><?php echo utf8_substr( strip_tags($product['description']),0,220);?>...</div>
			<?php } ?>

			<?php if ( isset( $product['rating']) ) { ?>
              <div class="rating">
                <?php for ($is = 1; $is <= 5; $is++) { ?>
                <?php if ($product['rating'] < $is) { ?>
                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                <?php } else { ?>
                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                <?php } ?>
                <?php } ?>
              </div>
            <?php } ?>
			<?php if ($product['price']) { ?>
			 <div class="price-cart"> 
			 	<?php if (!$product['special']) {  ?>
					<span class="price"><?php echo $product['price']; ?></span>
					<?php if( preg_match( '#(\d+).?(\d+)#',  $product['price'], $p ) ) { ?> 
					<meta content="<?php echo $p[0]; ?>" itemprop="price">
					<?php } ?>
				<?php } else { ?>
					
					<span class="price-old"><?php echo $product['price']; ?></span> 
					<span class="price-new"><?php echo $product['special']; ?></span>
					<?php if( preg_match( '#(\d+).?(\d+)#',  $product['special'], $p ) ) { ?> 
					<meta content="<?php echo $p[0]; ?>" itemprop="price">
					<?php } ?>
				<?php } ?>

			</div>

			<?php } ?>
		</div>
	</div>
	<div class="group-item">
	<?php if( !isset($listingConfig['catalog_mode']) || !$listingConfig['catalog_mode'] ) { ?> 				
	    <div class="cart">
	      	<i class="fa fa-shopping-cart"></i>
	        <input type="button" value="<?php echo $objlang->get("button_cart"); ?>" onclick="cart.addcart('<?php echo $product['product_id']; ?>');" class="button" />
	    </div>
	<?php } ?>
	    <div class="wishlist-compare">
	    	<a class="wishlist fa fa-heart" onclick="wishlist.addwishlist('<?php echo $product['product_id']; ?>');"  title="<?php echo $objlang->get("button_wishlist"); ?>" ><span><?php echo $objlang->get("button_wishlist"); ?></span>
		  	</a>
		  	<a class="compare fa fa-retweet"  onclick="compare.addcompare('<?php echo $product['product_id']; ?>');" title="<?php echo $objlang->get("button_compare"); ?>" ><span><?php echo $objlang->get("button_compare"); ?></span>
		  	</a>
		</div>
	</div>			 
</div>