<div class="widget-accordion block <?php echo $addition_cls; ?> <?php if (isset($stylecls)&&$stylecls){ echo "block-".$stylecls; } ?>">
<?php if ($piechart_style == 'bar-chart') { ?>
	<div class="bar-chart">
	    <div class="progress-title">
	    	<span class="text-success"><?php echo $number_percentage;?>%</span>
	    	<?php if (isset($widget_heading)&&!empty($widget_heading)){ ?>
			 <?php if( $show_title ) { ?><small><?php echo $widget_heading; ?></small><?php }?>
			<?php }?>
    	</div>
	    <div class="progress progress-7">
	        <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" data-width="<?php echo $number_percentage; ?>"></div>
	    </div>
	</div>
<?php }elseif($piechart_style == 'bar-chart-icon'){?>
	<div class="bar-chart">
	    <div class="progress-title">
	    	<span class="text-success"><?php echo $number_percentage;?>%</span>
	    	<?php if(isset($widget_heading)&&!empty($widget_heading)){?>
			 <?php if( $show_title ) { ?><small><?php echo $widget_heading; ?></small><?php }?>
			<?php } ?>
    	</div>
	    <div class="progress progress-7">
	        <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" data-width="<?php echo $number_percentage;?>"></div>
	    </div>

	    <?php if(isset($iconurl) && $iconfile){ ?>
			<div class="bar-icon"><img class="fa" src="<?php echo $iconurl;?>" alt=""> </div>
		<?php }elseif($iconclass){?>
			<div class="bar-icon"><i class="fa <?php echo $iconclass;?>"></i> </div>
		<?php } ?>
	</div>
<?php }elseif($piechart_style == 'circle'){?>
	<div class="piechart-item text-center">
        <div class="percentage" data-percent="<?php echo $number_percentage;?>">
          <span><?php echo $number_percentage;?></span><sup>%</sup>
        </div>
        <?php if(isset($widget_heading)&&!empty($widget_heading)){?>
			 <?php if( $show_title ) { ?><h4 class="piechart-title"><?php echo $widget_heading; ?></h4><?php }?>
		<?php } ?>
		<?php if($htmlcontent){?>
        	<p><?php echo html_entity_decode($htmlcontent, ENT_QUOTES, 'UTF-8');?></p>
		<?php }?>
    </div>
<?php }elseif($piechart_style == 'circle-icon'){?>
    <div class="piechart-item text-center">
        <div class="percentage" data-percent="<?php echo $number_percentage;?>">
            <?php if(isset($iconurl) && $iconfile){?>
				<img class="fa" src="<?php echo $iconurl;?>" alt="">
			<?php }elseif($iconclass){?>
				<i class="fa <?php echo $iconclass;?>"></i>
			<?php } ?>
        </div>
            <?php if(isset($widget_heading)&&!empty($widget_heading)) {?>
			<?php if( $show_title ) { ?><h4 class="piechart-title"><?php echo $widget_heading; ?></h4><?php }?>
		<?php } ?>
        <?php if($htmlcontent){ ?>
        	<p><?php echo html_entity_decode($htmlcontent, ENT_QUOTES, 'UTF-8');?></p>
        <?php } ?>
    </div>
<?php } ?>
</div>
<script type="text/javascript">
    jQuery(document).ready(function() {
        ProgressBar.initProgressBarHor();

        $('.percentage').easyPieChart({
          animate: 1000,
          lineWidth: 3,
          onStep: function(value) {
            this.$el.find('span').text(Math.round(value));
          },
          onStop: function(value, to) {
            this.$el.find('span').text(Math.round(to));
          }
        });

    });
</script>
