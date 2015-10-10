<div class="parallax parallax-<?php if($parallaxtype == 'image'){echo 'img-v';}else{echo 'color-v';};?> <?php echo $addition_cls;?> parallax-light space-80" sty>
    <div class="parallax-heading">
        <p class="parallax-icon">
        	<?php if($iconclass){?>
        	<i class="fa <?php echo $iconclass?>"></i>
	        <?php }elseif($iconurl && $iconfile){?>
	        	<img src="<?php echo $iconurl;?>" alt="<?php echo $heading_title?>"/>
	        <?php }?>
        </p>
        <?php if($show_title){?><h2><?php echo $heading_title;?></h2><?php }?>
        <p><?php echo $content_html;?></p>
    </div>
</div>
