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
  <div style="text-align:center;">
    <h2><?php echo $text_success_title; ?></h2>
    <p><?php echo $text_payment_success; ?></p>
    <div style="margin: 0 auto; width: 392px;" id="AmazonOrderDetail"></div>
  </div>
  <?php echo $content_bottom; ?>
</div>
<script type="text/javascript"><!--
  new CBA.Widgets.OrderDetailsWidget ({
    merchantId: "<?php echo $merchant_id; ?>",
    orderID: "<?php echo $amazon_order_id; ?>"
  }).render ("AmazonOrderDetail");
//--></script>
<?php echo $footer; ?>