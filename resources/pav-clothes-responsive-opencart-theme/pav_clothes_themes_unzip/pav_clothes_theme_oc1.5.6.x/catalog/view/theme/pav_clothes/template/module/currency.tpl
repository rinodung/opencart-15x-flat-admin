<?php if (count($currencies) > 1) { ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
<ul>
    <li class="btn-group">
        <button class="btn btn-theme-normal dropdown-toggle" data-toggle="dropdown">
                <?php foreach ($currencies as $currency) { ?>
                <?php if ($currency['symbol_left'] && $currency['code'] == $currency_code) { ?>
                <span><?php echo $currency['symbol_left']; ?></span>
                <?php } elseif ($currency['code'] == $currency_code) { ?>
                <span><?php echo $currency['symbol_right']; ?></span>
                <?php } ?>
                <?php } ?>
                <span class="text-label"><?php echo $text_currency; ?></span>
                <span class="fa fa-sort-asc"></span>
        </button>
        <ul class="dropdown-menu">
            <?php foreach ($currencies as $currency) { ?>
            <?php if ($currency['code'] == $currency_code) { ?>
            <?php if ($currency['symbol_left']) { ?>
            <li><a title="<?php echo $currency['title']; ?>"><span class="symbol"><?php echo $currency['symbol_left']; ?></span> <span><?php echo $currency['title']; ?></span></a></li>
            <?php } else { ?>
            <li><a title="<?php echo $currency['title']; ?>"><span class="symbol"><?php echo $currency['symbol_right']; ?></span> <span><?php echo $currency['title']; ?></span></a></li>
            <?php } ?>
            <?php } else { ?>
            <?php if ($currency['symbol_left']) { ?>
            <li><a onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>'); $(this).parent().parent().parent().parent().parent().submit();" title="<?php echo $currency['title']; ?>"><span class="symbol"><?php echo $currency['symbol_left']; ?></span> <span><?php echo $currency['title']; ?></span></a></li>
            <?php } else { ?>
            <li><a onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>'); $(this).parent().parent().parent().parent().parent().submit();" title="<?php echo $currency['title']; ?>"><span class="symbol"><?php echo $currency['symbol_right']; ?></span> <span><?php echo $currency['title']; ?></span></a></li>
            <?php } ?>
            <?php } ?>
            <?php } ?>
        </ul>
    </li>
</ul>
    <input type="hidden" name="currency_code" value="" />
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
<?php } ?>
