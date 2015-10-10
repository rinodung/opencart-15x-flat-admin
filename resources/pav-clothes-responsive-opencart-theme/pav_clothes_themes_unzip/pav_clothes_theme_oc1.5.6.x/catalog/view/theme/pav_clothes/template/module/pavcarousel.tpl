<?php $id = rand(1,9); $cols =  12/$columns; // echo $columns;die;?>
   <div id="pavcarousel<?php echo $id;?>" class="box nobackground carousel slide pavcarousel hidden-xs">
   		<div class="box-heading"><span><?php echo $this->language->get('text_shopby_brands');?></span></div>
		<div class="carousel-inner">
			 <?php foreach ($banners as $i => $banner) { $i=$i+1;?>
				<?php if($i%$columns==1) { ?>
				<div class="row-fluid item <?php if(($i-1)==0) {?>active<?php } ?>">
				<?php } ?>
				<div class="item-carousel col-xs-6 col-sm-2 col-lg-2 col-md-2">
					<div class="item-inner" >
						<?php if ($banner['link']) { ?>
						<a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a>
						<?php } else { ?>
						<img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
						<?php } ?>
					</div>
				</div>	
				<?php if( $i%$columns==0 || $i==count($banners)) { ?>
				</div>
				<?php } ?>
			<?php } ?>
		</div>
		<?php if( count($banners) > $columns ){ ?>	
		<a class="carousel-control left" href="#pavcarousel<?php echo $id;?>" data-slide="prev">&lsaquo;</a>
		<a class="carousel-control right" href="#pavcarousel<?php echo $id;?>" data-slide="next">&rsaquo;</a>
		<?php } ?>
    </div>
<?php if( count($banners) > 1 ){ ?>
<script type="text/javascript"><!--
 $('#pavcarousel<?php echo $id;?>').carousel({interval:false});
--></script>
<?php } ?>