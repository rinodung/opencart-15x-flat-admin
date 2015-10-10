<?php if ( isset($thumbnailurl) )  { ?>
<div class="widget-images box <?php echo $addition_cls ?>  <?php if( isset($stylecls)&&$stylecls ) { ?>box-<?php echo $stylecls;?><?php } ?>">
	<?php if( $show_title ) { ?>
	<div class="widget-heading box-heading"><?php echo $heading_title?></div>
	<?php } ?>
	<div class="widget-inner box-content clearfix">
		 <div class="image-item">
		 	<img class="img-responsive" alt=" " src="<?php echo $thumbnailurl; ?>"/>
		 	<?php if( $ispopup ){ ?>
		 	<a href="<?php echo $imageurl; ?>" class="pts-popup fancybox" title="<?php echo $this->language->get('Large Image');?>"><span class="icon icon-expand"></span></a>
		 	<?php } ?>		  
		 </div>
	</div>
</div>
<?php } ?>