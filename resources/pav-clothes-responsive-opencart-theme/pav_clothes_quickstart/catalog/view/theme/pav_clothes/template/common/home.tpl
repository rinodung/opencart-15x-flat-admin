<?php echo $header; ?> <?php require( PAVO_THEME_DIR."/template/common/config_layout.tpl" );  ?>
<?php
	$config = $this->registry->get('config'); 
	$themeConfig = (array)$config->get('themecontrol');
	$fullclass = isset($themeConfig['home_container_full'])&&$themeConfig['home_container_full']?"-full":""; 
?>

<div class="container<?php echo $fullclass; ?>">
  <div class="row"><?php if( $SPAN[0] ): ?>
			<aside id="sidebar-left" class="col-md-<?php echo $SPAN[0];?>">
				<?php echo $column_left; ?>
			</aside>	
		<?php endif; ?> 
  
   <div id="sidebar-main" class="col-md-<?php echo $SPAN[1];?>">
   	<div id="content"><?php echo $content_top; ?><?php echo $content_bottom; ?>
   	</div>
   </div> 
<?php if( $SPAN[2] ): ?>
	<aside id="sidebar-right" class="col-md-<?php echo $SPAN[2];?>">	
		<?php echo $column_right; ?>
	</aside>
<?php endif; ?></div>
</div>
<?php echo $footer; ?>