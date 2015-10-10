<?php 
	$span = 12/$cols; 
?>
<div class="box pav-block bloglatest nobackground">
	<div class="box-heading"><span><?php echo $heading_title; ?></span></div>
	<div class="box-content" >
		<?php if( !empty($blogs) ) { ?>
		<div class="pavblog-latest clearfix">
			<?php foreach( $blogs as $key => $blog ) { $key = $key + 1;?>
			<div class="col-lg-<?php echo $span;?> pavblock">
					<div class="blog-item">					
						<div class="blog-body clearfix">
							
							<div class="image clearfix">
								<?php if( $blog['thumb']  )  { ?>
									<img src="<?php echo $blog['thumb'];?>" title="<?php echo $blog['title'];?>" alt="<?php echo $blog['title'];?>">
								<?php } ?>
							</div>
							<div class="group-blog">
								<div class="blog-title">
									<a href="<?php echo $blog['link'];?>" title="<?php echo $blog['title'];?>"><?php echo $blog['title'];?></a>
								</div>

								<div class="description">
									<?php $blog['description'] = strip_tags($blog['description']); ?>
									<?php echo utf8_substr( $blog['description'],0, 200 );?>...
								</div>

								<p>
									<a href="<?php echo $blog['link'];?>" class="readmore"><?php echo $objlang->get('text_readmore');?></a>
								</p>
							</div>
							
						</div>	
					</div>
			</div>
			<?php if( ( $key%$cols==0 || $key == count($blogs)) ){  ?>
				<div class="clearfix"></div>
			<?php } ?>
			<?php } ?>
		</div>
		<?php } ?>
	</div>
 </div>
