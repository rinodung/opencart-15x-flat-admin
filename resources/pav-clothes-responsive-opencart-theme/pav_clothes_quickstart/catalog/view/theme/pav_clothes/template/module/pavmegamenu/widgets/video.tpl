<?php if ( isset($video_link) ) { ?>
<div class="widget box widget-video">
	<?php if( $show_title ) { ?>
	<span class="menu-title"><?php echo $heading_title?></span>
	<?php } ?>
	<div class="widget-inner box-content">
		<iframe src="<?php echo $video_link ?>" style="width:<?php echo $width; ?>px;height:<?php echo $height; ?>px;"></iframe>
		<?php if ( $subinfo ) { ?>
		<div><?php $subinfo ?></div>
		<?php } ?>
	</div>
</div>
<?php } ?>