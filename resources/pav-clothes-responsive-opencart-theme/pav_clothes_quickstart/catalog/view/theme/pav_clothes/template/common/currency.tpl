<?php if (count($currencies) > 1) { ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="currency">
  <ul>
  <li class="btn-group">
    <button class="btn-theme-normal dropdown-toggle" data-toggle="dropdown">
      <?php foreach ($currencies as $currency) { ?>
      <?php if ($currency['symbol_left'] && $currency['code'] == $code) { ?>
      <span><?php echo $currency['symbol_left']; ?></span>
      <?php } elseif ($currency['symbol_right'] && $currency['code'] == $code) { ?>
      <span><?php echo $currency['symbol_right']; ?></span>
      <?php } ?>
      <?php } ?>
      <span class="text-label"><?php echo $text_currency; ?></span>
      <span class="fa fa-sort-asc"></span>
    </button>
    <ul class="dropdown-menu">
      <?php foreach ($currencies as $currency) { ?>
      <?php if ($currency['symbol_left']) { ?>
      <li>
        <button class="currency-select" type="button" name="<?php echo $currency['code']; ?>"><span class="symbol"><?php echo $currency['symbol_left']; ?></span> <span><?php echo $currency['title']; ?></span></button>
      </li>
      <?php } else { ?>
      <li>
        <button class="currency-select" type="button" name="<?php echo $currency['code']; ?>"><span class="symbol"><?php echo $currency['symbol_right']; ?></span> <span><?php echo $currency['title']; ?></span></button>
      </li>
      <?php } ?>
      <?php } ?>
    </ul>
  </li>
</ul>
  <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
<?php } ?>
