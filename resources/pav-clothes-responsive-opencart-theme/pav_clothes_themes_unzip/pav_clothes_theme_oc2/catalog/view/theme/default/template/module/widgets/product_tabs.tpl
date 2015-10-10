<?php
/******************************************************
 * @package Pav Product Tabs module for Opencart 1.5.x
 * @version 1.0
 * @author http://www.pavothemes.com
 * @copyright	Copyright (C) Feb 2012 PavoThemes.com <@emai:pavothemes@gmail.com>.All rights reserved.
 * @license		GNU General Public License version 2
*******************************************************/
	$span = 12/$cols;
	$active = 'latest';
	$id = rand(1,9)+rand();
	$themeConfig = (array)$this->config->get('themecontrol');
	$listingConfig = array(
		'category_pzoom'                     => 1,
		'quickview'                          => 0,
		'show_swap_image'                    => 0,
		'product_layout'		=> 'default',
		'enable_paneltool'	=> 0
	);
	$listingConfig     = array_merge($listingConfig, $themeConfig );
	$categoryPzoom 	    = $listingConfig['category_pzoom'];
	$quickview          = $listingConfig['quickview'];
	$swapimg            = $listingConfig['show_swap_image'];
	$categoryPzoom = isset($themeConfig['category_pzoom']) ? $themeConfig['category_pzoom']:0;
	$theme = $this->config->get('config_template');
	if( $listingConfig['enable_paneltool'] && isset($_COOKIE[$theme.'_productlayout']) && $_COOKIE[$theme.'_productlayout'] ){
		$listingConfig['product_layout'] = trim($_COOKIE[$theme.'_productlayout']);
	}
	$productLayout = DIR_TEMPLATE.$this->config->get('config_template').'/template/common/product/'.$listingConfig['product_layout'].'.tpl';
	if( !is_file($productLayout) ){
		$listingConfig['product_layout'] = 'default';
	}
	$productLayout = DIR_TEMPLATE.$this->config->get('config_template').'/template/common/product/'.$listingConfig['product_layout'].'.tpl';
	$button_cart = $this->language->get('button_cart');
	$tab = rand();
?>

<div class="widget-products box <?php $addition_cls?> <?php if ( isset($stylecls)&&$stylecls) { ?>box-<?php echo $stylecls; ?><?php } ?>">
	<?php if( $show_title ) { ?>
	<div class="widget-heading box-heading"><?php echo $heading_title?></div>
	<?php } ?>

  	<div class="<?php if($tabsstyle == 'tab-v2-r'){echo "tab-v2";}else{echo $tabsstyle;}?> <?php if($tabsstyle=='tab-v2'){echo "tabs-left";}elseif($tabsstyle=='tab-v3'){echo "tabs-right";}?> space-80">
  		<div class="tab-heading">
            <?php if( $show_title ) { ?>
			<h2 class="category widget-heading box-heading"><?php echo $heading_title?></h2>
			<?php } ?>
            <ul role="tablist" class="nav nav-tabs" id="product_tabs<?php echo $id;?>">
            	<?php foreach( $tabs as $tab => $products ) { if( empty($products) ){ continue;} ?>
	                <li>
	                    <a data-toggle="tab" role="tab" href="#tab-<?php if($tabsstyle=='tab-2'){echo $tab.'-left-'.$id;}elseif($tabsstyle=='tab-3'){echo $tab.'-right-'.$id;;}else{echo $tab.$id;}?>" aria-expanded="true"><i class="fa <?php if($tab == 'latest'){echo $icon_newest;}elseif($tab=='featured'){echo $icon_featured;}elseif($tab=='bestseller'){echo $icon_bestseller;}elseif($tab=='special'){echo $icon_special;}else{echo $icon_mostviews;};?>"></i><?php echo $objlang->get('text_'.$tab)?></a>
	                </li>
	            <?php } ?>
            </ul>
         </div>    
    </div>


	 <div class="tab-content">
		<?php foreach( $tabs as $tab => $products ) {
				if( empty($products) ){ continue;}
			?>
			<div class="tab-pane fade box-products  tabcarousel<?php echo $id; ?> slide" id="tab-<?php if($tabsstyle=='tab-2'){echo $tab.'-left-'.$id;}elseif($tabsstyle=='tab-3'){echo $tab.'-right-'.$id;;}else{echo $tab.$id;}?>">

				<?php if( count($products) > $itemsperpage ) { ?>
				<div class="carousel-controls">
				<a class="carousel-control left" href="#tab-<?php echo $tab.$id;?>"   data-slide="prev">&lsaquo;</a>
				<a class="carousel-control right" href="#tab-<?php echo $tab.$id;?>"  data-slide="next">&rsaquo;</a>
				</div>
				<?php } ?>
				<div class="carousel-inner ">
				 <?php
					$pages = array_chunk( $products, $itemsperpage);
				//	echo '<pre>'.print_r( $pages, 1 ); die;
				 ?>
				  <?php foreach ($pages as  $k => $tproducts ) {   ?>
						<div class="item <?php if($k==0) {?>active<?php } ?>">
							<?php foreach( $tproducts as $i => $product ) {  $i=$i+1;?>
								<?php if( $i%$cols == 1 ) { ?>
								  <div class="row box-product">
								<?php } ?>
									  <div class="col-lg-<?php echo $span;?> col-sm-<?php echo $span;?> col-xs-12">
									  <?php require( $productLayout );  ?>
									  </div>

							  <?php if( $i%$cols == 0 || $i==count($tproducts) ) { ?>
								 </div>
								<?php } ?>
							<?php } //endforeach; ?>
						</div>
				  <?php } ?>
				</div>
			</div>
		<?php } // endforeach of tabs ?>
	</div>
</div>


<script>
$(function () {
$('#product_tabs<?php echo $id;?> a:first').tab('show');
})
$('.tabcarousel<?php echo $id;?>').carousel({interval:<?php echo $auto_play;?>,pause:'hover'});
</script>