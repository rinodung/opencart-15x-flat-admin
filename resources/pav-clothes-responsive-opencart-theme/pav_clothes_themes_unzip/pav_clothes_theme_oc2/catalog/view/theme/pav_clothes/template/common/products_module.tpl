<?php 

	$config = $this->registry->get('config'); 

	$cols = 3;
	$span = 12/$cols;

	$themeConfig  	 			= (array)$config->get('themecontrol');
	$listingConfig  			= array( 		
		'category_pzoom' 		=> 1,
		'show_swap_image' 		=> 0,
		'quickview' 			=> 0,
		'product_layout'		=> 'default',
		'catalog_mode'			=> '',
	); 
	$listingConfig  			= array_merge($listingConfig, $themeConfig );
	$categoryPzoom 	    		= $listingConfig['category_pzoom'];
	$quickview 					= $listingConfig['quickview'];
	$swapimg 					= ($listingConfig['show_swap_image'])?'swap':'';
 

	$productLayout = DIR_TEMPLATE.$config->get('config_template').'/template/common/product/'.$listingConfig['product_layout'].'.tpl';	
	if( !is_file($productLayout) ){
		$listingConfig['product_layout'] = 'default';
	}
	$productLayout = DIR_TEMPLATE.$config->get('config_template').'/template/common/product/'.$listingConfig['product_layout'].'.tpl';	
	$ourl = $this->registry->get('url');  
?>
<div class="box-heading">
	<span><?php echo $heading_title; ?></span>
	<em class="line"></em>
</div>  
<div class="box-content">		
	<?php foreach ($products as $i => $product) { $i=$i+1; ?>
	<?php if( $i%$cols == 1 && $cols > 1 ) { ?>
	<div class="row products-row">
		<?php } ?> 
		<div class="col-lg-<?php echo $span;?> col-md-<?php echo $span;?> col-sm-6 col-xs-12 product-col">
			<?php require( $productLayout );  ?>   	
		</div>		
		<?php if( ($i%$cols == 0 || $i==count($products) ) && $cols > 1 ) { ?>
	</div>
	<?php } ?>			
	<?php } ?>		
</div>	