<div class="blog-item">
	<?php if( $config->get('cat_show_title') ) { ?>
		<div class="blog-header clearfix">
			<h4 class="blog-title">	<a href="<?php echo $blog['link'];?>" title="<?php echo $blog['title'];?>"><?php echo $blog['title'];?></a></h4>
		</div>
	<?php } ?>	
	<div class="blog-body">
		<!-- image -->
		<?php if( $blog['thumb'] && $config->get('cat_show_image') )  { ?>
			<a href="<?php echo $blog['link'];?>"><img src="<?php echo $blog['thumb'];?>" title="<?php echo $blog['title'];?>" align="left"/></a>
		<?php } ?>
		<!-- meta -->
		<div class="blog-meta">
			<?php if( $config->get('cat_show_author') ) { ?>
			<span class="author"><!--<span><?php echo $this->language->get("text_write_by");?></span>--><?php echo $blog['author'];?></span>
			<?php } ?>
			
			<?php if( $config->get('cat_show_created') ) { ?>
			<span class="created"><?php echo date("d",strtotime($blog['created']));?> / <?php echo date("M",strtotime($blog['created']));?> / <?php echo date("Y",strtotime($blog['created']));?></span>
			<?php } ?>
				
			<?php if( $config->get('cat_show_category') ) { ?>
			<span class="publishin">
				<!--<span><?php echo $this->language->get("text_published_in");?></span>-->
				<a href="<?php echo $blog['category_link'];?>" title="<?php echo $blog['category_title'];?>"><?php echo $blog['category_title'];?></a>
			</span>
			<?php } ?>
			
			<?php if( $config->get('cat_show_hits') ) { ?>
			<span class="hits"><!--<span><?php echo $this->language->get("text_hits");?></span> --><?php echo $blog['hits'];?></span>
			<?php } ?>
			<?php if( $config->get('cat_show_comment_counter') ) { ?>
			<span class="comment_count"><!--<span><?php echo $this->language->get("text_comment_count");?></span> --><?php echo $blog['comment_count'];?></span>
			<?php } ?>
		</div>
		<!-- description -->
		<?php if( $config->get('cat_show_description') ) {?>
		<div class="description">
			<?php echo $blog['description'];?>
		</div>
		<?php } ?>
		<!-- read more -->
		<?php if( $config->get('cat_show_readmore') ) { ?>
			<a href="<?php echo $blog['link'];?>" class="cartBtn"><?php echo $this->language->get('text_readmore');?></a>
		<?php } ?>
	</div>	
</div>