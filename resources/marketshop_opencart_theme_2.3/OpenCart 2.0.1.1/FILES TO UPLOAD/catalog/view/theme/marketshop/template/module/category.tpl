<h3><?php echo $heading_title; ?></h3>
<div class="list-group">
<ul class="list-item">
  <?php foreach ($categories as $category) { ?>
  <?php if ($category['category_id'] == $category_id) { ?>
  <li><a href="<?php echo $category['href']; ?>" class="active"><?php echo $category['name']; ?></a></li>
  <?php if ($category['children']) { ?>
  <?php foreach ($category['children'] as $child) { ?>
  <?php if ($child['category_id'] == $child_id) { ?>
  <li><a href="<?php echo $child['href']; ?>" class="active">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a></li>
  <?php } else { ?>
  <li><a href="<?php echo $child['href']; ?>">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a></li>
  <?php } ?>
  <?php } ?>
  <?php } ?>
  <?php } else { ?>
  <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
  <?php } ?>
  <?php } ?>
  </ul>
</div>
