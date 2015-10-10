<?php if( $show_title ) { ?>
<span class="menu-title"><?php echo $heading_title?></span>
<?php } ?>

<div class="<?php echo $addition_cls; ?>">
	<ul>
		<?php foreach ($categories_list as $category){ ?>
		<li><a href="<?php echo $category['href']; ?>"><span class="title"><?php echo $category['name']; ?></span></a></li>
		<?php } ?>
	</ul>
</div>