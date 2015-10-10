<?php $olang = $this->registry->get('language'); ?>
<div class="product-filter clearfix">
  <div class="display">
    <div class="btn-group group-switch">
      <button type="button" id="list-view" class="btn btn-switch list" data-toggle="tooltip" title="<?php echo $button_list; ?>"></button>
      <button type="button" id="grid-view" class="btn btn-switch grid" data-toggle="tooltip" title="<?php echo $button_grid; ?>"></button>
    </div>
  </div>    
      <div class="limit form-control">
        <span><?php echo $text_limit; ?></span>
        <select id="input-limit" onchange="location = this.value;">
          <?php foreach ($limits as $limits) { ?>
          <?php if ($limits['value'] == $limit) { ?>
          <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
          <?php } else { ?>
          <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
          <?php } ?>
          <?php } ?>
        </select>
      </div>
     
      <div class="sort form-control">
        <span><?php echo $text_sort; ?></span>
        <select id="input-sort" onchange="location = this.value;">
          <?php foreach ($sorts as $sorts) { ?>
          <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
          <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
          <?php } else { ?>
          <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
          <?php } ?>
          <?php } ?>
        </select>
      </div>

      <div class="product-compare"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></div>

</div> 
 
