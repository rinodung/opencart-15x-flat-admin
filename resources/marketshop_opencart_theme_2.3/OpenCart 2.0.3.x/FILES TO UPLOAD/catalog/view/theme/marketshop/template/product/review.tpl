<?php if ($reviews) { ?>
<div >
<?php foreach ($reviews as $review) { ?>
<table class="table table-striped table-bordered">
  <tr>
    <td style="width: 50%;"><strong ><span ><?php echo $review['author']; ?></span></strong></td>
    <td class="text-right"><span ><?php echo $review['date_added']; ?></span></td>
  </tr>
  <tr>
    <td colspan="2"><p><?php echo $review['text']; ?></p>
      <div class="rating"><?php for ($i = 1; $i <= 5; $i++) { ?>
      <?php if ($review['rating'] < $i) { ?>
      <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
      <?php } else { ?>
      <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
      <?php } ?>
      <?php } ?>
      </div></td>
  </tr>
</table>
<?php } ?>
</div>
<div class="text-right"><?php echo $pagination; ?></div>
<?php } else { ?>
<p><?php echo $text_no_reviews; ?></p>
<?php } ?>