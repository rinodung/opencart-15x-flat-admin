<?php if( $show_title ) { ?>
<span class="menu-title"><?php echo $heading_title?></span>
<?php } ?>
<div class="widget-gallery-list <?php echo $addition_cls; ?>">
	<div class="widget-inner">
		<?php foreach ($thumbnailurl as $img) { ?>
		<img src="<?php echo $img; ?>" atr=""/>
		<?php } ?>
	</div>
</div>