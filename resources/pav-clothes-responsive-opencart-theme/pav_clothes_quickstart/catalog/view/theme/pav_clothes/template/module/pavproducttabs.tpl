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

$themeConfig = (array)$configs->get('themecontrol');
$listingConfig = array(
'category_pzoom'                     => 1,
'quickview'                          => 0,
'show_swap_image'                    => 0,
'product_layout'		=> 'default',
'enable_paneltool'	                 => 0
);
$listingConfig     = array_merge($listingConfig, $themeConfig );
$categoryPzoom 	    = $listingConfig['category_pzoom'];
$theme              = $configs->get('config_template');
if( $listingConfig['enable_paneltool'] && isset($_COOKIE[$theme.'_productlayout']) && $_COOKIE[$theme.'_productlayout'] ){
$listingConfig['product_layout'] = trim($_COOKIE[$theme.'_productlayout']);
}
$quickview          = $listingConfig['quickview'];
$swapimg            = $listingConfig['show_swap_image'];
$categoryPzoom = isset($themeConfig['category_pzoom']) ? $themeConfig['category_pzoom']:0;
$productLayout = DIR_TEMPLATE.$configs->get('config_template').'/template/common/product/'.$listingConfig['product_layout'].'.tpl';
if( !is_file($productLayout) ){
$listingConfig['product_layout'] = 'default';
}

$productLayout = DIR_TEMPLATE.$configs->get('config_template').'/template/common/product/'.$listingConfig['product_layout'].'.tpl';

?>
<div class="box producttabs <?php echo $module_class;?> ">
	<div class="box-products">
		<div class="tab-nav">
			<ul class="nav bullet" id="producttabs<?php echo $id;?>">
				<?php $i=0; foreach( $tabs as $tab => $products ) { $i++; if( empty($products) ){ continue;}  ?>
					<?php $active = ($i==1)?"class='active'":''; ?>
					<li <?php echo $active;?>><a href="#tab-<?php echo $tab.$id;?>" data-toggle="tab"><?php echo $objlang->get('text_'.$tab)?></a></li>
				<?php } ?>
			</ul>
		</div>
		<?php if( !empty($module_description) ) { ?>
		 <div class="box-description">
			<?php echo $module_description;?>
		 </div>
		 <?php } ?>
		<div class="tab-content box-content">
			<?php $i=0; foreach( $tabs as $tab => $products ) { $i++; if( empty($products) ){ continue;} ?>
				<?php $active = ($i==1)?"active":''; ?>
				<div class="tab-pane box-products tabcarousel<?php echo $id; ?> slide <?php echo $active;?>" id="tab-<?php echo $tab.$id;?>">
					<?php if( count($products) > $itemsperpage ) { ?>
					<div class="carousel-controls">
				<a class="carousel-control left" href="#tab-<?php echo $tab.$id;?>"   data-slide="prev">
				&lsaquo;</a>
				<a class="carousel-control right" href="#tab-<?php echo $tab.$id;?>"  data-slide="next">
					&rsaquo;
				</a>
					</div>
					<?php } ?>
					<div class="carousel-inner">
					<?php $pages = array_chunk( $products, $itemsperpage); ?>
					<?php foreach ($pages as  $k => $tproducts ) {   ?>
						<div class="item <?php if($k==0) {?>active<?php } ?>">
							<?php foreach( $tproducts as $i => $product ) {  $i=$i+1;?>
								<?php if( $i%$cols == 1 ) { ?>
	                                <div class="row box-product">
	                                    <?php } ?>
	                                    <div class="col-lg-<?php echo $span;?> col-md-<?php echo $span;?> col-sm-6 col-xs-12">
	                                        <?php require( $productLayout );  ?>
	                                    </div>
	                                    <?php if( $i%$cols == 0 || $i==count($tproducts) ) { ?>
	                                </div>
								<?php } ?>
							<?php } ?>
						</div>
					  <?php } ?>
					</div>
				</div>
			<?php } ?>
		</div>
	</div>
</div>
<script>
	$('.tabcarousel<?php echo $id;?>').carousel({interval:false,auto:false,pause:'hover'});
</script>
