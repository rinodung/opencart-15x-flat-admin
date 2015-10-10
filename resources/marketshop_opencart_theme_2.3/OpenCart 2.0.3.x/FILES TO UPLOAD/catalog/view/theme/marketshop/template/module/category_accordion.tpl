<script type="text/javascript" src="catalog/view/theme/marketshop/js/jquery.dcjqaccordion.min.js"></script> 
<h3><?php echo $heading_title; ?></h3>
<div class="box-category"><?php echo $category_accordion; ?></div>
<script type="text/javascript">
$(document).ready(function() {
	$('#cat_accordion').cutomAccordion({
		classExpand : 'custom_id<?php echo $category_accordion_cid; ?>',
		menuClose: false,
		autoClose: true,
		saveState: false,
		disableLink: false,		
		autoExpand: true
	});
});
</script>
