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
    <h2><?php echo $heading_title; ?></h2>
    <p><?php echo $text_payment_failed ?></p>
    <?php echo $content_bottom; ?>
    <?php echo $column_right; ?>
    </div></div>
</div>
<?php echo $footer; ?>