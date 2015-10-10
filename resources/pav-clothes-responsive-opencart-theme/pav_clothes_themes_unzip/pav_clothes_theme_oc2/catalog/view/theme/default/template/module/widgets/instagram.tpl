<div class="widget-gallery-list <?php echo $addition_cls; ?>">
	<div class="widget-inner">
		<?php  $i = 1;?>
		<?php foreach ($thumbnailurl as $img) {?>
			<?php if($i==$position){?>
				<div class="widget-heading box-heading" style="width:<?php echo $width_text;?>%;"><?php echo $heading_title?></div>
			<?php }?>
			<img src="<?php echo $img; ?>" width="<?php echo $width;?>" height="<?php echo $height;?>" atr=""/>
		<?php $i++; } ?>
	</div>
</div>