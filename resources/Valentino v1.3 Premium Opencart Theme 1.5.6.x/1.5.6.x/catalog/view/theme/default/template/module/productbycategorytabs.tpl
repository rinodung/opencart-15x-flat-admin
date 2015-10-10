     <div class="box">
      <div class="box-heading"><?php echo $category_info['name']; ?> <div class="head-arrow"><i class="fa fa-caret-down"></i></div>
       <a href="<?php echo $category_info['href']; ?>"><?php echo $viewall; ?></a>
       </div>
      <div class="box-content productByCategoryTab" >	
        <ul class="nav nav-tabs" >
         <?php 
         if($ctabs){
         	$i=0;
         	foreach ($ctabs as $key => $cats) {
         		$active=($i==0)?"active":"";
				 ?>
		          <li class="<?php echo $active; ?>"><a rel="<?php echo $cats['category_id']?>" href="#tab<?php echo $cats['category_id']?>" class="active_tabs"><?php echo $cats['name']?></a></li>
					
				 <?php $i ++;
			 }
         }
         
         ?>
        </ul>	
              <!-- First section -->
             <?php 
             $z=0;
             foreach ($products as $k=>$valueproduct) { 
             	$active=($z==0)?"active":"";
             	?>
          	    <div class="tab-pane <?php echo $active; ?>"  id="tab<?php echo $k ?>">
                <ul  rel="<?php echo $k ?>" class="box-product jcarousel-skin-opencart <?php echo ($display=="slider")?" slidertabs slidertabs".$k:""; ?>">
                      <?php foreach ($valueproduct as $product) { ?>
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
          </div><!--/tab-pane-->
          <?php $z++; } ?>
      </div><!--/box-content-->
    </div>
<script>
	$(function(){
		// Latest by products tabs
		$('.slidertabs').jcarousel({
							vertical: false,
							visible: 5,
							scroll: 3
						});
		
		$(".productByCategoryTab").tabs();
	});
</script>