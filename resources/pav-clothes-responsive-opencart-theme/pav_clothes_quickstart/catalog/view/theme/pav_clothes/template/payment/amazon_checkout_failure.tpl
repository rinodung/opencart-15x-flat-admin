<?php echo $header; ?><?php if( $SPAN[0] ): ?>
			<aside id="sidebar-left" class="col-md-<?php echo $SPAN[0];?>">
				<?php echo $column_left; ?>
			</aside>	
		<?php endif; ?></section> 
<?php if( $SPAN[2] ): ?>
	<aside id="sidebar-right" class="col-md-<?php echo $SPAN[2];?>">	
		<?php echo $column_right; ?>
	</aside>
<?php endif; ?>
<div class="container"><?php echo $content_top; ?>
  <h2><?php echo $heading_title; ?></h2>
  <p><?php echo $text_payment_failed; ?></p>
  <?php echo $content_bottom; ?>
</div>
<?php echo $footer; ?>