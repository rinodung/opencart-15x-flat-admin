<?php echo $header; ?>
<div class="container">
  <?php require( PAVO_THEME_DIR."/template/common/config_layout.tpl" );  ?>
  <div class="row"><?php if( $SPAN[0] ): ?>
			<aside id="sidebar-left" class="col-md-<?php echo $SPAN[0];?>">
				<?php echo $column_left; ?>
			</aside>	
		<?php endif; ?> 
  
   <section id="sidebar-main" class="col-md-<?php echo $SPAN[1];?>">
     <?php require( PAVO_THEME_DIR."/template/common/breadcrumb.tpl" );  ?>
    <div id="content"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
      <?php if ($categories) { ?>
      <p><strong><?php echo $text_index; ?></strong>
        <?php foreach ($categories as $category) { ?>
        &nbsp;&nbsp;&nbsp;<a href="index.php?route=product/manufacturer#<?php echo $category['name']; ?>"><?php echo $category['name']; ?></a>
        <?php } ?>
      </p>

      <?php foreach ($categories as $category) { ?>
      <div class="manufacturer-list">
        <div class="manufacturer-heading"><h2 id="<?php echo $category['name']; ?>"><?php echo $category['name']; ?></h2></div>
        <div class="manufacturer-content">
          <?php if ($category['manufacturer']) { ?>
            <?php foreach (array_chunk($category['manufacturer'], 4) as $manufacturers) { ?>
              <ul>
                <?php foreach ($manufacturers as $manufacturer) { ?>
                <li><a href="<?php echo $manufacturer['href']; ?>"><?php echo $manufacturer['name']; ?></a></li>
                <?php } ?>
              </ul>
            <?php } ?>
          <?php } ?>
        </div>
      </div>
      <?php } ?>

      <?php } else { ?>
  <div class="content"><?php echo $text_empty; ?></div>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
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