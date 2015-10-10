<div class="box nopadding">
  <div class="box-heading"><span><?php echo $heading_title; ?></span></div>
  <div class="box-content">
    <ul class="tree">
      <?php if (!$logged) { ?>
      <li><a href="<?php echo $login; ?>"><i class="fa fa-angle-right"></i><?php echo $text_login; ?></a></li>
      <li><a href="<?php echo $register; ?>"><i class="fa fa-angle-right"></i><?php echo $text_register; ?></a></li>
      <li><a href="<?php echo $forgotten; ?>"><i class="fa fa-angle-right"></i><?php echo $text_forgotten; ?></a></li>
      <?php } ?>
      <li><a href="<?php echo $account; ?>"><i class="fa fa-angle-right"></i><?php echo $text_account; ?></a></li>
      <?php if ($logged) { ?>
      <li><a href="<?php echo $edit; ?>"><i class="fa fa-angle-right"></i><?php echo $text_edit; ?></a></li>
      <li><a href="<?php echo $password; ?>"><i class="fa fa-angle-right"></i><?php echo $text_password; ?></a></li>
      <?php } ?>
      <li><a href="<?php echo $payment; ?>"><i class="fa fa-angle-right"></i><?php echo $text_payment; ?></a></li>
      <li><a href="<?php echo $tracking; ?>"><i class="fa fa-angle-right"></i><?php echo $text_tracking; ?></a></li>
      <li><a href="<?php echo $transaction; ?>"><i class="fa fa-angle-right"></i><?php echo $text_transaction; ?></a></li>
      <?php if ($logged) { ?>
      <li><a href="<?php echo $logout; ?>"><i class="fa fa-angle-right"></i><?php echo $text_logout; ?></a></li>
      <?php } ?>
    </ul>
  </div>
</div>
