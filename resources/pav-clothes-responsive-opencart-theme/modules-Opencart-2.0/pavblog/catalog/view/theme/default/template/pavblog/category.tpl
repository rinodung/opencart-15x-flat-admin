<?php echo $header; ?>

<div class="container">

	<ul class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
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
		<!-- Start Div Content -->
			<div class="pav-header">
				<h1><?php echo $heading_title; ?></h1>
				<a class="rss-wrapper" href="<?php echo $category_rss;?>"><span class="icon-rss">Rss</span></a>	
			</div>  
			<div class="pav-category">
					<?php if( !empty($children) ) { ?>
					<div class="pav-children clearfix">
						<h3><?php echo $objlang->get('text_children');?></h3>
						<div class="children-wrap">
							
							<?php 
							$cols = (int)$config->get('children_columns');
							foreach( $children as $key => $sub )  { $key = $key + 1;?>
								<div class="pavcol<?php echo $cols;?>">
									<div class="children-inner">
										<h4>
										<a href="<?php echo $sub['link']; ?>" title="<?php echo $sub['title']; ?>"><?php echo $sub['title']; ?> (<?php echo $sub['count_blogs']; ?>)</a> 
										
										</h4>
										<?php if( $sub['thumb'] ) { ?>
											<img src="<?php echo $sub['thumb'];?>"/>
										<?php } ?>
										<div class="sub-description">
										<?php echo $sub['description']; ?>
										</div>
									</div>
								</div>
								<?php if( ( $key%$cols==0 || $cols == count($leading_blogs)) ){ ?>
									<div class="clearfix"></div>
								<?php } ?>
							<?php } ?>
						</div>
					</div>
					<?php } ?>
					<div class="pav-blogs">
						<?php
						$cols = $config->get('cat_columns_leading_blog');
						if( count($leading_blogs) ) { ?>
							<div class="leading-blogs clearfix">
								<?php foreach( $leading_blogs as $key => $blog ) { $key = $key + 1;?>
								<div class="pavcol<?php echo $cols;?>">
								<?php require( '_item.tpl' ); ?>
								</div>
								<?php if( ( $key%$cols==0 || $cols == count($leading_blogs)) ){ ?>
									<div class="clearfix"></div>
								<?php } ?>
								<?php } ?>
							</div>
						<?php } ?>

						<?php
							$cols = $config->get('cat_columns_secondary_blogs');
							if ( count($secondary_blogs) ) { ?>
							<div class="secondary clearfix">
								
								<?php foreach( $secondary_blogs as $key => $blog ) {  $key = $key+1; ?>
								<div class="pavcol<?php echo $cols;?>">
								<?php require( '_item.tpl' ); ?>
								</div>
								<?php if( ( $key%$cols==0 || $cols == count($leading_blogs)) ){ ?>
									<div class="clearfix"></div>
								<?php } ?>
								<?php } ?>
							</div>
						<?php } ?>
						<?php if( $total ) { ?>	
						<div class="pav-pagination pagination"><?php echo $pagination;?></div>
						<?php } ?>
					</div>
			</div>

		<!-- End Div Content -->
		<?php echo $content_bottom; ?></div>
		<!-- End Div Row -->
		<?php echo $column_right; ?>
	</div>
</div><!-- End Div Container -->
<?php echo $footer; ?>