<?php echo $header; ?><div class="container">
<div class="row">
<?php echo $column_left; ?>
<?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-lg-6 col-md-6 col-sm-12 col-xs-12'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-lg-9 col-md-9 col-sm-12 col-xs-12'; ?>
    <?php } else { ?>
    <?php $class = 'col-lg-12 col-md-12 col-sm-12 col-xs-12'; ?>
    <?php } ?>
<div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
    <h2><?php echo $heading_payment; ?></h2>
        <div style="float: left" id="amazon-wallet-widget"></div>
        <div style="clear: both;"></div>
        <div class="buttons" style="margin-top: 15px">
            <a href="<?php echo $back ?>" class="button left"><span><?php echo $text_back ?></span></a>
            <a class="button right" id="continue-button"><span><?php echo $text_continue ?></span></a>
        </div>
        <input type="hidden" name="payment_method" value="" />
    <?php echo $content_bottom; ?>
    <?php echo $column_right; ?>
    </div></div>
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
            merchantId: '<?php echo $merchant_id ?>',
            displayMode: 'edit',
            onPaymentSelect: function(widget){
                $("input[name='payment_method']").val('1');
            }
            
        }).render('amazon-wallet-widget');
        
    });
//--></script>
<?php echo $footer; ?>