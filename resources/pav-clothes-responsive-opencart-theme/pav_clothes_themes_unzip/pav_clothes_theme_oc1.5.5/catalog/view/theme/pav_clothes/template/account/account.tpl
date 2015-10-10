<?php require( DIR_TEMPLATE.$this->config->get('config_template')."/template/common/config.tpl" ); ?>
<?php echo $header; ?>

<?php if( $SPAN[0] ): ?>
	<aside class="col-lg-<?php echo $SPAN[0];?> col-sm-<?php echo $SPAN[0];?> col-xs-12">
	<?php echo $column_left; ?>
	</aside>
<?php endif; ?>

		<section class="col-lg-<?php echo $SPAN[1];?> col-sm-<?php echo $SPAN[1];?> col-xs-12">
			<?php if ($success) { ?>
		<div class="success"><?php echo $success; ?></div>
		<?php } ?>
		    <?php require( DIR_TEMPLATE.$this->config->get('config_template')."/template/common/breadcrumb.tpl" );  ?>  
			<div id="content"><?php echo $content_top; ?>
			  
			  <h1><?php echo $heading_title; ?></h1>
			  <h2><?php echo $text_my_account; ?></h2>
			  <div class="content">
				<ul class="list">
				  <li><i class="fa fa-angle-right"></i><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
				  <li><i class="fa fa-angle-right"></i><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
				  <li><i class="fa fa-angle-right"></i><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
				  <li><i class="fa fa-angle-right"></i><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
				</ul>
			  </div>
			  <h2><?php echo $text_my_orders; ?></h2>
			  <div class="content">
				<ul class="list">
				  <li><i class="fa fa-angle-right"></i><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
				  <li><i class="fa fa-angle-right"></i><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
				  <?php if ($reward) { ?>
				  <li><i class="fa fa-angle-right"></i><a href="<?php echo $reward; ?>"><?php echo $text_reward; ?></a></li>
				  <?php } ?>
				  <li><i class="fa fa-angle-right"></i><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
				  <li><i class="fa fa-angle-right"></i><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
				  <li><i class="fa fa-angle-right"></i><a href="<?php echo $recurring; ?>"><?php echo $text_recurring; ?></a></li>

				</ul>
			  </div>
			  <h2><?php echo $text_my_newsletter; ?></h2>
			  <div class="content">
				<ul class="list">
				  <li><i class="fa fa-angle-right"></i><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
				</ul>
			  </div>
		</div>  
  <?php echo $content_bottom; ?></section>
 
	<?php if( $SPAN[2] ): ?>
	<aside class="col-lg-<?php echo $SPAN[2];?> col-sm-<?php echo $SPAN[2];?> col-xs-12">	
		<?php echo $column_right; ?>
	</aside>
	<?php endif; ?>
	
<?php echo $footer; ?> 