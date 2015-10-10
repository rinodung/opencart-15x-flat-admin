<?php echo $header; ?>
<div class="container">

  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="<?php echo $breadcrumb['href']; ?>" itemprop="url"><span itemprop="title"><?php echo $breadcrumb['text']; ?></span></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <div itemscope itemtype="http://schema.org/Product">
        <h1 itemprop="name"><?php echo $heading_title; ?></h1>
        <div class="row product-info">
          <?php if ($column_left && $column_right) { ?>
          <?php $class = 'col-sm-6'; ?>
          <?php } elseif ($column_left || $column_right) { ?>
          <?php $class = 'col-sm-6'; ?>
          <?php } else { ?>
          <?php $class = 'col-sm-5'; ?>
          <?php } ?>
          <?php global $config; $lang = (int)$config->get('config_language_id');?>
          <?php if ($thumb || $images) { ?>
          <?php if($config->get('marketshop_cloud_zoom')== 1) { ?>
          <div class="<?php echo $class; ?>">
            <script src="catalog/view/theme/marketshop/js/jquery.elevateZoom-3.0.8.min.js"></script>
            <script src="catalog/view/javascript/jquery/swipebox/lib/ios-orientationchange-fix.js"></script>
            <script src="catalog/view/javascript/jquery/swipebox/source/jquery.swipebox.min.js"></script>
            <link rel="stylesheet" href="catalog/view/javascript/jquery/swipebox/source/swipebox.css">
            <?php if ($thumb) { ?>
            <div class="image"><img class="img-responsive" itemprop="image" id="zoom_01" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" data-zoom-image="<?php echo $popup; ?>" /> </div>
            <?php } ?>
            <?php if($config->get('marketshop_cloud_zoom_gallery')== 1) {
    $marketshop_cloud_zoom_gallery_text = $config->get('marketshop_cloud_zoom_gallery_text'); { ?>
            <div class="center-block text-center "><span class="zoom-gallery"><i class="fa fa-search"></i> <?php echo $marketshop_cloud_zoom_gallery_text[$lang]; ?></span></div>
            <?php } ?>
            <?php } ?>
            <?php if ($images) { ?>
            <div class="image-additional" id="gallery_01">
              <?php if ($thumb) { ?>
              <a class="thumbnail" href="#" data-zoom-image="<?php echo $popup; ?>" data-image="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>"> <img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt = "<?php echo $heading_title; ?>"/></a>
              <?php } ?>
              <?php foreach ($images as $image) { ?>
              <a class="thumbnail" href="#" data-zoom-image="<?php echo $image['popup']; ?>" data-image="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
              <?php } ?>
            </div>
            <?php } else { ?>
            <div class="image-additional" id="gallery_01" style="display:none">
              <?php if ($thumb) { ?>
              <a style="display:none" class="thumbnail" href="#" data-zoom-image="<?php echo $popup; ?>" data-image="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>"> <img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt = "<?php echo $heading_title; ?>"/></a>
              <?php } ?>
            </div>
            <?php } ?>
            <?php if($config->get('marketshop_cloud_zoom_inner')== 1) { ?>
            <script type="text/javascript">
  $("#zoom_01").elevateZoom({zoomType: "inner"});
  </script>
            <?php } ?>
            <?php if ($direction == 'rtl') { ?>
            <script type="text/javascript">
  $("#zoom_01").elevateZoom({zoomWindowPosition: 11});
  </script>
            <?php } ?>
            <script type="text/javascript">
$("#zoom_01").elevateZoom({
	gallery:'gallery_01',
	cursor: 'pointer',
	galleryActiveClass: 'active',
	imageCrossfade: true,
	zoomWindowFadeIn: 500,
	zoomWindowFadeOut: 500,
	lensFadeIn: 500,
	lensFadeOut: 500,
	loadingIcon: 'catalog/view/theme/marketshop/image/progress.gif'}); 
<?php if($config->get('marketshop_cloud_zoom_gallery')== 1) { ?>
//////pass the images to swipebox
$("#zoom_01").bind("click", function(e) {
  var ez =   $('#zoom_01').data('elevateZoom');
	$.swipebox(ez.getGalleryList());
  return false;
});<?php } ?>
</script>
          </div>
          <?php } else { ?>
          <div class="<?php echo $class; ?>">
            <div class="thumbnails">
              <?php if ($thumb) { ?>
              <div class="image"><a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img itemprop="image" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></div>
              <?php } ?>
              <?php if ($images) { ?>
              <div class="image-additional">
                <?php foreach ($images as $image) { ?>
                <a class="thumbnail" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"> <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
                <?php } ?>
              </div>
              <?php } ?>
            </div>
          </div>
          <?php } ?>
          <?php } ?>
          <?php if ($column_left && $column_right) { ?>
          <?php $class = 'col-sm-6'; ?>
          <?php } elseif ($column_left || $column_right) { ?>
          <?php $class = 'col-sm-6'; ?>
          <?php } else { ?>
          <?php $class = 'col-sm-7'; ?>
          <?php } ?>
          <div class="<?php echo $class; ?>">
            <ul class="list-unstyled description">
              <?php if ($manufacturer) { ?>
              <li><b><?php echo $text_manufacturer; ?></b> <a href="<?php echo $manufacturers; ?>"><span itemprop="brand"><?php echo $manufacturer; ?></span></a></li>
              <?php } ?>
              <li><b><?php echo $text_model; ?></b> <span itemprop="mpn"><?php echo $model; ?></span></li>
              <?php if ($reward) { ?>
              <li><b><?php echo $text_reward; ?></b> <?php echo $reward; ?></li>
              <?php } ?>
              <li><b><?php echo $text_stock; ?></b> <?php echo $stock; ?></li>
            </ul>
            <?php if ($price) { ?>            
            <ul class="price-box" class="list-unstyled">
            <?php if (!$special) { ?>
            <li class="price" itemprop="offers" itemscope itemtype="http://schema.org/Offer"><span itemprop="price"><?php echo $price; ?></span><span itemprop="availability" content="<?php echo $stock; ?>"></span></li>
            <li></li>
            <?php } else { ?>
            <li class="price" itemprop="offers" itemscope itemtype="http://schema.org/Offer"><span class="price-old"><?php echo $price; ?></span> <span itemprop="price"><?php echo $special; ?><span itemprop="availability" content="<?php echo $stock; ?>"></span></span></li>
            <li></li>
            <?php } ?>
            <?php if ($tax) { ?>
            <li><?php echo $text_tax; ?> <?php echo $tax; ?></li>
            <?php } ?>
            <?php if ($points) { ?>
            <li><?php echo $text_points; ?> <?php echo $points; ?></li>
            <?php } ?>
            <?php if ($discounts) { ?>
            <li></li>
            <?php foreach ($discounts as $discount) { ?>
            <li><?php echo $discount['quantity']; ?><?php echo $text_discount; ?><?php echo $discount['price']; ?></li>
            <?php } ?>
            <?php } ?>
            </ul>
            <?php } ?>
            <div id="product">
              <?php if ($options) { ?>
              <h3><?php echo $text_option; ?></h3>
              <?php foreach ($options as $option) { ?>
              <?php if ($option['type'] == 'select') { ?>
              <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                  <option value=""><?php echo $text_select; ?></option>
                  <?php foreach ($option['product_option_value'] as $option_value) { ?>
                  <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                  <?php if ($option_value['price']) { ?>
                  (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                  <?php } ?>
                  </option>
                  <?php } ?>
                </select>
              </div>
              <?php } ?>
              <?php if ($option['type'] == 'radio') { ?>
              <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                <label class="control-label"><?php echo $option['name']; ?></label>
                <div id="input-option<?php echo $option['product_option_id']; ?>">
                  <?php foreach ($option['product_option_value'] as $option_value) { ?>
                  <div class="radio">
                    <label>
                      <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                      <?php echo $option_value['name']; ?>
                      <?php if ($option_value['price']) { ?>
                      (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                      <?php } ?>
                    </label>
                  </div>
                  <?php } ?>
                </div>
              </div>
              <?php } ?>
              <?php if ($option['type'] == 'checkbox') { ?>
              <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                <label class="control-label"><?php echo $option['name']; ?></label>
                <div id="input-option<?php echo $option['product_option_id']; ?>">
                  <?php foreach ($option['product_option_value'] as $option_value) { ?>
                  <div class="checkbox">
                    <label>
                      <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                      <?php echo $option_value['name']; ?>
                      <?php if ($option_value['price']) { ?>
                      (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                      <?php } ?>
                    </label>
                  </div>
                  <?php } ?>
                </div>
              </div>
              <?php } ?>
              <?php if ($option['type'] == 'image') { ?>
              <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                <label class="control-label"><?php echo $option['name']; ?></label>
                <div id="input-option<?php echo $option['product_option_id']; ?>">
                  <?php foreach ($option['product_option_value'] as $option_value) { ?>
                  <div class="radio">
                    <label>
                      <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                      <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> <?php echo $option_value['name']; ?>
                      <?php if ($option_value['price']) { ?>
                      (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                      <?php } ?>
                    </label>
                  </div>
                  <?php } ?>
                </div>
              </div>
              <?php } ?>
              <?php if ($option['type'] == 'text') { ?>
              <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
              </div>
              <?php } ?>
              <?php if ($option['type'] == 'textarea') { ?>
              <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
              </div>
              <?php } ?>
              <?php if ($option['type'] == 'file') { ?>
              <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                <label class="control-label"><?php echo $option['name']; ?></label>
                <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
                <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
              </div>
              <?php } ?>
              <?php if ($option['type'] == 'date') { ?>
              <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                <div class="input-group date">
                  <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                  <span class="input-group-btn">
                  <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                  </span></div>
              </div>
              <?php } ?>
              <?php if ($option['type'] == 'datetime') { ?>
              <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                <div class="input-group datetime">
                  <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                  <span class="input-group-btn">
                  <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                  </span></div>
              </div>
              <?php } ?>
              <?php if ($option['type'] == 'time') { ?>
              <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                <div class="input-group time">
                  <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                  <span class="input-group-btn">
                  <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                  </span></div>
              </div>
              <?php } ?>
              <?php } ?>
              <?php } ?>
              <?php if ($recurrings) { ?>
              <hr>
              <h3><?php echo $text_payment_recurring ?></h3>
              <div class="form-group required">
                <select name="recurring_id" class="form-control">
                  <option value=""><?php echo $text_select; ?></option>
                  <?php foreach ($recurrings as $recurring) { ?>
                  <option value="<?php echo $recurring['recurring_id'] ?>"><?php echo $recurring['name'] ?></option>
                  <?php } ?>
                </select>
                <div class="help-block" id="recurring-description"></div>
              </div>
              <?php } ?>
              <?php if ($minimum > 1) { ?>
              <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
              <?php } ?>
              <div class="cart">
                <div>
                  <div class="qty">
                    <label class="control-label" for="input-quantity"><?php echo $entry_qty; ?></label>
                    <input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
                    <a class="qtyBtn plus" href="javascript:void(0);">+</a><br />
                    <a class="qtyBtn mines" href="javascript:void(0);">-</a>
                    <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                    <div class="clear"></div>
                  </div>
                  <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary btn-lg"><?php echo $button_cart; ?></button>
                </div>
                <div>
                  <button type="button" class="wishlist" onclick="wishlist.add('<?php echo $product_id; ?>');"><i class="fa fa-heart"></i> <?php echo $button_wishlist; ?></button>
                  <br />
                  <button type="button" class="wishlist" onclick="compare.add('<?php echo $product_id; ?>');"><i class="fa fa-exchange"></i> <?php echo $button_compare; ?></button>
                </div>
              </div>
            </div>
            <?php if ($review_status) { ?>
            <div class="rating" itemprop="aggregateRating" itemscope itemtype="http://schema.org/AggregateRating">
            <meta itemprop="ratingValue" content="<?php echo $rating; ?>" />
              <p>
                <?php for ($i = 1; $i <= 5; $i++) { ?>
                <?php if ($rating < $i) { ?>
                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                <?php } else { ?>
                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                <?php } ?>
                <?php } ?>
                <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><span itemprop="reviewCount"><?php echo $reviews; ?></span></a> / <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $text_write; ?></a></p>
            </div>
            <?php } ?>
            <?php if($config->get('marketshop_share_plugin')== 1) { ?>
            <hr>
            <!-- AddThis Button BEGIN -->
            <?php if($config->get('marketshop_share_plugin_style')== 1) { ?>
            <div class="addthis_toolbox addthis_default_style"> <a class="addthis_button_facebook_like" fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_google_plusone" g:plusone:size="medium"></a> <a class="addthis_button_pinterest_pinit" pi:pinit:layout="horizontal" pi:pinit:url="http://www.addthis.com/features/pinterest" pi:pinit:media="http://www.addthis.com/cms-content/images/features/pinterest-lg.png"></a> <a class="addthis_counter addthis_pill_style"></a> </div>
            <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-514863386b357649"></script>
            <?php } ?>
            <?php if($config->get('marketshop_share_plugin_style')== 2) { ?>
            <div class="addthis_toolbox addthis_default_style addthis_32x32_style"> <a class="addthis_button_facebook"></a> <a class="addthis_button_twitter"></a> <a class="addthis_button_google_plusone_share"></a> <a class="addthis_button_pinterest_share"></a> <a class="addthis_button_compact"></a><a class="addthis_counter addthis_bubble_style"></a> </div>
            <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-514863386b357649"></script>
            <?php } ?>
            <?php if($config->get('marketshop_share_plugin_style')== 3) { ?>
            <div class="addthis_toolbox addthis_default_style addthis_16x16_style"> <a class="addthis_button_facebook"></a> <a class="addthis_button_twitter"></a> <a class="addthis_button_google_plusone_share"></a> <a class="addthis_button_pinterest_share"></a> <a class="addthis_button_compact"></a><a class="addthis_counter addthis_bubble_style"></a> </div>
            <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-514863386b357649"></script>
            <?php } ?>
            <!-- AddThis Button END -->
            <?php } ?>
            <?php if ($tags) { ?>
            <hr>
            <p><?php echo $text_tags; ?>
              <?php for ($i = 0; $i < count($tags); $i++) { ?>
              <?php if ($i < (count($tags) - 1)) { ?>
              <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
              <?php } else { ?>
              <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
              <?php } ?>
              <?php } ?>
            </p>
            <?php } ?>
          </div>
        </div>
        <ul class="nav nav-tabs">
          <li class="active"><a href="#tab-description" data-toggle="tab"><?php echo $tab_description; ?></a></li>
          <?php if ($attribute_groups) { ?>
          <li><a href="#tab-specification" data-toggle="tab"><?php echo $tab_attribute; ?></a></li>
          <?php } ?>
          <?php if ($review_status) { ?>
          <li><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>
          <?php } ?>
        </ul>
        <div class="tab-content">
          <div class="tab-pane active" id="tab-description" itemprop="description"><?php echo $description; ?></div>
          <?php if ($attribute_groups) { ?>
          <div class="tab-pane" id="tab-specification">
            <table class="table table-bordered">
              <?php foreach ($attribute_groups as $attribute_group) { ?>
              <thead>
                <tr>
                  <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
                </tr>
              </thead>
              <tbody>
                <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                <tr>
                  <td><?php echo $attribute['name']; ?></td>
                  <td><?php echo $attribute['text']; ?></td>
                </tr>
                <?php } ?>
              </tbody>
              <?php } ?>
            </table>
          </div>
          <?php } ?>
          <?php if ($review_status) { ?>
          <div class="tab-pane" id="tab-review">
            <form class="form-horizontal">
              <div id="review"></div>
              <h2><?php echo $text_write; ?></h2>
              <?php if ($review_guest) { ?>
              <div class="form-group required">
                <div class="col-sm-12">
                  <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                  <input type="text" name="name" value="" id="input-name" class="form-control" />
                </div>
              </div>
              <div class="form-group required">
                <div class="col-sm-12">
                  <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                  <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                  <div class="help-block"><?php echo $text_note; ?></div>
                </div>
              </div>
              <div class="form-group required">
                <div class="col-sm-12">
                  <label class="control-label"><?php echo $entry_rating; ?></label>
                  &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                  <input type="radio" name="rating" value="1" />
                  &nbsp;
                  <input type="radio" name="rating" value="2" />
                  &nbsp;
                  <input type="radio" name="rating" value="3" />
                  &nbsp;
                  <input type="radio" name="rating" value="4" />
                  &nbsp;
                  <input type="radio" name="rating" value="5" />
                  &nbsp;<?php echo $entry_good; ?></div>
              </div>
              <div class="form-group required">
                <div class="col-sm-12">
                  <label class="control-label" for="input-captcha"><?php echo $entry_captcha; ?></label>
                  <input type="text" name="captcha" value="" id="input-captcha" class="form-control" />
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-12"> <img src="index.php?route=tool/captcha" alt="" id="captcha" /> </div>
              </div>
              <div class="buttons">
                <div class="pull-right">
                  <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $button_continue; ?></button>
                </div>
              </div>
              <?php } else { ?>
              <?php echo $text_login; ?>
              <?php } ?>
            </form>
          </div>
          <?php } ?>
        </div>
        <?php if ($products) { ?>
        <h3><?php echo $text_related; ?></h3>
        <div class="owl-carousel related_pro">
          <?php foreach ($products as $product) { ?>
          <div class="product-thumb clearfix">
            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
            <div class="caption">
              <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
              <!--<p><?php echo $product['description']; ?></p>-->
              <?php if ($product['price']) { ?>
              <p class="price">
                <?php if (!$product['special']) { ?>
                <?php echo $product['price']; ?>
                <?php } else { ?>
                <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                <?php global $config; if($config->get('marketshop_percentage_discount_badge')== 1) { ?>
                <span class="saving">-<?php echo $product['saving']; ?>%</span>
                <?php } ?>
                <?php } ?>
              </p>
              <?php } ?>
              <?php if ($product['rating']) { ?>
              <div class="rating">
                <?php for ($i = 1; $i <= 5; $i++) { ?>
                <?php if ($product['rating'] < $i) { ?>
                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                <?php } else { ?>
                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                <?php } ?>
                <?php } ?>
              </div>
              <?php } ?>
            </div>
            <div class="button-group">
              <button class="btn-primary" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span></button>
              <div class="add-to-links">
                <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
                <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
              </div>
            </div>
          </div>
          <?php } ?>
        </div>
        <script type="text/javascript">
	$(document).ready(function() {
		$(".owl-carousel.related_pro").owlCarousel({
		itemsCustom : [[320, 1],[600, 2],[768, 3],[992, <?php echo $config->get('marketshop_related_slider_product_per_row'); ?>],[1199, <?php echo $config->get('marketshop_related_slider_product_per_row'); ?>]],											   
		lazyLoad : true,
		navigation : true,
		navigationText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
		scrollPerPage : true
    }); 
		});
</script>
        <?php } ?>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			
			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));
						
						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}
				
				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}
				
				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}
			
			if (json['success']) {
				$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
				
				$('#cart-total').html(json['total']);
				
				$('html, body').animate({ scrollTop: 0 }, 'slow');
				
				$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;
	
	$('#form-upload').remove();
	
	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');
	
	$('#form-upload input[name=\'file\']').trigger('click');
	
	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);
			
			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();
					
					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}
					
					if (json['success']) {
						alert(json['success']);
						
						$(node).parent().find('input').attr('value', json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
  e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
			$('#captcha').attr('src', 'index.php?route=tool/captcha#'+new Date().getTime());
			$('input[name=\'captcha\']').val('');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();
			
			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}
			
			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');
				
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
				$('input[name=\'captcha\']').val('');
			}
		}
	});
});

<?php if($config->get('marketshop_cloud_zoom')== 2) { ?>
$(document).ready(function() {
	$('.thumbnails').magnificPopup({
		type:'image',
		delegate: 'a',
		gallery: {
			enabled:true
		}
	});
});
<?php } ?>
//--></script>

<?php echo $footer; ?>