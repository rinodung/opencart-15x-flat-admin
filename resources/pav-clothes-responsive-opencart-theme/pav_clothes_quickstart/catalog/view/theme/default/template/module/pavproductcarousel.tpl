<?php
	$span = 12/$cols;
	$active = 'latest';
	$id = rand(1,9)+substr(md5($heading_title),0,3);
?>
<div class="<?php echo $prefix;?> box productcarousel" id="module<?php echo $id; ?>">
	<div class="font-icon"><i class="fa <?php echo $fontawesome;?>"></i></div>
	<div class="box-heading"><span><?php echo $heading_title; ?></span></div>
	<div class="box-content" >
 		<div class="box-products slide" id="productcarousel<?php echo $id;?>">
			<?php if( trim($message) ) { ?>
			<div class="box-description"><?php echo $message;?></div>
			<?php } ?>
			<?php if( count($products) > $itemsperpage ) { ?>
			<div class="carousel-controls">
				<a class="carousel-control left" href="#productcarousel<?php echo $id;?>"   data-slide="prev">&lsaquo;</a>
				<a class="carousel-control right" href="#productcarousel<?php echo $id;?>"  data-slide="next">&rsaquo;</a>
			</div>
			<?php } ?>
			<div class="carousel-inner ">
				<?php $pages = array_chunk( $products, $itemsperpage); ?>
				<?php foreach ($pages as  $k => $tproducts ) {   ?>
				<div class="item <?php if($k==0) {?>active<?php } ?> product-grid">
					<?php foreach( $tproducts as $i => $product ) {  $i=$i+1;?>
						<?php if( $i%$cols == 1 || $cols == 1) { ?>
						<div class="<?php echo (count($tproducts) - $cols +1);?> row box-product <?php ;if($i == count($tproducts) - $cols +1) { echo "last";} ?>"><?php //start box-product?>
						<?php } ?>
							<div class="col-lg-<?php echo $span;?> col-sm-<?php echo $span;?> col-xs-12 product-block <?php if($i%$cols == 0) { echo "last";} ?>">
								<div class="product-inner product-thumb"><?php //start product-inner?>
									<?php if ($product['thumb']) { ?>
									<div class="image">
										<?php if( $product['special'] ) {   ?>
											<div class="product-label-special label"><?php echo $objlang->get( 'text_sale' ); ?></div>
										<?php } ?>
										<a href="<?php echo $product['href']; ?>"><img id="image<?php echo $id;?>" data="<?php echo $product['product_id'];?>" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a>
									</div>
									<?php } ?>
									<div class="caption">
										<div class="name"><h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4></div>
										<div class="description"><?php echo utf8_substr( strip_tags($product['description']),0,58);?>...</div>
										<?php if ($product['price']) { ?>
										<div class="price">
											<?php if (!$product['special']) { ?>
											<?php echo $product['price']; ?>
											<?php } else { ?>
											<span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
											<?php } ?>
										</div>
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
							        <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
							        <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
							        <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
							      </div>
								</div><?php //end product-inner?>
							</div>

						<?php if( $i%$cols == 0 || $i==count($tproducts) ) { ?>
						</div><?php //end box-product?>
						<?php } ?>
					<?php } //endforeach; ?>
				</div>
			  <?php } ?>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript"><!--
	$('#productcarousel<?php echo $id;?>').carousel({interval:<?php echo ( $auto_play_mode?$interval:'false') ;?>,auto:<?php echo $auto_play;?>,pause:'hover'});
--></script>
