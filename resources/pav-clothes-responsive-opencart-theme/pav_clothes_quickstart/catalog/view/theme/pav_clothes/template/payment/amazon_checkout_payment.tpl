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
    <h3><?php echo $heading_payment; ?></h3>
    <div style="margin: 0 auto; width: 400px;" id="amazon-wallet-widget"></div>
  </div>
  <div style="clear: both;"></div>
  <div class="buttons">
    <div class="pull-left">
      <a href="<?php echo $back; ?>" class="button"><?php echo $text_back; ?></a>
    </div>
    <div class="pull-right">
      <input class="button" id="continue-button" type="submit" value="<?php echo $text_continue; ?>" />
    </div>
  </div>
  <input type="hidden" name="payment_method" value="" />
  <?php echo $content_bottom; ?>
</div>
<script type="text/javascript"><!--
  $(document).ready(function(){
    $('#continue-button').click(function(){
      $('div.warning').remove();

      if ($("input[name='payment_method']").val() == '1') {
        location = '<?php echo $continue ?>';
      } else {
        $('#amazon-wallet-widget').before('<div class="warning"><?php echo $error_payment_method ?></div>');
      }
    });

    new CBA.Widgets.WalletWidget({
      merchantId: '<?php echo $merchant_id; ?>',
      displayMode: 'edit',
      onPaymentSelect: function(widget){
        $("input[name='payment_method']").val('1');
      }

    }).render('amazon-wallet-widget');
  });
//--></script>
<?php echo $footer; ?>