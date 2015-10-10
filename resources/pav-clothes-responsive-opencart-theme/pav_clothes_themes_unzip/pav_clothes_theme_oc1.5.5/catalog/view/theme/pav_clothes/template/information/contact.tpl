<?php require( DIR_TEMPLATE.$this->config->get('config_template')."/template/common/config.tpl" );
    $themeConfig = $this->config->get( 'themecontrol' );
?>
<?php echo $header; ?>
<?php if( $SPAN[0] ): ?>
<aside class="col-lg-<?php echo $SPAN[0];?> col-md-<?php echo $SPAN[0];?> col-sm-12 col-xs-12">
	<?php echo $column_left; ?>
</aside>
<?php endif; ?> 
<section class="col-lg-<?php echo $SPAN[1];?> col-md-<?php echo $SPAN[1];?> col-sm-12 col-xs-12">
<?php require( DIR_TEMPLATE.$this->config->get('config_template')."/template/common/breadcrumb.tpl" );  ?>  
<div id="content"><?php echo $content_top; ?>
  
  <h1><?php echo $heading_title; ?></h1>

            <?php //start contact map ?>
            <div class="contact-location">
                <div id="contact-map"></div>
            </div>
            <?php // Jquery googlemap api v3?>
            <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&language=en"></script>
            <script type="text/javascript" src="catalog/view/javascript/gmap/gmap3.min.js"></script>
            <script type="text/javascript" src="catalog/view/javascript/gmap/gmap3.infobox.js"></script>
            <script type="text/javascript">
                var mapDiv, map, infobox;
                var lat = <?php echo isset($themeConfig['location_latitude'])?$themeConfig['location_latitude']:'40.705423'; ?>;
                var lon = <?php echo isset($themeConfig['location_longitude'])?$themeConfig['location_longitude']:'-74.008616'; ?>;
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
                                {latLng:[lat, lon], data:"<?php echo isset($themeConfig['location_address'])?$themeConfig['location_address']:'79-99 Beaver Street, New York, NY 10005, USA'; ?>"},
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

<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
<div class="row">
<div class="contact-info col-lg-5 col-md-5 col-sm-12 col-xs-12">
<h2><?php echo $text_location; ?></h2>
  <div class="contact-address">
    <p><?php echo $store; ?></p>
    <ul><li><i class="fa fa-map-marker"></i><span><b><?php echo $text_address; ?></b><br />
    <?php echo $address; ?></span></li>
    <?php if ($telephone) { ?>
    <li><i class="fa fa-phone"></i><span><b><?php echo $text_telephone; ?></b><br />
    <?php echo $telephone; ?></span></li>
    <?php } ?>
    <?php if ($fax) { ?>
    <li><i class="fa fa-hdd-o"></i><span><b><?php echo $text_fax; ?></b><br />
    <?php echo $fax; ?></span></li>
    <?php } ?>
    </ul>
  </div>

  <?php  if(  isset($themeConfig['contact_customhtml']) && isset($themeConfig['contact_customhtml'][$this->config->get('config_language_id')]) && trim($themeConfig['contact_customhtml'][$this->config->get('config_language_id')]) ){ ?>
    <div class="contact-customhtml">
        <?php echo html_entity_decode(($themeConfig['contact_customhtml'][$this->config->get('config_language_id')])); ?>
    </div>
    <?php } ?> 

</div>
<div class="contact-form col-lg-7 col-md-7 col-sm-12 col-xs-12">
<h2><?php echo $text_contact; ?></h2>
<b><?php echo $entry_name; ?></b><br />
<input class="form-control" type="text" name="name" value="<?php echo $name; ?>" />
<br />
<?php if ($error_name) { ?>
<span class="error"><?php echo $error_name; ?></span>
<?php } ?>
<br />
<b><?php echo $entry_email; ?></b><br />
<input class="form-control" type="text" name="email" value="<?php echo $email; ?>" />
<br />
<?php if ($error_email) { ?>
<span class="error"><?php echo $error_email; ?></span>
<?php } ?>
<br />
<b><?php echo $entry_enquiry; ?></b><br />
<textarea class="form-control" name="enquiry" cols="40" rows="10" style="width: 99%;"><?php echo $enquiry; ?></textarea>
<br />
<?php if ($error_enquiry) { ?>
<span class="error"><?php echo $error_enquiry; ?></span>
<?php } ?>
<br />
<b><?php echo $entry_captcha; ?></b><br />
<span class="navbar-form">
    <span class="form-group"><input class="form-control" type="text" name="captcha" value="<?php echo $captcha; ?>" /></span>
<img src="index.php?route=information/contact/captcha" alt="" />
<?php if ($error_captcha) { ?>
<span class="error"><?php echo $error_captcha; ?></span>
<?php } ?>
</span>
<div class="buttons">
  <div class="right"><input type="submit" value="<?php echo $button_continue; ?>" class="button" /></div>
</div>
</div>
</div>
</form>
  <?php echo $content_bottom; ?></div>
</section> 
<?php if( $SPAN[2] ): ?>
<aside class="col-lg-<?php echo $SPAN[2];?> col-md-<?php echo $SPAN[2];?> col-sm-12 col-xs-12">	
	<?php echo $column_right; ?>
</aside>
<?php endif; ?>
<?php echo $footer; ?>