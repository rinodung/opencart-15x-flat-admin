<div class="counters">
   	<div class="counter-wrap <?php echo $text_color;?>">
      <?php if($icon){?><i class="fa <?php echo $icon;?>"></i><?php }elseif($iconurl && $imagefile){?><img src="<?php echo $iconurl;?>" alt="<?php echo $heading_title?>"/><?php  }?><br><span class="counter"><?php echo $counters;?></span></div>
	    <?php if($show_title){?><h5><?php echo $heading_title;?></h5><?php }?>
      <?php if($content){?>
      <span><?php echo $content;?></span>
      <?php }?>
</div>

 <script>

    $('.counter').each(function() {

        $(this).animate({countNum: $(this).text()}, {
          duration: 8000,
          easing:'linear',
          step: function() {
            $(this).text(Math.floor(this.countNum));
          },
          complete: function() {
            $(this).text(this.countNum);
          }
        });
    });

  </script>