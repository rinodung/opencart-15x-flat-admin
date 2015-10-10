    <?php require( PAVO_THEME_DIR."/template/common/config_layout.tpl" );  ?>
<?php echo $header; ?>    
<div class="container">


  <div class="row"><?php if( $SPAN[0] ): ?>
			<aside id="sidebar-left" class="col-md-<?php echo $SPAN[0];?> col-sm-12 col-xs-12">
				<?php echo $column_left; ?>
			</aside>	
		<?php endif; ?> 

   <section id="sidebar-main" class="col-md-<?php echo $SPAN[1];?>">
    <?php require( PAVO_THEME_DIR."/template/common/breadcrumb.tpl" );  ?>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <div id="content">
  <?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>

      <?php if ($products) { ?>
    <div class="table-responsive">
      <table class="compare-info table table-bordered">
        <thead>
          <tr>
            <td class="compare-product" colspan="<?php echo count($products) + 1; ?>"><?php echo $text_product; ?></td>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td><?php echo $text_name; ?></td>
            <?php foreach ($products as $product) { ?>
            <td class="name"><a href="<?php echo $products[$product['product_id']]['href']; ?>"><?php echo $products[$product['product_id']]['name']; ?></a></td>
            <?php } ?>
          </tr>
          <tr>
            <td><?php echo $text_image; ?></td>
            <?php foreach ($products as $product) { ?>
            <td><?php if ($products[$product['product_id']]['thumb']) { ?>
              <img src="<?php echo $products[$product['product_id']]['thumb']; ?>" alt="<?php echo $products[$product['product_id']]['name']; ?>" title="<?php echo $products[$product['product_id']]['name']; ?>" class="img-thumbnail" />
              <?php } ?></td>
            <?php } ?>
          </tr>
          <tr>
            <td><?php echo $text_price; ?></td>
            <?php foreach ($products as $product) { ?>
            <td><?php if ($products[$product['product_id']]['price']) { ?>
              <?php if (!$products[$product['product_id']]['special']) { ?>
              <?php echo $products[$product['product_id']]['price']; ?>
              <?php } else { ?>
              <span class="price-old"><?php echo $products[$product['product_id']]['price']; ?> </span> <span class="price-new"> <?php echo $products[$product['product_id']]['special']; ?> </span>
              <?php } ?>
              <?php } ?></td>
            <?php } ?>
          </tr>
          <tr>
            <td><?php echo $text_model; ?></td>
            <?php foreach ($products as $product) { ?>
            <td><?php echo $products[$product['product_id']]['model']; ?></td>
            <?php } ?>
          </tr>
          <tr>
            <td><?php echo $text_manufacturer; ?></td>
            <?php foreach ($products as $product) { ?>
            <td><?php echo $products[$product['product_id']]['manufacturer']; ?></td>
            <?php } ?>
          </tr>
          <tr>
            <td><?php echo $text_availability; ?></td>
            <?php foreach ($products as $product) { ?>
            <td><?php echo $products[$product['product_id']]['availability']; ?></td>
            <?php } ?>
          </tr>
          <?php if ($review_status) { ?>
          <tr>
            <td><?php echo $text_rating; ?></td>
            <?php foreach ($products as $product) { ?>
            <td class="rating"><?php for ($i = 1; $i <= 5; $i++) { ?>
              <?php if ($products[$product['product_id']]['rating'] < $i) { ?>
              <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
              <?php } else { ?>
              <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
              <?php } ?>
              <?php } ?>
              <br />
              <?php echo $products[$product['product_id']]['reviews']; ?></td>
            <?php } ?>
          </tr>
          <?php } ?>
          <tr>
            <td><?php echo $text_summary; ?></td>
            <?php foreach ($products as $product) { ?>
            <td class="description"><?php echo $products[$product['product_id']]['description']; ?></td>
            <?php } ?>
          </tr>
          <tr>
            <td><?php echo $text_weight; ?></td>
            <?php foreach ($products as $product) { ?>
            <td><?php echo $products[$product['product_id']]['weight']; ?></td>
            <?php } ?>
          </tr>
          <tr>
            <td><?php echo $text_dimension; ?></td>
            <?php foreach ($products as $product) { ?>
            <td><?php echo $products[$product['product_id']]['length']; ?> x <?php echo $products[$product['product_id']]['width']; ?> x <?php echo $products[$product['product_id']]['height']; ?></td>
            <?php } ?>
          </tr>
        </tbody>
        <?php foreach ($attribute_groups as $attribute_group) { ?>
        <thead>
          <tr>
            <td colspan="<?php echo count($products) + 1; ?>"><?php echo $attribute_group['name']; ?></td>
          </tr>
        </thead>
        <?php foreach ($attribute_group['attribute'] as $key => $attribute) { ?>
        <tbody>
          <tr>
            <td><?php echo $attribute['name']; ?></td>
            <?php foreach ($products as $product) { ?>
            <?php if (isset($products[$product['product_id']]['attribute'][$key])) { ?>
            <td><?php echo $products[$product['product_id']]['attribute'][$key]; ?></td>
            <?php } else { ?>
            <td></td>
            <?php } ?>
            <?php } ?>
          </tr>
        </tbody>
        <?php } ?>
        <?php } ?>
        <tr>
          <td></td>
						<?php foreach ($products as $product) { ?>
						<td><input type="button" value="<?php echo $button_cart; ?>" class="button btn btn-theme-default" onclick="cart.addcart('<?php echo $product['product_id']; ?>');" /></td>
						<?php } ?>
					</tr>
					<tr>
						<td></td>
						<?php foreach ($products as $product) { ?>
						<td class="remove"><a href="<?php echo $product['remove']; ?>" class="button btn btn-theme-default"><?php echo $button_remove; ?></a></td>
						<?php } ?>
					</tr>
				</table>
				
				</div>
				
				<div class="buttons">
					<div class="right"><a href="<?php echo $continue; ?>" class="button btn btn-theme-default"><?php echo $button_continue; ?></a></div>
				</div>
				<?php } else { ?>
				<div class="content"><div class="wrapper"><?php echo $text_empty; ?></div></div>
				<div class="buttons">
					<div class="right"><a href="<?php echo $continue; ?>" class="button btn btn-theme-default"><?php echo $button_continue; ?></a></div>
				</div>
		<?php } ?>
	<?php echo $content_bottom; ?></div>
</section> 

<?php if( $SPAN[2] ): ?>
	<aside id="sidebar-right" class="col-md-<?php echo $SPAN[2];?>">	
		<?php echo $column_right; ?>
	</aside>
<?php endif; ?></div>
</div>
<?php echo $footer; ?>