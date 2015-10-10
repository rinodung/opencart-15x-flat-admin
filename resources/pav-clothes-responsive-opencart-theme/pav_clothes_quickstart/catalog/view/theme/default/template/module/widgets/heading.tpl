<?php if (isset($widget_heading) && !empty($widget_heading)) {?>
<div class="widget-accordion block <?php echo $addition_cls;?> <?php if (isset($stylecls)&&$stylecls){echo "block-".$stylecls;}?>">
	<div class="space-padding-tb-50">
        <div class="box-heading">
            <div class="heading <?php if ($headingstyle != 'heading-icon' && $headingstyle) { echo $headingstyle;} ?>">
                <?php if($headingstyle == 'heading-icon' && isset($iconurl) && $iconfile) { ?>
					<img class="fa" src="<?php echo $iconurl;?>" alt="<?php echo $widget_heading;?>">
				<?php }elseif($iconclass){ ?>
					<i class="fa <?php echo $iconclass;?>"></i>
				<?php } ?>
				<?php if($sub_title){?><span><?php echo $sub_title;?></span><?php }?>
                <?php if( $show_title ) { ?>
                    <h2><?php echo $widget_heading; ?></h2>
                <?php } ?>
                <?php if($content_html) {?>
                	<small><?php echo $content_html; ?></small>
                <?php }?>
            </div>
        </div>
    </div>
</div>
<?php } ?>