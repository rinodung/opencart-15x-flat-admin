<?php $id = rand(1,10); $span =  12/$columns; ?>
    <div id="pavcarousel<?php echo $id;?>" class="carousel slide pavcarousel">
    		<div class="box-heading">
			<span><?php echo $this->language->get('text_logo_brand');?></span>
		</div>
		<div class="carousel-inner">
			<?php

			$pages = array_chunk( $banners, $itemsperpage );?>

			<?php foreach ($pages as $k => $tbanners) {?>
			<div class="item <?php if($k==0) {?>active<?php } ?> no-margin">
				<?php foreach( $tbanners as $i => $banner ) {  $i=$i+1;?>
					<?php if( $i%$columns == 1 ) { ?>
					<div class="row">
					<?php } ?>

					<div class="span<?php echo $span;?>">
						<div class="item-inner">
							<?php if ($banner['link']) { ?>
							<a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
							<?php } else { ?>
							<img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
							<?php } ?>
						</div>
					</div>

					<?php if( $i%$columns == 0 || $i==count($tbanners) ) { ?>
					</div>
					<?php } ?>
				<?php } //endforeach; banner ?>
			</div>
			<?php } //endforeach; pages?>	
		</div>

		<?php if( count($banners) > $itemsperpage ){ ?>	
		<div class="carousel-controls">
			<a class="carousel-control left" href="#pavcarousel<?php echo $id;?>" data-slide="prev">&lsaquo;</a>
			<a class="carousel-control right" href="#pavcarousel<?php echo $id;?>" data-slide="next">&rsaquo;</a>
		</div>		
		<?php } ?>

    </div>
<?php if( count($banners) > 1 ){ ?>
<script type="text/javascript"><!--
 $('#pavcarousel<?php echo $id;?>').carousel({interval:false});
--></script>
<?php } ?>