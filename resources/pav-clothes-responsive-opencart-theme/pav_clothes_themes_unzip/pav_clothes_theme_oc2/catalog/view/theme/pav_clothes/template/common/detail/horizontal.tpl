<?php $objlang = $this->registry->get('language'); ?>
<?php if ($thumb || $images) { ?>
<div class="col-lg-5 col-md-5 col-sm-6 col-xs-12 image-container">
    <?php if ($thumb) { ?>
    <div class="image">

        <?php if( isset($date_available) && $date_available == date('Y-m-d')) {   ?>            
        <span class="product-label product-label-new">
            <span><?php echo 'New'; ?></span>  
        </span>                                             
        <?php } ?>  
        <?php if( $special )  { ?>          
            <span class="product-label exist">
                <span class="product-label-special label"><?php echo $objlang->get( 'text_sale' ); ?></span>
            </span>
        <?php } ?>

        <a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="info_colorbox">
            <img itemprop="image" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image"  data-zoom-image="<?php echo $popup; ?>" class="product-image-zoom img-responsive"/>
        </a>

    </div>
    <?php } ?>        
</div>      
<?php } ?>

<div class="col-lg-1 col-md-1 col-sm-2 col-xs-12 hidden-xs nopadding">
    <?php if ($images) { ?>
    <div class="image-additional slide carousel horizontal" id="image-additional">
        <div id="image-additional-carousel" class="carousel-inner">
            <?php 
            if( $productConfig['product_zoomgallery'] == 'slider' && $thumb ) {  
                $eimages = array( 0=> array( 'popup'=>$popup,'thumb'=> $thumb )  ); 
                $images = array_merge( $eimages, $images );
            }
            $icols = 3; $i= 0;
            foreach ($images as  $image) { ?>
                <?php if( (++$i)%$icols == 1 ) { ?>
                <div class="item clearfix">
                <?php } ?>
                    <a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" class="colorbox" data-zoom-image="<?php echo $image['popup']; ?>" data-image="<?php echo $image['popup']; ?>">
                        <img src="<?php echo $image['thumb']; ?>" style="max-width:<?php echo $config->get('config_image_additional_width');?>px"  title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" data-zoom-image="<?php echo $image['popup']; ?>" class="product-image-zoom img-responsive" />
                    </a>
                <?php if( $i%$icols == 0 || $i==count($images) ) { ?>
                </div>
              <?php } ?>
            <?php } ?>      
        </div>

        <!-- Controls -->
        <?php
        if(count($images)>3){
        ?>
        <div class="">
            <a class="carousel-control left bottom" href="#image-additional" data-slide="next">
                <i class="fa fa-angle-left"></i>
            </a>
            <a class="carousel-control right bottom" href="#image-additional" data-slide="prev">
                <i class="fa fa-angle-right"></i>
            </a>
        </div>
        <?php } ?>
    </div>          
    <script type="text/javascript">
        $('#image-additional .item:first').addClass('active');
        $('#image-additional').carousel({interval:false})
    </script>
    <?php } ?> 
</div>