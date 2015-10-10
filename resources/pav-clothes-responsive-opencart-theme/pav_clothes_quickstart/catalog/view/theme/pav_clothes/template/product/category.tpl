<?php 
 $helper =  ThemeControlHelper::getInstance( $this->registry );
echo $header; ?>
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
      <?php if ($thumb || $description) { ?>
      <div class="category-info clearfix hidden-xs hidden-sm">
        <?php if ($thumb) { ?>
          <div class="image"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" class="img-responsive" /></div>
          <?php } ?>
          <?php if ($description) { ?>
          <div class="category-description description wrapper">
            <?php echo $description; ?>
          </div>
          <?php } ?>
      </div>
      <?php } ?>

      <?php if( true &&  $categories = $helper->getCategoriesById() ){   ?>
      <h4><?php echo $text_refine; ?></h4> 
	   <div class="category-list clearfix">
			  <div class="panel-body">  
 
					<?php $col=6; $i=0; $ncol = floor(12/$col); foreach( $categories as $category ){  $i++; ?>
            <?php if($i%$col==1) { ?>
            <div class="row">
            <?php } ?>
						<div class="col-lg-<?php echo $ncol; ?> col-md-3 col-sm-4"><div class="category-item">
							<?php if( $category['thumb'] ){ ?>
								   <div class="image">
                      <a href="<?php echo $category['href']; ?>">
                        <img src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>" class="img-responsive" />
                      </a>
                  </div>
							<?php } ?>
							  <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
						</div></div>
            <?php if( $i%$col==0 || $i==count($categories) ){ ?>
            </div>
            <?php } ?>
					<?php } ?>	       
        </div>
      </div>
        <?php } else if ($categories) { ?>
          <div class="refine-search">
          <h3><?php echo $text_refine; ?></h3>
            <?php if (count($categories) <= 5) { ?>
            <div class="row">
              <div class="col-sm-3">
                <ul>
                  <?php foreach ($categories as $category) { ?>
                  <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                  <?php } ?>
                </ul>
              </div>
            </div>
            <?php } else { ?>
            <div class="row">
              <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
              <div class="col-sm-3">
                <ul>
                  <?php foreach ($categories as $category) { ?>
                  <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                  <?php } ?>
                </ul>
              </div>
              <?php } ?>
            </div>
            <?php } ?>
         </div>    
      <?php } ?>
      <?php if ($products) { ?>
     
      <?php require( ThemeControlHelper::getLayoutPath( 'common/product_collection.tpl' ) );  ?> 
      <?php } ?>

        <?php if (!$categories && !$products) { ?>
        <div class="content"><div class="wrapper"><?php echo $text_empty; ?></div></div>
        <div class="buttons">
          <div class="right"><a href="<?php echo $continue; ?>" class="button btn btn-default"><?php echo $button_continue; ?></a></div>
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