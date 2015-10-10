<?php if ($reviews) { ?>
<?php foreach ($reviews as $review) { ?>
<div class="review-list" itemprop="review" itemscope itemtype="http://schema.org/Review">
  <div class="author" itemprop="author"><b><?php echo $review['author']; ?></b> <?php echo $text_on; ?> <span itemprop="datePublished"><?php echo $review['date_added']; ?></span></div>
  <div class="rating" itemprop="reviewRating" itemscope itemtype="http://schema.org/Rating"><span itemprop="ratingValue" style="display:none;"><?php echo $review['reviews']; ?></span><img src="catalog/view/theme/marketshop/image/stars-<?php echo $review['rating'] . '.png'; ?>" alt="<?php echo $review['reviews']; ?>" /></div>
  <div class="text" itemprop="description"><?php echo $review['text']; ?></div>
</div>
<?php } ?>
<div class="pagination"><?php echo $pagination; ?></div>
<?php } else { ?>
<div class="content"><?php echo $text_no_reviews; ?></div>
<?php } ?>
