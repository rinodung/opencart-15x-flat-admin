<div class="box span12 latestBlogs">
	<div class="box-heading latestBlogHeading"><?php echo $heading_title; ?></div>
	<?php if( !empty($blogs) ) { ?>
	<div class="row">
		<?php foreach( $blogs as $key => $blog ) { $key = $key + 1;?>
		<div class="span6">
				<div class="blog-item-latest">
					<?php if( $blog['thumb']  )  { ?>
					<a href="<?php echo $blog['link'];?>" title="<?php echo $blog['title'];?>"><img src="<?php echo $blog['thumb'];?>" title="<?php echo $blog['title'];?>" align="left"/></a>
					<?php } ?>
					<div class="blog-body-latest">
						<h4 class="blog-title"><a href="<?php echo $blog['link'];?>" title="<?php echo $blog['title'];?>"><?php echo $blog['title'];?></a></h4>
						<div class="description"><?php echo utf8_substr( $blog['description'],0, 100 );?>...</div>
						<a href="<?php echo $blog['link'];?>" class="cartBtn"><?php echo $this->language->get('text_readmore');?></a>
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
