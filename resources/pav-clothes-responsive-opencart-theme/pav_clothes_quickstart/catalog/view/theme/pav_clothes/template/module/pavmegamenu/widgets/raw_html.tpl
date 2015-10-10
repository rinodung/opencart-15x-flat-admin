<?php if ( isset($raw_html) ) { ?>
<div class="widget-raw-html box <?php echo $addition_cls ?>  <?php if( isset($stylecls)&&$stylecls ) { ?>box-<?php echo $stylecls;?><?php } ?>">
	<?php if( $show_title ) { ?><span class="menu-title"><?php echo $heading_title?></span><?php } ?>
	<div class="widget-inner block_content">
		<?php echo $raw_html; ?>
	</div>
</div>
<?php } ?>