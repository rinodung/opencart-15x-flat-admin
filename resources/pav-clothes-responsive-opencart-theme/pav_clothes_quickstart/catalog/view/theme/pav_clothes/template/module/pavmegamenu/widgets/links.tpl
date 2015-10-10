<?php if( isset($links) ){ ?>
 <div class="widget-images box <?php echo $addition_cls ?>  <?php if( isset($stylecls)&&$stylecls ) { ?>box-<?php echo $stylecls;?><?php } ?>">
	<?php if( $show_title ) { ?>
	<span class="menu-title"><?php echo $heading_title?></span>
	<?php } ?>
	
	<div class="widget-inner box-content clearfix">
		<ul>
		  <?php foreach( $links as $key => $ac ) { ?>
		  <li ><a href="<?php echo $ac['link'];?>" ><?php echo $ac['text'];?></a></li>
		  <?php } ?>
		</ul>
	</div>
</div>
<?php } ?>