<div class="box span12 carousel">
	<div class="row">
    <div class="span12"> <div class="box-heading brandHeading"><a href="index.php?route=product/manufacturer"><?php echo $heading_title; ?></a></div></div>
    <div id="carousel<?php echo $module; ?>">
    	<div class="span12 itemBrandWrap">
	    		<div class="row">
				    <?php foreach ($banners as $banner) { ?>
				    <div class="span2">
				    	<a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></a>
				    </div>
				    <?php } ?>
			    </div>
	    </div>
    </div>
    </div>
</div>

<script><!--
$('#carousel<?php echo $module; ?> div').jcarousel({
	vertical: false,
	visible: <?php echo $limit; ?>,
	scroll: <?php echo $scroll; ?>
});
//--></script>
