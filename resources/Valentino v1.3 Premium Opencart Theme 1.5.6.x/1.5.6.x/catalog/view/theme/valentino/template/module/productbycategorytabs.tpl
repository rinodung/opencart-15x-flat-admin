    <div class="box marLeft30">
      <div class="box-heading">
      	<a href="<?php echo $category_info['href']; ?>"><?php echo $category_info['name']; ?></a>
      	<ul class="nav nav-tabs" id="myTab">
         <?php if($ctabs){ $i=0;
         	foreach ($ctabs as $key => $cats) {
         		$active=($i==0)?"active":"";
				 ?>
		          <li class="<?php echo $active; ?>"><a rel="<?php echo $cats['category_id']?>" href="#tab<?php echo $cats['category_id']?>"><?php echo $cats['name']?></a></li>
					
				 <?php $i ++;
		  }
		} ?>
        </ul>	
      </div>
      
      <div class="box-content">
          <div class="tab-content">
              <!-- First section -->
             <?php 
             $z=0;
             foreach ($products as $k=>$valueproduct) { 
             	$active=($z==0)?"active":"";
             	?>
          	    <div class="tab-pane <?php echo $active; ?>"  id="tab<?php echo $k ?>">
                <div rel="<?php echo $k ?>" class="box-product <?php echo ($display=="slider")?" slidertabs slidertabs".$k:""; ?>">
                      <?php foreach ($valueproduct as $product) { ?>
                      <div class="singleProduct">
				      	<!-- Thumb -->
						  <?php if ($product['thumb_swap']) { ?>
						  <div class="image">
						      <a href="<?php echo $product['href']; ?>">
						         <img oversrc="<?php echo $product['thumb_swap']; ?>" src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" style="border:none"/>
						      </a>
						  </div>
						  <?php } else {?>
						  <div class="image">
						      <a href="<?php echo $product['href']; ?>">
						          <img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" style="border:none"/>
						      </a>
						  </div>
						  <?php } ?>
				        <div class="infoWrap">
					        <!-- name -->
					        <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
					        <!-- rating -->
					        <div class="rating"><img src="catalog/view/theme/valentino/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
					        <!-- Price -->
				            <?php if ($product['price']) { ?>
				            <div class="price">
				              <?php if (!$product['special']) { ?>
				              <?php echo $product['price']; ?>
				              <?php } else { ?>
				              <span class="price-old"><?php echo $product['price']; ?></span>
				              <span class="price-new"><?php echo $product['special']; ?></span> 
				              <span class="sale">-<?php echo $product['saving']; ?>%</span>
				              <span class="saleIcon"><span class="rotate"><?php echo $text_sale ?></span></span>
				              <?php } ?>
				            </div>
				            <?php } ?>
				            <div class="clearfix"></div>
					        <!-- buttons -->
					        <input type="button" class="cartBtn" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" />
					        <ul class="btnGroup tooltip-title">
					        	<li class="wishBt"><input type="button" class="wish" onclick="addToWishList('<?php echo $product['product_id']; ?>');" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" /></li>
				            	<li class="compareBt"><input type="button" class="compare" onclick="addToCompare('<?php echo $product['product_id']; ?>');" data-toggle="tooltip" title="<?php echo $button_compare; ?>" /></li>
					        </ul>
					        <div class="clearfix"></div>
				        </div><!--/infoWrap-->
				      </div>
                      <?php } ?>
                  </div><!--/box-product-->
          </div><!--/tab-pane-->
          <?php $z++; } ?>

              
        </div><!--/tab-content-->
      </div><!--/box-content-->
    </div>

	