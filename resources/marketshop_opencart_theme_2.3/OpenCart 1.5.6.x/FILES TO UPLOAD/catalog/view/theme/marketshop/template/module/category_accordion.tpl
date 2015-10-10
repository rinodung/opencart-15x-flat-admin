<script type="text/javascript" src="catalog/view/theme/marketshop/js/jquery.dcjqaccordion.min.js"></script> 

<div class="box">

	<div class="box-heading"><?php echo $heading_title; ?></div>

	<div class="box-content box-category"><?php echo $category_accordion; ?></div>
	
</div>
<script type="text/javascript">
$(document).ready(function() {
	$('#cat_accordion').cutomAccordion({
		classExpand : 'custom_id<?php echo $category_accordion_cid; ?>',
		menuClose: false,
		autoClose: true,
		saveState: false,
		disableLink: false,
		<?php if($this->config->get('config_product_count')== 1) { ?>showCount : true,<?php } ?>
		autoExpand: true
		
	});
});
</script>
