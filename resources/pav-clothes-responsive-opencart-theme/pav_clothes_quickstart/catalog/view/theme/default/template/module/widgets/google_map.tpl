 <?php if( $show_title ) { ?><h3><?php echo $widget_heading;?></h3><?php } ?>
<div id="<?php echo $mapid;?>" style="width:<?php echo $width;?>; height:<?php echo $height;?>;"></div>
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js"></script>

<script type="text/javascript">
	function initialize()
	{
	  var mapProp = {
	    center: new google.maps.LatLng(<?php echo $latitude;?>,<?php echo $longitude;?>),
	    zoom:<?php echo $zoom;?>,
	    mapTypeId: google.maps.MapTypeId.<?php echo $map_type;?>
	  };
	  var map = new google.maps.Map(document.getElementById("<?php echo $mapid;?>"),mapProp);
	}

	google.maps.event.addDomListener(window, 'load', initialize);
</script>