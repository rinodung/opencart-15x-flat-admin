
<div class="widget-html <?php echo $addition_cls ?>  <?php if( isset($stylecls)&&$stylecls ) { ?>box-<?php echo $stylecls;?><?php } ?>">
	<?php if( $show_title ) { ?>
	<span class="menu-title"><?php echo $heading_title?></span>
	<?php } ?>
	<div class="widget-inner box-content clearfix">
		 <?php echo htmlspecialchars_decode( $html ); ?>
	</div>
</div>
