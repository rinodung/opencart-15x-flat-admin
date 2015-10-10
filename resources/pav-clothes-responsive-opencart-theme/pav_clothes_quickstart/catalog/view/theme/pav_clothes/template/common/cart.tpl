<div id="cart" class="pull-right">
  <div data-toggle="dropdown" data-loading-text="<?php echo $text_loading; ?>" class="media-body heading dropdown-toggle"> 
    <a><span id="cart-total" class="icon-cart"><span class="hidden-xs hidden-sm"><?php echo $text_items; ?></span></span></a>
  </div>
  <ul class="dropdown-menu pull-right">
    <?php if ($products || $vouchers) { ?>
    <li>
    <div class="mini-cart-info">
      <table>
        <?php foreach ($products as $product) { ?>
        <tr>
          <td class="image"><?php if ($product['thumb']) { ?>
            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
            <?php } ?></td>
          <td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
            <?php if ($product['option']) { ?>
            <?php foreach ($product['option'] as $option) { ?>
            <br />
            - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small>
            <?php } ?>
            <?php } ?>
            <?php if ($product['recurring']) { ?>
            <br />
            - <small><?php echo $text_recurring; ?> <?php echo $product['recurring']; ?></small>
            <?php } ?></td>
          <td class="quantity">x <?php echo $product['quantity']; ?></td>
          <td class="total"><?php echo $product['total']; ?></td>
          <td class="remove"><button type="button" onclick="cart.remove('<?php echo $product['key']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-xs"><i class="fa fa-times"></i></button></td>
        </tr>
        <?php } ?>
        <?php foreach ($vouchers as $voucher) { ?>
        <tr>
          <td class="image"></td>
          <td class="name"><?php echo $voucher['description']; ?></td>
          <td class="quantity">x&nbsp;1</td>
          <td class="total"><?php echo $voucher['amount']; ?></td>
          <td class="remove"><button type="button" onclick="voucher.remove('<?php echo $voucher['key']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-xs"><i class="fa fa-times"></i></button></td>
        </tr>
        <?php } ?>
      </table>
      </div>
    </li>
    <li>
      <div class="mini-cart-total">
        <table>
          <?php foreach ($totals as $total) { ?>
          <tr>
            <td class="text-right"><strong><?php echo $total['title']; ?></strong></td>
            <td class="text-right"><?php echo $total['text']; ?></td>
          </tr>
          <?php } ?>
        </table>
        <div class="checkout">
          <a class="button view-cart" href="<?php echo $cart; ?>"><?php echo $text_cart; ?></a>
          <a class="button checkout" href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a>
        </div>
      </div>
    </li>
    <?php } else { ?>
    <li>
      <p class="empty"><?php echo $text_empty; ?></p>
    </li>
    <?php } ?>
  </ul>
</div>
