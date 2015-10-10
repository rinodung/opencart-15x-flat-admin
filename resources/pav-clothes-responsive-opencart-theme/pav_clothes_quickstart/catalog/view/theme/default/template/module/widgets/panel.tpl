<div class="panel panel-default">
  <div class="panel-heading <?php if($hight_light){echo $hight_light;}?> <?php echo $panel_type;?>">
    <?php if($show_title){?><h3 class="panel-title"><?php echo $heading_title;?></h3><?php }?>
  </div>
  <div class="panel-body">
    <?php echo $html;?>
  </div>
</div>