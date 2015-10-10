<?php if (count($currencies) > 1) { ?>

<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="currency_form">
  <div id="currency"> <span>
    <?php if($this->config->get('marketshop_language_currency_title')== 1) {?>
    <?php echo $text_currency; ?>:
    <?php }  ?>
    <?php foreach ($currencies as $currency) { ?>
    <?php if ($currency['code'] == $currency_code) { ?>
    <?php if ($currency['symbol_left']) { ?>
    <a><?php echo $currency['symbol_left'];?> <?php echo $currency_code; ?></a>
    <?php } else { ?>
    <a><?php echo $currency_code; ?> <?php echo $currency['symbol_right'];?></a>
    <?php } ?>
    <?php }  ?>
    <?php } ?>
    <input type="hidden" name="currency_code" value="" />
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
    <b></b> </span>
    <ul>
      <?php foreach ($currencies as $currency) { ?>
      <li>
        <?php if ($currency['code'] == $currency_code) { ?>
        <?php if ($currency['symbol_left']) { ?>
        <a title="<?php echo $currency['title']; ?>"><b><?php echo $currency['symbol_left']; ?> - <?php echo $currency['title']; ?></b></a>
        <?php } else { ?>
        <a title="<?php echo $currency['title']; ?>"><b><?php echo $currency['symbol_right']; ?> - <?php echo $currency['title']; ?></b></a>
        <?php } ?>
        <?php } else { ?>
        <?php if ($currency['symbol_left']) { ?>
        <a title="<?php echo $currency['title']; ?>" onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>'); $('#currency_form').submit();"><?php echo $currency['symbol_left']; ?> - <?php echo $currency['title']; ?></a>
        <?php } else { ?>
        <a title="<?php echo $currency['title']; ?>" onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>'); $('#currency_form').submit();"><?php echo $currency['symbol_right']; ?> - <?php echo $currency['title']; ?></a>
        <?php } ?>
        <?php } ?>
      </li>
      <?php } ?>
      <input type="hidden" name="currency_code" value="" />
      <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
    </ul>
  </div>
</form>
<?php } ?>
