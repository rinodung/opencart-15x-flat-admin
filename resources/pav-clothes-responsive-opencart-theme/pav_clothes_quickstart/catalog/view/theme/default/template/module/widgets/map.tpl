<?php $class = ( isset($stylecls)&&$stylecls )?"box-".$stylecls:'';?>
<div class="widget-html box <?php echo $addition_cls;?> <?php echo $class; ?>">
	<?php if( $show_title ) { ?>
	<div class="widget-heading box-heading"><?php echo $heading_title?></div>
	<?php } ?>
	<div class="widget-inner box-content clearfix">
		<div class="contact-location">
			<div id="contact-map"></div>
		</div>
	</div>
</div>

<?php // Jquery googlemap api v3?>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&language=en"></script>
    <script type="text/javascript" src="catalog/view/javascript/gmap/gmap3.min.js"></script>
    <script type="text/javascript" src="catalog/view/javascript/gmap/gmap3.infobox.js"></script>
    <script type="text/javascript">
        var mapDiv, map, infobox;
        var lat = <?php echo $latitude; ?>;
        var lon = <?php echo $longitude;?>;
        jQuery(document).ready(function($) {
            mapDiv = $("#contact-map");
            mapDiv.height(400).gmap3({
                map:{
                    options:{
                        center:[lat,lon],
                        zoom: 15
                    }
                },
                marker:{
                    values:[
                        {latLng:[lat, lon], data:""},
                    ],
                    options:{
                        draggable: false
                    },
                    events:{
                          mouseover: function(marker, event, context){
                            var map = $(this).gmap3("get"),
                                infowindow = $(this).gmap3({get:{name:"infowindow"}});
                            if (infowindow){
                                infowindow.open(map, marker);
                                infowindow.setContent(context.data);
                            } else {
                                $(this).gmap3({
                                infowindow:{
                                    anchor:marker, 
                                    options:{content: context.data}
                                }
                              });
                            }
                        },
                        mouseout: function(){
                            var infowindow = $(this).gmap3({get:{name:"infowindow"}});
                            if (infowindow){
                                infowindow.close();
                            }
                        }
                    }
                }
            });
        });
    </script>
<?php //end contact map ?>
