<div class="timeline-service timeline-service-light list-unstyled">
<?php if($service_types == 'inline'){?>
<div class="col-md-3 col-sm-6 sm-space-50 text-center">
    <div class="icon-wrap-icon radius-x">
        <?php if($icon){?>
        	<i class="fa fa <?php echo $icon?>"></i>
        <?php }elseif($thumbnailurl){?>
        	<img src="<?php echo $thumbnailurl;?>" alt="<?php echo $heading_title?>"/>
        <?php }?>
    </div>
    <?php if($show_title){?><h3 class="space-30"><?php echo $heading_title;?></h3><?php }?>
    <p><?php echo $content;?></p>
</div>
<?php }elseif ($service_types == 'unstyled') { ?>
	<div class="list-unstyled timeline-service">
		<div class="timeline-badge radius-x"></div>
	        <div class="timeline-panel">
	            <?php if($show_title){?><h3><?php echo $heading_title;?></h3><?php }?>
	            <?php echo $content;?>
	            <?php if($icon){?>
	        	<i class="fa fa <?php echo $icon?>"></i>
		        <?php }elseif($thumbnailurl){?>
		        	<img src="<?php echo $thumbnailurl;?>" alt="<?php echo $heading_title?>"/>
		        <?php }?>
	        </div>
	    </div>
	</div>
<?php }else{?>
        <div class="timeline-inverted">
	        <div class="timeline-badge radius-x"></div>
	        <div class="timeline-panel">
	            <?php if($show_title){?><h3><?php echo $heading_title;?></h3><?php }?>
             	<?php echo $content;?>
	            <?php if($icon){?>
	        	<i class="fa fa <?php echo $icon?>"></i>
		        <?php }elseif($thumbnailurl){?>
		        	<img src="<?php echo $thumbnailurl;?>" alt="<?php echo $heading_title?>"/>
		        <?php }?>
	        </div>
	    </div>
<?php }?>
</div>
