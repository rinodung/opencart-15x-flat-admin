
<div class="widget-html box <?php echo $addition_cls ?>  <?php if( isset($stylecls)&&$stylecls ) { ?>box-<?php echo $stylecls;?><?php } ?>">
	<?php if( $show_title ) { ?>
	<div class="widget-heading box-heading"><?php echo $heading_title?></div>
	<?php } ?>
	<div class="widget-inner box-content clearfix">
		 <?php echo htmlspecialchars_decode( $html ); ?>
	</div>
</div>
