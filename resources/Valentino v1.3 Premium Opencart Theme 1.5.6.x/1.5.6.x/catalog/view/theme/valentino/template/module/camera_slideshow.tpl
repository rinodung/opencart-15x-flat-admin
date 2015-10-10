<div class="<?php echo $span; ?>">
	<div id="<?php echo $module; ?>">
		<div class="camera_wrap camera_azure_skin" id="camera_wrap_1" style="direction: ltr">
			<?php foreach ($banners as $banner) { ?>
			<?php if ($banner['link']) { ?>
		    	<div data-link="<?php echo $banner['link']; ?>" data-thumb="<?php echo $banner['image']; ?>" data-src="<?php echo $banner['image']; ?>"></div>
		    <?php } else { ?>
		    	<div data-thumb="<?php echo $banner['image']; ?>" data-src="<?php echo $banner['image']; ?>"></div>
			<?php } ?>
		    <?php } ?>
		</div><!-- #camera_wrap_1 -->
	</div>
</div>