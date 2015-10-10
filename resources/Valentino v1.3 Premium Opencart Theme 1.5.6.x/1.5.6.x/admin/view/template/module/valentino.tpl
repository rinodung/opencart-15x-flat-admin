<?php echo $header; ?>

<?php 

//=====================================//
//== Default values if empty options ==//
//=====================================//

// Background
if(empty($background_color)) $background_color 					="";

// Fonts
if(empty($title_font)) $title_font 								="";
if(empty($title_font_family)) $title_font_family 				="";
if(empty($menu_font)) $menu_font 								="";
if(empty($menu_font_family)) $menu_font_family 					="";
if(empty($menu_font_size)) $menu_font_size 						="";
if(empty($boxheading_font)) $boxheading_font 					="";
if(empty($boxheading_font_family)) $boxheading_font_family 		="";
if(empty($boxheading_font_size)) $boxheading_font_size 			="";

// Top Time
if(empty($time_text)) $time_text 								="";

// Top Blocks
if(empty($firstblock_title)) $firstblock_title 					="";
if(empty($firstblock_desc)) $firstblock_desc 					="";
if(empty($secondblock_title)) $secondblock_title 				="";
if(empty($secondblock_desc)) $secondblock_desc 					="";
if(empty($thirdblock_title)) $thirdblock_title 					="";
if(empty($thirdblock_desc)) $thirdblock_desc 					="";
if(empty($fourthblock_title)) $fourthblock_title 				="";
if(empty($fourthblock_desc)) $fourthblock_desc 					="";
if(empty($fifthblock_title)) $fourthblock_title 				="";
if(empty($fifthblock_desc)) $fourthblock_desc 					="";
if(empty($firstblock_link)) $firstblock_link 					="#";
if(empty($secondblock_link)) $secondblock_link 					="#";
if(empty($thirdblock_link)) $thirdblock_link 					="#";
if(empty($fourthblock_link)) $fourthblock_link 					="#";
if(empty($fifthblock_link)) $fifthblock_link 					="#";

// Contact Us Widget
if(empty($address)) $address 									="";
if(empty($phone)) $phone 										="";
if(empty($phone_second)) $phone_second 							="";
if(empty($email)) $email 										="";
if(empty($email_second)) $email_second 							="";

// Custom Widget
if(empty($custom_widget_title)) $custom_widget_title 			="";
if(empty($footer_info_text)) $footer_info_text 					="";
if(empty($shipping_text)) $shipping_text 						="";
if(empty($shipping_last_text)) $shipping_last_text 				="";

// Facebook and Twitter Widgets
if(empty($facebook_id)) $facebook_id 							="";
if(empty($twitter_username)) $twitter_username 					="";

// Social Network Links
if(empty($facebook_link)) $facebook_link 						="";
if(empty($twitter_link)) $twitter_link 							="";
if(empty($google_link)) $google_link 							="";
if(empty($youtube_link)) $youtube_link 							="";
if(empty($flickr_link)) $flickr_link 							="";

// Slideshow
if(empty($option_slideshow)) $option_slideshow 					="span6";
if(empty($amazon_slideshow_width)) $amazon_slideshow_width 		="span6";
if(empty($amazon_slideshow_height)) $amazon_slideshow_height 	="350";
?>

<style type="text/css">
	.customhelp { color: #666; font-size:0.9em; }
	.color { border:1px solid #AAA; }
	.pttrn {width:32px; display: inline-block; text-align: center;}
</style>



<div id="content">
	<div class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		<?php } ?>
	</div>
	<?php if ($error_warning) { ?>
	<div class="warning"><?php echo $error_warning; ?></div>
	<?php } ?>

<div class="box">

	<div class="heading">
		<h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
		<div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a></div>
	</div>

	<div class="content wrapper">
	
    
    <div class="back_ptrn">

	<div class="option_wrap">
		<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        
    	<div class="heading">
        	<img src="../admin/view/image/logo-option.png" class="logo-option">
            <p>
            	If you have any question or problem, <span class="green" >feel free to open your ticket through our forum : </span><br/>
                <a target="_blank" href="http://support.venzastudio.com">Support Forum</a>
            </p>
            <select name="status" class="status_select">
				<?php if ($status) { ?>
				<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
				<option value="0"><?php echo $text_disabled; ?></option>

				<?php } else { ?>
				<option value="1"><?php echo $text_enabled; ?></option>
				<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
				<?php } ?>
			</select>
        </div><!--/heading-->
    
		<div class="clear"></div>
		
		<div id="settings_tabs" class="htabs-custom clearfix depts">
			<a href="#layout_settings" class="bod"><img src="../admin/view/image/bod.png" alt="" > Body</a>
            <a href="#container_settings" class="cont"><img src="../admin/view/image/cont.png" alt="" > Container</a>
            <a href="#topadv_settings" class="cont"><img src="../admin/view/image/cont.png" alt="" > Top Adv</a>
            <a href="#colors_settings" class="colo"><img src="../admin/view/image/colors.png" alt="" > Colors</a>
            <a href="#buttons_settings" class="butt"><img src="../admin/view/image/buttons.png" alt="" > Buttons</a>
            <a href="#fonts_settings" class="font"><img src="../admin/view/image/font.png" alt="" > Fonts</a>
            <a href="#footer2_settings" class="foot"><img src="../admin/view/image/sett.png" alt="" > Custom Options</a>  
		</div>

		<div class="clear"></div>
		
   		<div class="data_right">
        
        <!--**************************************************************************************** Body ***************************-->
		<div id="layout_settings" class="divtab">

			<table class="form">

				<tr><td colspan="2"><h3><?php echo $entry_pattern_sub; ?></h3></td></tr>


 <!--****************************************************************
 ********************************************************************
 
 Body:
 
 *******************************************************************
  *******************************************************************
 -->


				<!--** Choose Pattern **--> 
				<tr>
					<td><?php echo $entry_pattern_overlay; ?></td>
					<td>
						<div>
							<?php for ($i = 1; $i <= 36; $i++) { ?>
								<div class="pttrn"><span class="customhelp"><?php echo $i; ?></span><img src="view/image/patterns/<?php echo $i; ?>.png" alt="pattern <?php echo $i; ?>"></div>
								<?php if(!($i%12)): ?>
									<br />
								<?php endif ?>
							<?php } ?>
						</div><br>
						<select name="pattern_overlay">
							<option value="none"selected="selected">none</option>
							<?php for ($i = 1; $i <= 36; $i++) { 
									($this->config->get('pattern_overlay')== $i) ? $currentpat = 'selected' : $currentpat = '';
								?>
								<option value="<?php echo $i; ?>" <?php echo $currentpat; ?>><?php echo $i; ?></option>';
								<?php } ?>
						</select>
						<span class="customhelp"><?php echo $entry_pattern_overlay_help; ?></span>
					</td>
				</tr>
				<!--** Upload Pattern **-->
				<tr>
					<td><?php echo $entry_custom_pattern; ?> </td>
					<td>
						<input type="hidden" name="custom_pattern" value="<?php echo $custom_pattern; ?>" id="custom_pattern" />
						<img src="<?php echo $pattern_preview; ?>" id="pattern_preview" />
						<br /><a onclick="image_upload('custom_pattern', 'pattern_preview');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#pattern_preview').attr('src', '<?php echo $no_image; ?>'); $('#custom_pattern').attr('value', '');"><?php echo $text_clear; ?></a>
					</td>
				</tr>                             
                <!--** Upload Background Image **-->
				<tr>   
					<td>
						<?php echo $entry_custom_image; ?><br>
						<span class="customhelp"><?php echo $entry_custom_image_help; ?></span>
					</td>
					<td>
						<input type="hidden" name="custom_image" value="<?php echo $custom_image; ?>" id="custom_image" />
						<img src="<?php echo $image_preview; ?>" alt="" id="image_preview" />
						<br /><a onclick="image_upload('custom_image', 'image_preview');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#image_preview').attr('src', '<?php echo $no_image; ?>'); $('#custom_image').attr('value', '');"><?php echo $text_clear; ?></a>
					</td>
				</tr>
            	<!--** Main background color **-->
                    <tr>
                        <td><?php echo $entry_background_color; ?></td>
                        <td><input type="text" name="background_color" value="<?php echo $background_color; ?>" size="6" class="color {required:false,hash:true}"  /><span class="customhelp"><?php echo $entry_body_help; ?></span></td>
                    </tr> 
				</table>
				
			</div><!--/layout_settings-->

			
            
            <!--***************************************************************************************** container *******************-->
            <div id="container_settings" class="divtab">
    
                <table class="form">
                
                	  <tr><td colspan="2"><h3><?php echo $entry_pattern_sub_cont; ?></h3></td></tr>
                      <!--** Choose Pattern **-->                  
                      <tr>
                        <td><?php echo $entry_pattern_overlay; ?></td>
                        <td>
                            <div>
                                <?php for ($i = 1; $i <= 36; $i++) { ?>
                                    <div class="pttrn"><span class="customhelp"><?php echo $i; ?></span><img src="view/image/patterns/<?php echo $i; ?>.png" alt="pattern <?php echo $i; ?>"></div>
                                    <?php if(!($i%12)): ?>
                                        <br />
                                    <?php endif ?>
                                <?php } ?>
                            </div><br>
                            <select name="pattern_cont">
                                <option value="none"selected="selected">none</option>
                                <?php for ($i = 1; $i <= 36; $i++) { 
                                        ($this->config->get('pattern_cont')== $i) ? $currentpat = 'selected' : $currentpat = '';
                                    ?>
                                    <option value="<?php echo $i; ?>" <?php echo $currentpat; ?>><?php echo $i; ?></option>';
                                    <?php } ?>
                            </select>
                            <span class="customhelp"><?php echo $entry_pattern_overlay_help; ?></span>
                        </td>
                    </tr>             
                    <!--** Upload Pattern **-->
                    <tr>
                        <td><?php echo $entry_custom_pattern; ?> </td>
                        <td>
                            <input type="hidden" name="custom_pattern_cont" value="<?php echo $custom_pattern_cont; ?>" id="custom_pattern_cont" />
                            <img src="<?php echo $pattern_preview_cont; ?>" id="pattern_preview_cont" />
                            <br /><a onclick="image_upload('custom_pattern_cont', 'pattern_preview_cont');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#pattern_preview_cont').attr('src', '<?php echo $no_image; ?>'); $('#custom_pattern_cont').attr('value', '');"><?php echo $text_clear; ?></a>
                        </td>
                    </tr>                 
                    <!--** Upload Background Image **-->
                    <tr>   
                        <td>
                            <?php echo $entry_custom_image; ?><br>
                            <span class="customhelp"><?php echo $entry_custom_image_help; ?></span>
                        </td>
                        <td>
                            <input type="hidden" name="custom_image_cont" value="<?php echo $custom_image_cont; ?>" id="custom_image_cont" />
                            <img src="<?php echo $image_preview_cont; ?>" alt="" id="image_preview_cont" />
                            <br /><a onclick="image_upload('custom_image_cont', 'image_preview_cont');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#image_preview_cont').attr('src', '<?php echo $no_image; ?>'); $('#custom_image_cont').attr('value', '');"><?php echo $text_clear; ?></a>
                        </td>
                    </tr>                     
                    <!--** Container background color **-->
                    <tr>
                        <td><?php echo $entry_background_color_cont; ?></td>
                        <td><input type="text" name="background_color_cont" value="<?php echo $background_color_cont; ?>" size="6" class="color {required:false,hash:true}"  /><span class="customhelp"><?php echo $entry_cont_help; ?></span></td>
                    </tr>         
                
                </table>
				
			</div>
        
			
			
			<!--**************************************************************************************** Body ***************************-->
		<div id="topadv_settings" class="divtab">

			<table class="form">

				<tr><td colspan="2"><h3><?php echo $entry_pattern_sub; ?></h3></td></tr>


 <!--****************************************************************
 ********************************************************************
 
 Body:
 
 *******************************************************************
  *******************************************************************
 -->


				<!--** Choose Pattern **--> 
				<tr>
					<td><?php echo $entry_pattern_overlay; ?></td>
					<td>
						<div>
							<?php for ($i = 1; $i <= 36; $i++) { ?>
								<div class="pttrn"><span class="customhelp"><?php echo $i; ?></span><img src="view/image/patterns/<?php echo $i; ?>.png" alt="pattern <?php echo $i; ?>"></div>
								<?php if(!($i%12)): ?>
									<br />
								<?php endif ?>
							<?php } ?>
						</div><br>
						<select name="pattern_overlay_adv">
							<option value="none"selected="selected">none</option>
							<?php for ($i = 1; $i <= 36; $i++) { 
									($this->config->get('pattern_overlay_adv')== $i) ? $currentpat = 'selected' : $currentpat = '';
								?>
								<option value="<?php echo $i; ?>" <?php echo $currentpat; ?>><?php echo $i; ?></option>';
								<?php } ?>
						</select>
						<span class="customhelp"><?php echo $entry_pattern_overlay_help; ?></span>
					</td>
				</tr>
				<!--** Upload Pattern **-->
				<tr>
					<td><?php echo $entry_custom_pattern; ?> </td>
					<td>
						<input type="hidden" name="custom_pattern_adv" value="<?php echo $custom_pattern_adv; ?>" id="custom_pattern_adv" />
						<img src="<?php echo $pattern_preview_adv; ?>" id="pattern_preview_adv" />
						<br /><a onclick="image_upload('custom_pattern_adv', 'pattern_preview_adv');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#pattern_preview_adv').attr('src', '<?php echo $no_image; ?>'); $('#custom_pattern_adv').attr('value', '');"><?php echo $text_clear; ?></a>
					</td>
				</tr>                             
                <!--** Upload Background Image **-->
				<tr>   
					<td>
						<?php echo $entry_custom_image; ?><br>
						<span class="customhelp"><?php echo $entry_custom_image_help; ?></span>
					</td>
					<td>
						<input type="hidden" name="custom_image_adv" value="<?php echo $custom_image_adv; ?>" id="custom_image_adv" />
						<img src="<?php echo $image_preview_adv; ?>" alt="" id="image_preview_adv" />
						<br /><a onclick="image_upload('custom_image_adv', 'image_preview_adv');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#image_preview_adv').attr('src', '<?php echo $no_image; ?>'); $('#custom_image_adv').attr('value', '');"><?php echo $text_clear; ?></a>
					</td>
				</tr>
            	<!--** Main background color **-->
                    <tr>
                        <td><?php echo $entry_background_color; ?></td>
                        <td><input type="text" name="background_color_adv" value="<?php echo $background_color_adv; ?>" size="6" class="color {required:false,hash:true}"  /><span class="customhelp"><?php echo $entry_body_help; ?></span></td>
                    </tr> 
                    
                <!-- height -->
                	<tr>
                        <td>Height with Pixels</td>
                        <td><input type="text" name="topAdv_height" value="<?php echo $topAdv_height; ?>" size="6"  /><span class="customhelp">Add the value and will determined with pixels</span></td>
                    </tr> 
                <!-- link -->
                	<tr>
                        <td>Add Link</td>
                        <td><input type="text" name="topAdv_link" value="<?php echo $topAdv_link; ?>" size="20"  /></td>
                    </tr> 
				</table>
				
			</div><!--/layout_settings-->
            
<!--*******************************************************************************************
***********************************************************************************************


 Colors
 
 
 **********************************************************************************************
 *******************************************************************************************-->
 
<div id="colors_settings" class="divtab">
	
    <ul class="tabs-head tabs">
        <li><a href="#top"><?php echo $entry_header_tit; ?></a></li>      
        <li><a href="#search"><?php echo $entry_search_tit; ?></a></li>
        <li><a href="#cart"><?php echo $entry_cart_tit; ?></a></li>
        <li><a href="#menuu"><?php echo $entry_menu_tit; ?></a></li>  
        <li><a href="#category"><?php echo $entry_category_tit; ?></a></li>
        <li><a href="#box"><?php echo $entry_box_tit; ?></a></li>
        <li><a href="#product"><?php echo $entry_product_tit; ?></a></li>
        <li><a href="#newsletter"><?php echo $entry_newsletter_tit; ?></a></li>
        <li><a href="#blog"><?php echo $entry_blog_tit; ?></a></li>
        <li><a href="#brands">Shop By Brands</a></li>
        <li><a href="#blocks">Custom Blocks</a></li>
        <li><a href="#general"><?php echo $entry_general_tit; ?></a></li>
        <li><a href="#footerr"><?php echo $entry_entry_footer; ?></a></li>
    </ul>
    
    <div class="tab_container">
    <!--///////////////////////////////////////////////////////////////////////////////// top-->
        <div id="top" class="tab_content">
        	<table class="form">
        		<!--** top bar bg **-->
                <tr>
                    <td>Top Bar Background</td>
                    <td><input type="text" name="thickbar_bg" value="<?php echo $thickbar_bg; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>
                <!--** top bar BORDER **
                <tr>
                    <td><?php echo $entry_thickbar_border_color; ?></td>
                    <td><input type="text" name="thickbar_border_color" value="<?php echo $thickbar_border_color; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>
                -->
                <!--** top bar text color **-->
                <tr>
                    <td><?php echo $entry_welcome_text_color; ?></td>
                    <td><input type="text" name="welcome_text_color" value="<?php echo $welcome_text_color; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>
                <!--** top bar links color **-->
                <tr>
                    <td><?php echo $entry_thickbar_links_color; ?></td>
                    <td><input type="text" name="thickbar_links_color" value="<?php echo $thickbar_links_color; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>
                <!--** logo bg **-->
                <tr>
                    <td><?php echo $entry_logo_bg; ?></td>
                    <td><input type="text" name="logo_bg" value="<?php echo $logo_bg; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>
            </table>
        </div><!--/content-->
    <!--///////////////////////////////////////////////////////////////////////////////// search-->
        <div id="search" class=" tab_content">
            <table class="form">
                <!--** search bg **-->
                <tr>
                    <td><?php echo $entry_search_bg; ?></td>
                    <td><input type="text" name="search_bg" value="<?php echo $search_bg; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>                                 
                <tr>
                    <td><?php echo $entry_categories_select_color; ?></td>
                    <td><input type="text" name="categories_select_color" value="<?php echo $categories_select_color; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>
                <tr>
                    <td>Dropdown list Background</td>
                    <td><input type="text" name="livesearch_bg" value="<?php echo $livesearch_bg; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>
                
            </table>
        </div><!--/content-->
    <!--///////////////////////////////////////////////////////////////////////////////// cart-->
        <div id="cart" class=" tab_content">
            <table class="form">
            	<!--** cart title **-->
                <tr>
                    <td><?php echo $entry_cart_title_color; ?></td>
                    <td><input type="text" name="cart_title_color" value="<?php echo $cart_title_color; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>
                <tr>
                    <td><?php echo $entry_cart_img_bg; ?></td>
                    <td><input type="text" name="cart_img_bg" value="<?php echo $cart_img_bg; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>
            </table>
        </div><!--/content-->
    <!--///////////////////////////////////////////////////////////////////////////////// menu-->
        <div id="menuu" class=" tab_content">
            <table class="form">
            	<!--** Menu background color **-->
                <tr>
                    <td><?php echo $entry_menu_background; ?></td>
                    <td><input type="text" name="menu_background" value="<?php echo $menu_background; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>  
                <!--** Menu border **
                <tr>
                    <td>Menu borders color</td>
                    <td><input type="text" name="menu_border" value="<?php echo $menu_border; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>    
                -->                
                <!--** Top menu links color **-->
                <tr>
                    <td><?php echo $entry_menu_color; ?></td>
                    <td><input type="text" name="menu_color" value="<?php echo $menu_color; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr> 
                <!--** Menu Links background on hover **-->
                <tr>
                    <td><?php echo $entry_menu_color_hover; ?></td>
                    <td><input type="text" name="menu_color_hover" value="<?php echo $menu_color_hover; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr> 
                <!--** Dropdown menu bg **-->
                <tr>
                    <td><?php echo $entry_drop_menu_bg; ?></td>
                    <td><input type="text" name="drop_menu_bg" value="<?php echo $drop_menu_bg; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>         
                <!--** sub menu links **-->
                <tr>
                    <td><?php echo $entry_smenu_color; ?></td>
                    <td><input type="text" name="smenu_color" value="<?php echo $smenu_color; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>
                <!--** sub menu links on hover **-->
                <tr>
                    <td><?php echo $entry_smenuh_color; ?></td>
                    <td><input type="text" name="smenuh_color" value="<?php echo $smenuh_color; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>
          <!--///////////////////////////////////////////////////////////////////////////////// pav mega menu-->
                <tr><td><h3>PAV Mega Menu</h3></td></tr>
                <!--
                <tr>
                    <td><?php echo $entry_pav_menu_bg; ?></td>
                    <td><input type="text" name="pav_menu_bg" value="<?php echo $pav_menu_bg; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>
                <tr>
                    <td>Mega menu borders color</td>
                    <td><input type="text" name="pav_menu_border" value="<?php echo $pav_menu_border; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>
                -->
                <tr>
                    <td><?php echo $entry_pav_links_color; ?></td>
                    <td><input type="text" name="pav_links_color" value="<?php echo $pav_links_color; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>
                <tr>
                    <td><?php echo $entry_pav_links_color_hover; ?></td>
                    <td><input type="text" name="pav_links_color_hover" value="<?php echo $pav_links_color_hover; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>
                <tr>
                    <td><?php echo $entry_pav_links_bg_hover; ?></td>
                    <td><input type="text" name="pav_links_bg_hover" value="<?php echo $pav_links_bg_hover; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>
                <tr>
                    <td><?php echo $entry_pav_desc_color; ?></td>
                    <td><input type="text" name="pav_desc_color" value="<?php echo $pav_desc_color; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>
                <!--
                <tr>
                    <td><?php echo $entry_pav_arrow_color; ?></td>
                    <td><input type="text" name="pav_arrow_color" value="<?php echo $pav_arrow_color; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>
                -->
                <tr>
                    <td><?php echo $entry_pav_submenu_bg; ?></td>
                    <td><input type="text" name="pav_submenu_bg" value="<?php echo $pav_submenu_bg; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>
                <tr>
                    <td><?php echo $entry_pav_sub_title_color; ?></td>
                    <td><input type="text" name="pav_sub_title_color" value="<?php echo $pav_sub_title_color; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>
                <tr>
                    <td><?php echo $entry_pav_sub_links_color; ?></td>
                    <td><input type="text" name="pav_sub_links_color" value="<?php echo $pav_sub_links_color; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>
                <tr>
                    <td><?php echo $entry_pav_sub_links_color_hover; ?></td>
                    <td><input type="text" name="pav_sub_links_color_hover" value="<?php echo $pav_sub_links_color_hover; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>
                <tr>
                    <td><?php echo $entry_pav_sub_desc_color; ?></td>
                    <td><input type="text" name="pav_sub_desc_color" value="<?php echo $pav_sub_desc_color; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>
            </table>
        </div><!--/content-->
    
    
    <!--///////////////////////////////////////////////////////////////////////////////// category-->
        <div id="category" class="tab_content">
            <table class="form">
            	
                <!--** category box bg **--> 
                <tr>
                    <td><?php echo $entry_category_box_bg; ?></td>
                    <td><input type="text" name="category_box_bg" value="<?php echo $category_box_bg; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>  
                <!--** category box border **--> 
                <tr>
                    <td><?php echo $entry_category_box_border; ?></td>
                    <td><input type="text" name="category_box_border" value="<?php echo $category_box_border; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>                
                <!--** category links color **--> 
                <tr>
                    <td><?php echo $entry_category_link_color; ?></td>
                    <td><input type="text" name="category_link_color" value="<?php echo $category_link_color; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>                
                <!--** category links color on hover **--> 
                <tr>
                    <td><?php echo $entry_category_link_color_hover; ?></td>
                    <td><input type="text" name="category_link_color_hover" value="<?php echo $category_link_color_hover; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>  
                <!--** categorysub links color **--> 
                <tr>
                    <td><?php echo $entry_categorysub_link_color; ?></td>
                    <td><input type="text" name="categorysub_link_color" value="<?php echo $categorysub_link_color; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>                
                <!--** categorysub links color on hover **--> 
                <tr>
                    <td><?php echo $entry_categorysub_link_color_hover; ?></td>
                    <td><input type="text" name="categorysub_link_color_hover" value="<?php echo $categorysub_link_color_hover; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>  
                <!--** plus icon bg **--> 
                <tr>
                    <td><?php echo $entry_plus_bg; ?></td>
                    <td><input type="text" name="plus_bg" value="<?php echo $plus_bg; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>  
            </table>
        </div><!--/content-->
    <!--///////////////////////////////////////////////////////////////////////////////// box-->
        <div id="box" class=" tab_content">
            <table class="form">
            	<!--** box heading bg **--> 
                <tr>
                    <td><?php echo $entry_heading_bg; ?></td>
                    <td><input type="text" name="heading_bg" value="<?php echo $heading_bg; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>      
                <!--** box heading border **--> 
                <tr>
                    <td><?php echo $entry_heading_border; ?></td>
                    <td><input type="text" name="heading_border" value="<?php echo $heading_border; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>                       
                <!--** box heading color **--> 
                <tr>
                    <td><?php echo $entry_heading_color; ?></td>
                    <td><input type="text" name="heading_color" value="<?php echo $heading_color; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>               
                <tr><td><h3>For Latest Products By Category Section</h3></td><td></td></tr>
                <!--** prodbcat tab link **--> 
                <tr>
                    <td><?php echo $entry_prodbcat_tab_link; ?></td>
                    <td><input type="text" name="prodbcat_tab_link" value="<?php echo $prodbcat_tab_link; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>  
                <tr>
                    <td><?php echo $entry_prodbcat_tab_link_selected; ?></td>
                    <td><input type="text" name="prodbcat_tab_link_selected" value="<?php echo $prodbcat_tab_link_selected; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>   
                <tr><td><h3>For Blog and Shop By Brands Heading</h3></td><td></td></tr>
                <tr>
                    <td>Box Heading Background</td>
                    <td><input type="text" name="heading_bg_blog_brand" value="<?php echo $heading_bg_blog_brand; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr> 
                <tr>
                    <td>Box Heading Border</td>
                    <td><input type="text" name="heading_border_blog_brand" value="<?php echo $heading_border_blog_brand; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr> 
                <tr>
                    <td>Box Heading Color</td>
                    <td><input type="text" name="heading_color_blog_brand" value="<?php echo $heading_color_blog_brand; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>   
            </table>
        </div><!--/content-->
    <!--///////////////////////////////////////////////////////////////////////////////// product-->
        <div id="product" class=" tab_content">
            <table class="form">
            	<tr>
                    <td>Product box background</td>
                    <td><input type="text" name="product_box_bg" value="<?php echo $product_box_bg; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr> 
                <tr>
                    <td>Product box border</td>
                    <td><input type="text" name="product_box_border" value="<?php echo $product_box_border; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr> 
                <tr>
                    <td>Extra background</td>
                    <td><input type="text" name="product_extra_bg" value="<?php echo $product_extra_bg; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr> 
                <tr>
                    <td>Extra define</td>
                    <td><input type="text" name="product_extra_define" value="<?php echo $product_extra_define; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr> 
                <tr>
                    <td>Extra description</td>
                    <td><input type="text" name="product_extra_label" value="<?php echo $product_extra_label; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr> 
                <!--** product cart bg **--> 
                <tr>
                    <td><?php echo $entry_product_cart_bg; ?></td>
                    <td><input type="text" name="product_cart_bg" value="<?php echo $product_cart_bg; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr> 
                <!--** product cart bg on hover **--> 
                <tr>
                    <td><?php echo $entry_product_cart_bg_hover; ?></td>
                    <td><input type="text" name="product_cart_bg_hover" value="<?php echo $product_cart_bg_hover; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr> 
                <!--** product cart color **--> 
                <tr>
                    <td><?php echo $entry_product_cart_color; ?></td>
                    <td><input type="text" name="product_cart_color" value="<?php echo $product_cart_color; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>  
                <!--** wish compare bg **--> 
                <tr>
                    <td><?php echo $entry_wish_compare_bg; ?></td>
                    <td><input type="text" name="wish_compare_bg" value="<?php echo $wish_compare_bg; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr> 
                <tr>
                    <td><?php echo $entry_wish_compare_bg_hover; ?></td>
                    <td><input type="text" name="wish_compare_bg_hover" value="<?php echo $wish_compare_bg_hover; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr> 
            	<!--** sale bg **--> 
                <tr>
                    <td><?php echo $entry_sale_bg; ?></td>
                    <td><input type="text" name="sale_bg" value="<?php echo $sale_bg; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>              
                <!--** price color **--> 
                <tr>
                    <td><?php echo $entry_price_color; ?></td>
                    <td><input type="text" name="price_color" value="<?php echo $price_color; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>                
                <!--** old price color **--> 
                <tr>
                    <td><?php echo $entry_other_oldprice_color; ?></td>
                    <td><input type="text" name="other_oldprice_color" value="<?php echo $other_oldprice_color; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>                
                <!--** product name color **--> 
                <tr>
                    <td><?php echo $entry_product_name_color; ?></td>
                    <td><input type="text" name="product_name_color" value="<?php echo $product_name_color; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>
            </table>
        </div><!--/content-->
    
    <!--///////////////////////////////////////////////////////////////////////////////// newsletter-->
        <div id="newsletter" class=" tab_content">
            <table class="form">
            	<!--** bg color **--> 
                <tr>
                    <td><?php echo $entry_newsletter_bg_box; ?></td>
                    <td><input type="text" name="newsletter_bg_box" value="<?php echo $newsletter_bg_box; ?>" size="6" class="color {required:false,hash:true}"  />
                </tr>
                <!--** Title color **--> 
                <tr>
                    <td><?php echo $entry_newsletter_title; ?></td>
                    <td><input type="text" name="newsletter_title" value="<?php echo $newsletter_title; ?>" size="6" class="color {required:false,hash:true}"  />
                </tr>  
                <!--** text color **--> 
                <tr>
                    <td>Newsletter text color</td>
                    <td><input type="text" name="newsletter_text_color" value="<?php echo $newsletter_text_color; ?>" size="6" class="color {required:false,hash:true}"  />
                </tr>  
                
                <!--** border color **--> 
                <tr>
                    <td><?php echo $entry_newsletter_border; ?></td>
                    <td><input type="text" name="newsletter_border" value="<?php echo $newsletter_border; ?>" size="6" class="color {required:false,hash:true}"  />
                </tr>  
                <!--** subscribe bg **--> 
                <tr>
                    <td><?php echo $entry_newsletter_subscribe; ?></td>
                    <td><input type="text" name="newsletter_subscribe" value="<?php echo $newsletter_subscribe; ?>" size="6" class="color {required:false,hash:true}"  />
                </tr>  
                <!--** unsubscribe bg **--> 
                <tr>
                    <td><?php echo $entry_newsletter_unsubscribe; ?></td>
                    <td><input type="text" name="newsletter_unsubscribe" value="<?php echo $newsletter_unsubscribe; ?>" size="6" class="color {required:false,hash:true}"  />
                </tr>  
                <!--** btn hovers bg **--> 
                <tr>
                    <td><?php echo $entry_newsletter_btn_hovers; ?></td>
                    <td><input type="text" name="newsletter_btn_hovers" value="<?php echo $newsletter_btn_hovers; ?>" size="6" class="color {required:false,hash:true}"  />
                </tr>               
            </table>
        </div>
    <!--///////////////////////////////////////////////////////////////////////////////// latest blog-->
        <div id="blog" class=" tab_content">
            <table class="form">
            	<tr>
                    <td><?php echo $entry_latest_blogs_bg; ?></td>
                    <td><input type="text" name="latest_blogs_bg" value="<?php echo $latest_blogs_bg; ?>" size="6" class="color {required:false,hash:true}"  />
                </tr> 
                <tr>
                    <td><?php echo $entry_latest_blogs_box_border; ?></td>
                    <td><input type="text" name="latest_blogs_box_border" value="<?php echo $latest_blogs_box_border; ?>" size="6" class="color {required:false,hash:true}"  />
                </tr> 
                
                <tr>
                    <td><?php echo $entry_latest_blogs_heading; ?></td>
                    <td><input type="text" name="latest_blogs_heading" value="<?php echo $latest_blogs_heading; ?>" size="6" class="color {required:false,hash:true}"  />
                </tr>  
            </table>
        </div>
     <!--///////////////////////////////////////////////////////////////////////////////// shop by brand-->
        <div id="brands" class=" tab_content">
            <table class="form">
            	<tr>
                    <td>Shop by brands Background</td>
                    <td><input type="text" name="shop_brand_bg" value="<?php echo $shop_brand_bg; ?>" size="6" class="color {required:false,hash:true}"  />
                </tr> 
                <tr>
                    <td>Shop by brands Border color</td>
                    <td><input type="text" name="shop_brand_border" value="<?php echo $shop_brand_border; ?>" size="6" class="color {required:false,hash:true}"  />
                </tr> 
            </table>
        </div>
    <!--///////////////////////////////////////////////////////////////////////////////// blocks-->
        <div id="blocks" class=" tab_content">
            <table class="form">
            	<tr><td><h3>3 Top Blocks</h3></td></tr>
            	<tr>
                    <td>Block Background</td>
                    <td><input type="text" name="top_block_bg" value="<?php echo $top_block_bg; ?>" size="6" class="color {required:false,hash:true}"  />
                </tr> 
                <tr>
                    <td>Block Background on hover</td>
                    <td><input type="text" name="top_block_bg_hover" value="<?php echo $top_block_bg_hover; ?>" size="6" class="color {required:false,hash:true}"  />
                </tr> 
                <tr>
                    <td>Blocks Text color</td>
                    <td><input type="text" name="top_block_color" value="<?php echo $top_block_color; ?>" size="6" class="color {required:false,hash:true}"  />
                </tr> 
                <tr><td><h3>4 Footer Blocks</h3></td></tr>
                <tr>
                     <td>Block Background</td>
                    <td><input type="text" name="bottom_block_bg" value="<?php echo $bottom_block_bg; ?>" size="6" class="color {required:false,hash:true}"  />
                </tr> 
                <tr>
                    <td>title color</td>
                    <td><input type="text" name="bottom_block_title" value="<?php echo $bottom_block_title; ?>" size="6" class="color {required:false,hash:true}"  />
                </tr> 
                <tr>
                    <td>description color</td>
                    <td><input type="text" name="bottom_block_text" value="<?php echo $bottom_block_text; ?>" size="6" class="color {required:false,hash:true}"  />
                </tr> 
            </table>
        </div>
    <!--///////////////////////////////////////////////////////////////////////////////// general-->
        <div id="general" class=" tab_content">
            <table class="form">
            	<!--** Titles color **--> 
                <tr>
                    <td><?php echo $entry_title_color; ?></td>
                    <td><input type="text" name="title_color" value="<?php echo $title_color; ?>" size="6" class="color {required:false,hash:true}"  />
                        <span class="customhelp"><?php echo $entry_title_color_help; ?></span></td>
                </tr>               
                <!--** Body text color **-->
                <tr>
                    <td><?php echo $entry_body_color; ?></td>
                    <td><input type="text" name="bodytext_color" value="<?php echo $bodytext_color; ?>" size="6" class="color {required:false,hash:true}"  />
                        <span class="customhelp"><?php echo $entry_body_color_help; ?></span></td>
                </tr>
                <!--** Other links color **-->
                <tr>
                    <td><?php echo $entry_links_color; ?></td>
                    <td><input type="text" name="links_color" value="<?php echo $links_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                </tr>
            </table>
        </div><!--/content-->
    <!--///////////////////////////////////////////////////////////////////////////////// footer-->
        <div id="footerr" class=" tab_content">
            <table class="form">
            	<!--** Footer bg **-->
                <tr>
                    <td><?php echo $entry_footer_bg; ?></td>
                    <td><input type="text" name="footer_bg" value="<?php echo $footer_bg; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>  
                <!--** Footer middle bg **
                <tr>
                    <td><?php echo $entry_footer_mid_bg; ?></td>
                    <td><input type="text" name="footer_mid_bg" value="<?php echo $footer_mid_bg; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>
                -->
                <!--** Footer bottom bg **
                <tr>
                    <td><?php echo $entry_footer_bottom_bg; ?></td>
                    <td><input type="text" name="footer_bottom_bg" value="<?php echo $footer_bottom_bg; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>  
                -->
                <!--** Footer Headers color **-->
                <tr>
                    <td><?php echo $entry_footerheaders_color; ?></td>
                    <td><input type="text" name="footerheaders_color" value="<?php echo $footerheaders_color; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>
                <!--** Footer info text color **-->
                <tr>
                    <td><?php echo $entry_footer_info_color; ?></td>
                    <td><input type="text" name="footer_info_color" value="<?php echo $footer_info_color; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>
                <!--** Footer links color **-->
                <tr>
                    <td><?php echo $entry_footerlinks_color; ?></td>
                    <td><input type="text" name="footerlinks_color" value="<?php echo $footerlinks_color; ?>" size="6" class="color {required:false,hash:true}"  />
                    </td>
                </tr>
            </table>
        </div><!--/content-->
        
 	</div><!--tab_container-->

</div><!--/colors_settings-->
    
   
<!--*******************************************************************************************
***********************************************************************************************


 Fonts
 
 
 **********************************************************************************************
 *******************************************************************************************-->
 
            <div id="fonts_settings" class="divtab">

            <ul class="tabs-head tabs">
                <li><a href="#titlefont"><?php echo $entry_titles_sub; ?></a></li>
                <li><a href="#bodyfont"><?php echo $entry_body_sub; ?></a></li>
                <li><a href="#buttonfont"><?php echo $entry_buttons_sub; ?></a></li>
                <li><a href="#categoryfont"><?php echo $entry_category_sub; ?></a></li>
                <li><a href="#menufont"><?php echo $entry_menu_sub; ?></a></li>
                <li><a href="#productfont"><?php echo $entry_product_sub; ?></a></li>
                <li><a href="#pricefont"><?php echo $entry_price_sub; ?></a></li>
                <li><a href="#boxheadingfont"><?php echo $entry_boxheading_sub; ?></a></li>
            </ul>

			<div class="tab_container">
                <!--///////////////////////////////////////////////////////////////////////////////// title-->
                    <div id="titlefont" class=" tab_content">
						<table class="form">
                            <!--** Title font on link **-->
                            <tr>
                                <td><?php echo $entry_title_font; ?></td>
                                <td>
                                    <input type="text" name="title_font" value="<?php echo $title_font; ?>" size="30"  />
                                    <span class="customhelp"><?php echo $entry_title_font_help; ?></span>
                                </td>
                            </tr>
                            <!--** Title font on css **-->
                            <tr>
                                <td><?php echo $entry_title_font_family; ?></td>
                                <td>
                                    <input type="text" name="title_font_family" value="<?php echo $title_font_family; ?>" size="30"  />
                                    <span class="customhelp"><?php echo $entry_title_font_family_help; ?></span>
                                </td>
                            </tr>
                        </table>
					</div>
                <!--///////////////////////////////////////////////////////////////////////////////// body-->
                    <div id="bodyfont" class=" tab_content">
						<table class="form">
                            <!--** Title font on link **-->
                            <tr>
                                <td><?php echo $entry_title_font; ?></td>
                                <td>
                                    <input type="text" name="body_font" value="<?php echo $body_font; ?>" size="30"  />
                                    <span class="customhelp"><?php echo $entry_title_font_help; ?></span>
                                </td>
                            </tr>
                            <!--** Title font on css **-->
                            <tr>
                                <td><?php echo $entry_title_font_family; ?></td>
                                <td>
                                    <input type="text" name="body_font_family" value="<?php echo $body_font_family; ?>" size="30"  />
                                    <span class="customhelp"><?php echo $entry_title_font_family_help; ?></span>
                                </td>
                            </tr>
                            <!--** Title font size **-->
                            <tr>
                                <td><?php echo $entry_title_font_size; ?></td>
                                <td>
                                    <input type="text" name="body_font_size" value="<?php echo $body_font_size; ?>" size="30"  />
                                    <span class="customhelp"><?php echo $entry_title_font_size_help; ?></span>
                                </td>
                            </tr>
                        </table>
					</div>
                <!--///////////////////////////////////////////////////////////////////////////////// buttons-->
                    <div id="buttonfont" class=" tab_content">
						<table class="form">
                            <!--** Title font on link **-->
                            <tr>
                                <td><?php echo $entry_title_font; ?></td>
                                <td>
                                    <input type="text" name="button_font" value="<?php echo $button_font; ?>" size="30"  />
                                    <span class="customhelp"><?php echo $entry_title_font_help; ?></span>
                                </td>
                            </tr>
                            <!--** Title font on css **-->
                            <tr>
                                <td><?php echo $entry_title_font_family; ?></td>
                                <td>
                                    <input type="text" name="button_font_family" value="<?php echo $button_font_family; ?>" size="30"  />
                                    <span class="customhelp"><?php echo $entry_title_font_family_help; ?></span>
                                </td>
                            </tr>
                            <!--** Title font size **-->
                            <tr>
                                <td><?php echo $entry_title_font_size; ?></td>
                                <td>
                                    <input type="text" name="button_font_size" value="<?php echo $button_font_size; ?>" size="30"  />
                                    <span class="customhelp"><?php echo $entry_title_font_size_help; ?></span>
                                </td>
                            </tr>
                        </table>
					</div>
               <!--///////////////////////////////////////////////////////////////////////////////// category-->
                    <div id="categoryfont" class=" tab_content">
						<table class="form">
                            <!--** Title font on link **-->
                            <tr>
                                <td><?php echo $entry_title_font; ?></td>
                                <td>
                                    <input type="text" name="category_font" value="<?php echo $category_font; ?>" size="30"  />
                                    <span class="customhelp"><?php echo $entry_title_font_help; ?></span>
                                </td>
                            </tr>
                            <!--** Title font on css **-->
                            <tr>
                                <td><?php echo $entry_title_font_family; ?></td>
                                <td>
                                    <input type="text" name="category_font_family" value="<?php echo $category_font_family; ?>" size="30"  />
                                    <span class="customhelp"><?php echo $entry_title_font_family_help; ?></span>
                                </td>
                            </tr>
                            <!--** Title font size **-->
                            <tr>
                                <td><?php echo $entry_title_font_size; ?></td>
                                <td>
                                    <input type="text" name="category_font_size" value="<?php echo $category_font_size; ?>" size="30"  />
                                    <span class="customhelp"><?php echo $entry_title_font_size_help; ?></span>
                                </td>
                            </tr>
                        </table>
					</div>
               <!--///////////////////////////////////////////////////////////////////////////////// menu-->
                    <div id="menufont" class=" tab_content">
						<table class="form">
                            <!--** Title font on link **-->
                            <tr>
                                <td><?php echo $entry_title_font; ?></td>
                                <td>
                                    <input type="text" name="menu_font" value="<?php echo $menu_font; ?>" size="30"  />
                                    <span class="customhelp"><?php echo $entry_title_font_help; ?></span>
                                </td>
                            </tr>
                            <!--** Title font on css **-->
                            <tr>
                                <td><?php echo $entry_title_font_family; ?></td>
                                <td>
                                    <input type="text" name="menu_font_family" value="<?php echo $menu_font_family; ?>" size="30"  />
                                    <span class="customhelp"><?php echo $entry_title_font_family_help; ?></span>
                                </td>
                            </tr>
                        </table>
					</div>
                <!--///////////////////////////////////////////////////////////////////////////////// product-->
                    <div id="productfont" class=" tab_content">
						<table class="form">
                            <!--** Title font on link **-->
                            <tr>
                                <td><?php echo $entry_title_font; ?></td>
                                <td>
                                    <input type="text" name="product_font" value="<?php echo $product_font; ?>" size="30"  />
                                    <span class="customhelp"><?php echo $entry_title_font_help; ?></span>
                                </td>
                            </tr>
                            <!--** Title font on css **-->
                            <tr>
                                <td><?php echo $entry_title_font_family; ?></td>
                                <td>
                                    <input type="text" name="product_font_family" value="<?php echo $product_font_family; ?>" size="30"  />
                                    <span class="customhelp"><?php echo $entry_title_font_family_help; ?></span>
                                </td>
                            </tr>
                            <!--** Title font size **-->
                            <tr>
                                <td><?php echo $entry_title_font_size; ?></td>
                                <td>
                                    <input type="text" name="product_font_size" value="<?php echo $product_font_size; ?>" size="30"  />
                                    <span class="customhelp"><?php echo $entry_title_font_size_help; ?></span>
                                </td>
                            </tr>
                        </table>
					</div>
                <!--///////////////////////////////////////////////////////////////////////////////// price-->
                    <div id="pricefont" class=" tab_content">
						<table class="form">
                            <!--** Title font on link **-->
                            <tr>
                                <td><?php echo $entry_title_font; ?></td>
                                <td>
                                    <input type="text" name="price_font" value="<?php echo $price_font; ?>" size="30"  />
                                    <span class="customhelp"><?php echo $entry_title_font_help; ?></span>
                                </td>
                            </tr>
                            <!--** Title font on css **-->
                            <tr>
                                <td><?php echo $entry_title_font_family; ?></td>
                                <td>
                                    <input type="text" name="price_font_family" value="<?php echo $price_font_family; ?>" size="30"  />
                                    <span class="customhelp"><?php echo $entry_title_font_family_help; ?></span>
                                </td>
                            </tr>
                        </table>
					</div>
               <!--///////////////////////////////////////////////////////////////////////////////// boxheading-->
                    <div id="boxheadingfont" class=" tab_content">
						<table class="form">
                            <!--** Title font on link **-->
                            <tr>
                                <td><?php echo $entry_title_font; ?></td>
                                <td>
                                    <input type="text" name="boxheading_font" value="<?php echo $boxheading_font; ?>" size="30"  />
                                    <span class="customhelp"><?php echo $entry_title_font_help; ?></span>
                                </td>
                            </tr>
                            <!--** Title font on css **-->
                            <tr>
                                <td><?php echo $entry_title_font_family; ?></td>
                                <td>
                                    <input type="text" name="boxheading_font_family" value="<?php echo $boxheading_font_family; ?>" size="30"  />
                                    <span class="customhelp"><?php echo $entry_title_font_family_help; ?></span>
                                </td>
                            </tr>
                            <!--** Title font size **-->
                            <tr>
                                <td><?php echo $entry_title_font_size; ?></td>
                                <td>
                                    <input type="text" name="boxheading_font_size" value="<?php echo $boxheading_font_size; ?>" size="30"  />
                                </td>
                            </tr>
                        </table>
					</div>
            </div>

            </div><!--/fonts_settings-->
            
            
            
            
            
<!--*******************************************************************************************
***********************************************************************************************


 Buttons 
 
 
 **********************************************************************************************
 *******************************************************************************************-->
 
            <div id="buttons_settings" class="divtab">

                <table class="form">
                	<!--** Add to cart **-->
                    <tr>
                        <td><?php echo $entry_details_addtocart; ?></td>
                        <td><input type="text" name="details_addtocart" value="<?php echo $details_addtocart; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                    <!--** Product Details Add to cart : hover **-->
                    <tr>
                        <td><?php echo $entry_details_addtocart_hover; ?></td>
                        <td><input type="text" name="details_addtocart_hover" value="<?php echo $details_addtocart_hover; ?>" size="6" class="color {required:false,hash:true}"  /></td>
                    </tr>
                    <!--** Add to cart - color **-->
                    <tr>
                        <td><?php echo $entry_details_button_color; ?></td>
                        <td><input type="text" name="details_button_color" value="<?php echo $details_button_color; ?>" size="6" class="color {required:false,hash:true}"  />
                        </td>
                    </tr>
                    <!--** All other Add to cart **-->
                    <tr>
                        <td><?php echo $entry_all_addtocart; ?></td>
                        <td><input type="text" name="all_addtocart" value="<?php echo $all_addtocart; ?>" size="6" class="color {required:false,hash:true}"  /><span class="customhelp"><?php echo $entry_all_addtocart_button_help; ?></span></td>
                    </tr>          
                    <!--** All other Add to cart : hover **-->
                    <tr>
                        <td><?php echo $entry_all_addtocart_hover; ?></td>
                        <td><input type="text" name="all_addtocart_hover" value="<?php echo $all_addtocart_hover; ?>" size="6" class="color {required:false,hash:true}"  /><span class="customhelp"><?php echo $entry_all_addtocart_button_hover_help; ?></span></td>
                    </tr>                  
                    <!--** All other buttons color **-->
                    <tr>
                        <td><?php echo $entry_all_buttons_color; ?></td>
                        <td><input type="text" name="all_buttons_color" value="<?php echo $all_buttons_color; ?>" size="6" class="color {required:false,hash:true}"  /><span class="customhelp"><?php echo $entry_all_buttons_color_help; ?></span></td>
                    </tr>
                </table>
            
            </div><!--/buttons_settings-->
            
            
            
			
            
<!--*******************************************************************************************
***********************************************************************************************


  Custom Settings 
 
 
 **********************************************************************************************
 *******************************************************************************************-->
 
			<div id="footer2_settings" class="divtab">
			
            
            	<ul class="tabs-head tabs">
            		<li><a href="#midblocks"><?php echo $entry_mblocks; ?></a></li>
                    <li><a href="#firstblock">Bottom Blocks</a></li>
                    <li><a href="#customWidget">Custom Widget</a></li>
                    <li><a href="#companyInfo">Company Info</a></li>
                    <li><a href="#socialIcons"><?php echo $entry_entry_socialIcons; ?></a></li>
                    <li><a href="#socialWidgets">Social Widgets</a></li>
                    <li><a href="#payment"><?php echo $entry_payment_text; ?></a></li>
                    <li><a href="#contactPage"><?php echo $entry_contact_page; ?></a></li>
                    <li><a href="#customcss"><?php echo $entry_custom_css; ?></a></li>
                    <li><a href="#otherOptions">Other Options</a></li>
                </ul>
            
            	<div class="tab_container">
        
                    
					<!--///////////////////////////////////////////////////////////////////////////////// -->
                    <div id="midblocks" class="tab_content">
					<table class="form">
					<!-- ==================================== First block -->
					<tr><td><h3><?php echo $entry_firstblock; ?></h3></td></tr>
					<tr>
					<td>
					<?php echo $entry_custom_image; ?><br>
					</td>
					<td>
					<input type="hidden" name="firstmblock_img" value="<?php echo $firstmblock_img; ?>" id="firstmblock_img" />
					<img src="<?php echo $firstmblock_preview; ?>" alt="" id="firstmblock_preview" />
					<br /><a onclick="image_upload('firstmblock_img', 'firstmblock_preview');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#firstmblock_preview').attr('src', '<?php echo $no_image; ?>'); $('#firstmblock_img').attr('value', '');"><?php echo $text_clear; ?></a>
					</td>
					</tr>
					
					<?php foreach ($languages as $language) { ?>
					<tr>
					<td><?php echo $entry_firstblock_title; ?></td>
					<td><input type="text" name="firstmblock_title_<?php echo $language['language_id']; ?>" value="<?php echo ${'firstmblock_title_' . $language['language_id']}; ?>" />
					<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" style="vertical-align: top;" /><br />
					</td>
					</tr>
					<tr>
					<td><?php echo $entry_firstblock_desc; ?></td>
					<td><textarea style="border-radius: 5px 5px 5px 5px; border: 1px solid #ccc" cols="50" rows="6" name="firstmblock_desc_<?php echo $language['language_id']; ?>"><?php echo ${'firstmblock_desc_' . $language['language_id']}; ?></textarea>
					<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" style="vertical-align: top;" /><br />
					</td>
					</tr>
					<?php } ?>
					
					<tr>
					<td><?php echo $entry_block_link; ?></td>
					<td><input type="text" name="firstmblock_link" value="<?php echo $firstmblock_link; ?>" /></td>
					</tr>
					
					<!-- ==================================== Second block -->
					<tr><td><h3><?php echo $entry_secondblock; ?></h3></td></tr>
					<tr>
					<td>
					<?php echo $entry_custom_image; ?><br>
					</td>
					<td>
					<input type="hidden" name="secondmblock_img" value="<?php echo $secondmblock_img; ?>" id="secondmblock_img" />
					<img src="<?php echo $secondmblock_preview; ?>" alt="" id="secondmblock_preview" />
					<br /><a onclick="image_upload('secondmblock_img', 'secondmblock_preview');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#secondmblock_preview').attr('src', '<?php echo $no_image; ?>'); $('#secondmblock_img').attr('value', '');"><?php echo $text_clear; ?></a>
					</td>
					</tr>
					
					<?php foreach ($languages as $language) { ?>
					<tr>
					<td><?php echo $entry_secondblock_title; ?></td>
					<td><input type="text" name="secondmblock_title_<?php echo $language['language_id']; ?>" value="<?php echo ${'secondmblock_title_' . $language['language_id']}; ?>" />
					<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" style="vertical-align: top;" /><br />
					</td>
					</tr>
					<tr>
					<td><?php echo $entry_secondblock_desc; ?></td>
					<td><textarea style="border-radius: 5px 5px 5px 5px; border: 1px solid #ccc" cols="50" rows="6" name="secondmblock_desc_<?php echo $language['language_id']; ?>"><?php echo ${'secondmblock_desc_' . $language['language_id']}; ?></textarea>
					<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" style="vertical-align: top;" /><br />
					</td>
					</tr>
					<?php } ?>
					
					<tr>
					<td><?php echo $entry_block_link; ?></td>
					<td><input type="text" name="secondmblock_link" value="<?php echo $secondmblock_link; ?>" /></td>
					</tr>
					<!-- ==================================== Third block -->
					<tr><td><h3><?php echo $entry_thirdblock; ?></h3></td></tr>
					<tr>
					<td>
					<?php echo $entry_custom_image; ?><br>
					</td>
					<td>
					<input type="hidden" name="thirdmblock_img" value="<?php echo $thirdmblock_img; ?>" id="thirdmblock_img" />
					<img src="<?php echo $thirdmblock_preview; ?>" alt="" id="thirdmblock_preview" />
					<br /><a onclick="image_upload('thirdmblock_img', 'thirdmblock_preview');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#thirdmblock_preview').attr('src', '<?php echo $no_image; ?>'); $('#thirdmblock_img').attr('value', '');"><?php echo $text_clear; ?></a>
					</td>
					</tr>
					<?php foreach ($languages as $language) { ?>
					<tr>
					<td><?php echo $entry_thirdblock_title; ?></td>
					<td><input type="text" name="thirdmblock_title_<?php echo $language['language_id']; ?>" value="<?php echo ${'thirdmblock_title_' . $language['language_id']}; ?>" />
					<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" style="vertical-align: top;" /><br />
					</td>
					</tr>
					<tr>
					<td><?php echo $entry_thirdblock_desc; ?></td>
					<td><textarea style="border-radius: 5px 5px 5px 5px; border: 1px solid #ccc" cols="50" rows="6" name="thirdmblock_desc_<?php echo $language['language_id']; ?>"><?php echo ${'thirdmblock_desc_' . $language['language_id']}; ?></textarea>
					<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" style="vertical-align: top;" /><br />
					</td>
					</tr>
					<?php } ?>
					
					<tr>
					<td><?php echo $entry_block_link; ?></td>
					<td><input type="text" name="thirdmblock_link" value="<?php echo $thirdmblock_link; ?>" /></td>
					</tr>
					
					</table>
					</div>
					<!--///////////////////////////////////////////////////////////////////////////////// -->
                    <div id="firstblock" class="tab_content">
					<table class="form">
					<!-- ==================================== First block -->
					<tr><td><h3><?php echo $entry_firstblock; ?></h3></td></tr>
					<tr>
					<td>
					<?php echo $entry_custom_image; ?><br>
					</td>
					<td>
					<input type="hidden" name="firstblock_img" value="<?php echo $firstblock_img; ?>" id="firstblock_img" />
					<img src="<?php echo $firstblock_preview; ?>" alt="" id="firstblock_preview" />
					<br /><a onclick="image_upload('firstblock_img', 'firstblock_preview');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#firstblock_preview').attr('src', '<?php echo $no_image; ?>'); $('#firstblock_img').attr('value', '');"><?php echo $text_clear; ?></a>
					</td>
					</tr>
					<?php foreach ($languages as $language) { ?>
					<tr>
					<td><?php echo $entry_firstblock_title; ?></td>
					<td><input type="text" name="firstblock_title_<?php echo $language['language_id']; ?>" value="<?php echo ${'firstblock_title_' . $language['language_id']}; ?>" />
					<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" style="vertical-align: top;" /><br />
					</td>
					</tr>
					<tr>
					<td><?php echo $entry_firstblock_desc; ?></td>
					<td><input type="text" name="firstblock_desc_<?php echo $language['language_id']; ?>" value="<?php echo ${'firstblock_desc_' . $language['language_id']}; ?>" />
					<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" style="vertical-align: top;" /><br />
					</td>
					</tr>
					<?php } ?>

					<!-- ==================================== Second block -->
					<tr><td><h3><?php echo $entry_secondblock; ?></h3></td></tr>
					<tr>
					<td>
					<?php echo $entry_custom_image; ?><br>
					</td>
					<td>
					<input type="hidden" name="secondblock_img" value="<?php echo $secondblock_img; ?>" id="secondblock_img" />
					<img src="<?php echo $secondblock_preview; ?>" alt="" id="secondblock_preview" />
					<br /><a onclick="image_upload('secondblock_img', 'secondblock_preview');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#secondblock_preview').attr('src', '<?php echo $no_image; ?>'); $('#secondblock_img').attr('value', '');"><?php echo $text_clear; ?></a>
					</td>
					</tr>
					
					<?php foreach ($languages as $language) { ?>
					<tr>
					<td><?php echo $entry_secondblock_title; ?></td>
					<td><input type="text" name="secondblock_title_<?php echo $language['language_id']; ?>" value="<?php echo ${'secondblock_title_' . $language['language_id']}; ?>" />
					<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" style="vertical-align: top;" /><br />
					</td>
					</tr>
					<tr>
					<td><?php echo $entry_secondblock_desc; ?></td>
					<td><input type="text" name="secondblock_desc_<?php echo $language['language_id']; ?>" value="<?php echo ${'secondblock_desc_' . $language['language_id']}; ?>" />
					<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" style="vertical-align: top;" /><br />
					</td>
					</tr>
					<?php } ?>
					
					<!-- ==================================== Third block -->
					<tr><td><h3><?php echo $entry_thirdblock; ?></h3></td></tr>
					<tr>
					<td>
					<?php echo $entry_custom_image; ?><br>
					</td>
					<td>
					<input type="hidden" name="thirdblock_img" value="<?php echo $thirdblock_img; ?>" id="thirdblock_img" />
					<img src="<?php echo $thirdblock_preview; ?>" alt="" id="thirdblock_preview" />
					<br /><a onclick="image_upload('thirdblock_img', 'thirdblock_preview');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#thirdblock_preview').attr('src', '<?php echo $no_image; ?>'); $('#thirdblock_img').attr('value', '');"><?php echo $text_clear; ?></a>
					</td>
					</tr>
					<?php foreach ($languages as $language) { ?>
					<tr>
					<td><?php echo $entry_thirdblock_title; ?></td>
					<td><input type="text" name="thirdblock_title_<?php echo $language['language_id']; ?>" value="<?php echo ${'thirdblock_title_' . $language['language_id']}; ?>" />
					<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" style="vertical-align: top;" /><br />
					</td>
					</tr>
					<tr>
					<td><?php echo $entry_thirdblock_desc; ?></td>
					<td><input type="text" name="thirdblock_desc_<?php echo $language['language_id']; ?>" value="<?php echo ${'thirdblock_desc_' . $language['language_id']}; ?>" />
					<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" style="vertical-align: top;" /><br />
					</td>
					</tr>
					<?php } ?>
					
					<!-- ==================================== Fourth block -->
					<tr><td><h3><?php echo $entry_fourthblock; ?></h3></td></tr>
					<tr>
					<td>
					<?php echo $entry_custom_image; ?><br>
					</td>
					<td>
					<input type="hidden" name="fourthblock_img" value="<?php echo $fourthblock_img; ?>" id="fourthblock_img" />
					<img src="<?php echo $fourthblock_preview; ?>" alt="" id="fourthblock_preview" />
					<br /><a onclick="image_upload('fourthblock_img', 'fourthblock_preview');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#fourthblock_preview').attr('src', '<?php echo $no_image; ?>'); $('#fourthblock_img').attr('value', '');"><?php echo $text_clear; ?></a>
					</td>
					</tr>
					
					<?php foreach ($languages as $language) { ?>
					<tr>
					<td><?php echo $entry_fourthblock_title; ?></td>
					<td><input type="text" name="fourthblock_title_<?php echo $language['language_id']; ?>" value="<?php echo ${'fourthblock_title_' . $language['language_id']}; ?>" />
					<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" style="vertical-align: top;" /><br />
					</td>
					</tr>
					<tr>
					<td><?php echo $entry_fourthblock_desc; ?></td>
					<td><input type="text" name="fourthblock_desc_<?php echo $language['language_id']; ?>" value="<?php echo ${'fourthblock_desc_' . $language['language_id']}; ?>" />
					<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" style="vertical-align: top;" /><br />
					</td>
					</tr>
					<?php } ?>
					
					</table>
					</div>
                    <!--///////////////////////////////////////////////////////////////////////////////// -->
                    <div id="customWidget" class="tab_content">
                        <table class="form">
                        	<tr>
							<td>
							<?php echo $entry_custom_image; ?><br>
							</td>
							<td>
							<input type="hidden" name="widgetimage_img" value="<?php echo $widgetimage_img; ?>" id="widgetimage_img" />
							<img src="<?php echo $widgetimage_preview; ?>" alt="" id="widgetimage_preview" />
							<br /><a onclick="image_upload('widgetimage_img', 'widgetimage_preview');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#widgetimage_preview').attr('src', '<?php echo $no_image; ?>'); $('#widgetimage_img').attr('value', '');"><?php echo $text_clear; ?></a>
							</td>
							</tr>
                            <?php foreach ($languages as $language) { ?>
							<tr>
							<td><?php echo $entry_custom_widget_title; ?></td>
							<td><input type="text" name="custom_widget_title_<?php echo $language['language_id']; ?>" value="<?php echo ${'custom_widget_title_' . $language['language_id']}; ?>" />
							<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" style="vertical-align: top;" /><br />
							</td>
							</tr>
							<tr>
							<td><?php echo $entry_custom_widget_desc; ?></td>
							<td><textarea cols="70" rows="30" style="border: 1px solid #ccc; border-radius: 5px;" type="text" name="custom_widget_desc_<?php echo $language['language_id']; ?>"><?php echo ${'custom_widget_desc_' . $language['language_id']}; ?></textarea>
							<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" style="vertical-align: top;" /><br />
							</td>
							</tr>
							<?php } ?>
							<tr>
							<td><?php echo $entry_block_link; ?></td>
							<td><input type="text" name="customwidget_link" value="<?php echo $customwidget_link; ?>" /></td>
							</tr>
                         </table>
                    </div>
                    <!--///////////////////////////////////////////////////////////////////////////////// -->
                    <div id="companyInfo" class="tab_content">
                    	<table class="form">
                    		<!-- Widget Title -->
                			<?php foreach ($languages as $language) { ?>
                			<tr>
                				<td>Widget Title</td>
                				<td>
                					<input type="text" name="third_custom_widget_title_<?php echo $language['language_id']; ?>" value="<?php echo ${'third_custom_widget_title_' . $language['language_id']}; ?>" />
									<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" style="vertical-align: top;" /><br />
                				</td>
                			</tr>
                			<?php } ?>
                			<!-- first -->
                			<tr><td><h3>First Line</h3></td></tr>
                			<tr>
                				<td>Upload Image</td>
                				<td>
                					<input type="hidden" name="firstcompanyinfo_img" value="<?php echo $firstcompanyinfo_img; ?>" id="firstcompanyinfo_img" />
									<img src="<?php echo $firstcompanyinfo_preview; ?>" alt="" id="firstcompanyinfo_preview" />
									<br /><a onclick="image_upload('firstcompanyinfo_img', 'firstcompanyinfo_preview');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#firstcompanyinfo_preview').attr('src', '<?php echo $no_image; ?>'); $('#firstcompanyinfo_img').attr('value', '');"><?php echo $text_clear; ?></a>
                				</td>
                			</tr>
                			<?php foreach ($languages as $language) { ?>
                			<tr>
                				<td>Info</td>
                				<td>
                					<input type="text" name="first_company_info_<?php echo $language['language_id']; ?>" value="<?php echo ${'first_company_info_' . $language['language_id']}; ?>" />
									<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" style="vertical-align: top;" /><br />
                				</td>
                			</tr>
                			<?php } ?>
                			<!-- second -->
                			<tr><td><h3>second Line</h3></td></tr>
                			<tr>
                				<td>Upload Image</td>
                				<td>
                					<input type="hidden" name="secondcompanyinfo_img" value="<?php echo $secondcompanyinfo_img; ?>" id="secondcompanyinfo_img" />
									<img src="<?php echo $secondcompanyinfo_preview; ?>" alt="" id="secondcompanyinfo_preview" />
									<br /><a onclick="image_upload('secondcompanyinfo_img', 'secondcompanyinfo_preview');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#secondcompanyinfo_preview').attr('src', '<?php echo $no_image; ?>'); $('#secondcompanyinfo_img').attr('value', '');"><?php echo $text_clear; ?></a>
                				</td>
                			</tr>
                			<?php foreach ($languages as $language) { ?>
                			<tr>
                				<td>Info</td>
                				<td>
                					<input type="text" name="second_company_info_<?php echo $language['language_id']; ?>" value="<?php echo ${'second_company_info_' . $language['language_id']}; ?>" />
									<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" style="vertical-align: top;" /><br />
                				</td>
                			</tr>
                			<?php } ?>
                			<!-- third -->
                			<tr><td><h3>third Line</h3></td></tr>
                			<tr>
                				<td>Upload Image</td>
                				<td>
                					<input type="hidden" name="thirdcompanyinfo_img" value="<?php echo $thirdcompanyinfo_img; ?>" id="thirdcompanyinfo_img" />
									<img src="<?php echo $thirdcompanyinfo_preview; ?>" alt="" id="thirdcompanyinfo_preview" />
									<br /><a onclick="image_upload('thirdcompanyinfo_img', 'thirdcompanyinfo_preview');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#thirdcompanyinfo_preview').attr('src', '<?php echo $no_image; ?>'); $('#thirdcompanyinfo_img').attr('value', '');"><?php echo $text_clear; ?></a>
                				</td>
                			</tr>
                			<?php foreach ($languages as $language) { ?>
                			<tr>
                				<td>Info</td>
                				<td>
                					<input type="text" name="third_company_info_<?php echo $language['language_id']; ?>" value="<?php echo ${'third_company_info_' . $language['language_id']}; ?>" />
									<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" style="vertical-align: top;" /><br />
                				</td>
                			</tr>
                			<?php } ?>
                			<!-- fourth -->
                			<tr><td><h3>fourth Line</h3></td></tr>
                			<tr>
                				<td>Upload Image</td>
                				<td>
                					<input type="hidden" name="fourthcompanyinfo_img" value="<?php echo $fourthcompanyinfo_img; ?>" id="fourthcompanyinfo_img" />
									<img src="<?php echo $fourthcompanyinfo_preview; ?>" alt="" id="fourthcompanyinfo_preview" />
									<br /><a onclick="image_upload('fourthcompanyinfo_img', 'fourthcompanyinfo_preview');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#fourthcompanyinfo_preview').attr('src', '<?php echo $no_image; ?>'); $('#fourthcompanyinfo_img').attr('value', '');"><?php echo $text_clear; ?></a>
                				</td>
                			</tr>
                			<?php foreach ($languages as $language) { ?>
                			<tr>
                				<td>Info</td>
                				<td>
                					<input type="text" name="fourth_company_info_<?php echo $language['language_id']; ?>" value="<?php echo ${'fourth_company_info_' . $language['language_id']}; ?>" />
									<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" style="vertical-align: top;" /><br />
                				</td>
                			</tr>
                			<?php } ?>
                			<!-- fifth -->
                			<tr><td><h3>fifth Line</h3></td></tr>
                			<tr>
                				<td>Upload Image</td>
                				<td>
                					<input type="hidden" name="fifthcompanyinfo_img" value="<?php echo $fifthcompanyinfo_img; ?>" id="fifthcompanyinfo_img" />
									<img src="<?php echo $fifthcompanyinfo_preview; ?>" alt="" id="fifthcompanyinfo_preview" />
									<br /><a onclick="image_upload('fifthcompanyinfo_img', 'fifthcompanyinfo_preview');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#fifthcompanyinfo_preview').attr('src', '<?php echo $no_image; ?>'); $('#fifthcompanyinfo_img').attr('value', '');"><?php echo $text_clear; ?></a>
                				</td>
                			</tr>
                			<?php foreach ($languages as $language) { ?>
                			<tr>
                				<td>Info</td>
                				<td>
                					<input type="text" name="fifth_company_info_<?php echo $language['language_id']; ?>" value="<?php echo ${'fifth_company_info_' . $language['language_id']}; ?>" />
									<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" style="vertical-align: top;" /><br />
                				</td>
                			</tr>
                			<?php } ?>
                			<!-- sixth -->
                			<tr><td><h3>sixth Line</h3></td></tr>
                			<tr>
                				<td>Upload Image</td>
                				<td>
                					<input type="hidden" name="sixthcompanyinfo_img" value="<?php echo $sixthcompanyinfo_img; ?>" id="sixthcompanyinfo_img" />
									<img src="<?php echo $sixthcompanyinfo_preview; ?>" alt="" id="sixthcompanyinfo_preview" />
									<br /><a onclick="image_upload('sixthcompanyinfo_img', 'sixthcompanyinfo_preview');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#sixthcompanyinfo_preview').attr('src', '<?php echo $no_image; ?>'); $('#sixthcompanyinfo_img').attr('value', '');"><?php echo $text_clear; ?></a>
                				</td>
                			</tr>
                			<?php foreach ($languages as $language) { ?>
                			<tr>
                				<td>Info</td>
                				<td>
                					<input type="text" name="sixth_company_info_<?php echo $language['language_id']; ?>" value="<?php echo ${'sixth_company_info_' . $language['language_id']}; ?>" />
									<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" style="vertical-align: top;" /><br />
                				</td>
                			</tr>
                			<?php } ?>
                    	</table>
                    </div>
                 
                    <!--///////////////////////////////////////////////////////////////////////////////// -->
                    <div id="socialIcons" class="tab_content">
                        <table class="form">
                        	<tr>
                                <td><?php echo $entry_facebook_link; ?></td>
                                <td><input type="text" name="facebook_link" value="<?php echo $facebook_link; ?>" /></td>
                            </tr>
                            <tr>
                                <td><?php echo $entry_twitter_link; ?></td>
                                <td><input type="text" name="twitter_link" value="<?php echo $twitter_link; ?>" /></td>
                            </tr>
                            <tr>
                                <td><?php echo $entry_google_link; ?></td>
                                <td><input type="text" name="google_link" value="<?php echo $google_link; ?>" /></td>
                            </tr>
                            <tr>
                                <td><?php echo $entry_youtube_link; ?></td>
                                <td><input type="text" name="youtube_link" value="<?php echo $youtube_link; ?>" /></td>
                            </tr>
                            <tr>
                                <td><?php echo $entry_flickr_link; ?></td>
                                <td><input type="text" name="flickr_link" value="<?php echo $flickr_link; ?>" /></td>
                            </tr>
                             <tr>
                                <td><?php echo $entry_vimeo_link; ?></td>
                                <td><input type="text" name="vimeo_link" value="<?php echo $vimeo_link; ?>" /></td>
                            </tr>
                             <tr>
                                <td><?php echo $entry_pinterest_link; ?></td>
                                <td><input type="text" name="pinterest_link" value="<?php echo $pinterest_link; ?>" /></td>
                            </tr>
           
                        </table>
                    </div>
                    <!--///////////////////////////////////////////////////////////////////////////////// -->
                    <div id="socialWidgets" class="tab_content">
                        <table class="form">
                        	<tr><td><h3>Flickr Stream</h3></td></tr>
                        	<tr>
                                <td>Flickr Padge user</td>
                                <td><input type="text" name="flickr_user" value="<?php echo $flickr_user; ?>" /></td>
                            </tr>
                            <tr><td><h3>Latest Tweets</h3></td></tr>
                            <tr>
                                <td><?php echo $entry_twitter_username; ?></td>
                                <td><input type="text" name="twitter_username" value="<?php echo $twitter_username; ?>" /></td>
                            </tr> 
                            <tr>
                                <td><?php echo $entry_twitter_id; ?></td>
                                <td><input type="text" name="twitter_id" value="<?php echo $twitter_id; ?>" /></td>
                            </tr> 
                        </table>
                    </div>
                    <!--/////////////////////////////////////////////////////////////////////////////////-->
                    <div id="payment" class="tab_content">
                    	<table class="form">
                        
                        	<!--============================================== pay 1 -->
                        	<tr>   
                                <td>
                                    <?php echo $entry_custom_image; ?><br>
                                </td>
                                <td>
                                    <input type="hidden" name="pay1_img" value="<?php echo $pay1_img; ?>" id="pay1_img" />
                                    <img src="<?php echo $pay1_preview; ?>" alt="" id="pay1_preview" />
                                    <br /><a onclick="image_upload('pay1_img', 'pay1_preview');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#pay1_preview').attr('src', '<?php echo $no_image; ?>'); $('#pay1_img').attr('value', '');"><?php echo $text_clear; ?></a>
                                </td>
                                <td><?php echo $entry_pay_link; ?></td>
                                <td><input type="text" name="pay1_link" value="<?php echo $pay1_link; ?>" /></td>
                                <td><?php echo $entry_pay_name; ?></td>
                                <td><input type="text" name="pay1_name" value="<?php echo $pay1_name; ?>" /></td>
                            </tr>
                            <!--============================================== pay 2 -->
                        	<tr>   
                                <td>
                                    <?php echo $entry_custom_image; ?><br>
                                </td>
                                <td>
                                    <input type="hidden" name="pay2_img" value="<?php echo $pay2_img; ?>" id="pay2_img" />
                                    <img src="<?php echo $pay2_preview; ?>" alt="" id="pay2_preview" />
                                    <br /><a onclick="image_upload('pay2_img', 'pay2_preview');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#pay2_preview').attr('src', '<?php echo $no_image; ?>'); $('#pay2_img').attr('value', '');"><?php echo $text_clear; ?></a>
                                </td>
                                <td><?php echo $entry_pay_link; ?></td>
                                <td><input type="text" name="pay2_link" value="<?php echo $pay2_link; ?>" /></td>
                                <td><?php echo $entry_pay_name; ?></td>
                                <td><input type="text" name="pay2_name" value="<?php echo $pay2_name; ?>" /></td>
                            </tr>
                            <!--============================================== pay 3 -->
                        	<tr>   
                                <td>
                                    <?php echo $entry_custom_image; ?><br>
                                </td>
                                <td>
                                    <input type="hidden" name="pay3_img" value="<?php echo $pay3_img; ?>" id="pay3_img" />
                                    <img src="<?php echo $pay3_preview; ?>" alt="" id="pay3_preview" />
                                    <br /><a onclick="image_upload('pay3_img', 'pay3_preview');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#pay3_preview').attr('src', '<?php echo $no_image; ?>'); $('#pay3_img').attr('value', '');"><?php echo $text_clear; ?></a>
                                </td>
                                <td><?php echo $entry_pay_link; ?></td>
                                <td><input type="text" name="pay3_link" value="<?php echo $pay3_link; ?>" /></td>
                                <td><?php echo $entry_pay_name; ?></td>
                                <td><input type="text" name="pay3_name" value="<?php echo $pay3_name; ?>" /></td>
                            </tr>
                            <!--============================================== pay 4 -->
                        	<tr>   
                                <td>
                                    <?php echo $entry_custom_image; ?><br>
                                </td>
                                <td>
                                    <input type="hidden" name="pay4_img" value="<?php echo $pay4_img; ?>" id="pay4_img" />
                                    <img src="<?php echo $pay4_preview; ?>" alt="" id="pay4_preview" />
                                    <br /><a onclick="image_upload('pay4_img', 'pay4_preview');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#pay4_preview').attr('src', '<?php echo $no_image; ?>'); $('#pay4_img').attr('value', '');"><?php echo $text_clear; ?></a>
                                </td>
                                <td><?php echo $entry_pay_link; ?></td>
                                <td><input type="text" name="pay4_link" value="<?php echo $pay4_link; ?>" /></td>
                                <td><?php echo $entry_pay_name; ?></td>
                                <td><input type="text" name="pay4_name" value="<?php echo $pay4_name; ?>" /></td>
                            </tr>
                            <!--============================================== pay 5 -->
                        	<tr>   
                                <td>
                                    <?php echo $entry_custom_image; ?><br>
                                </td>
                                <td>
                                    <input type="hidden" name="pay5_img" value="<?php echo $pay5_img; ?>" id="pay5_img" />
                                    <img src="<?php echo $pay5_preview; ?>" alt="" id="pay5_preview" />
                                    <br /><a onclick="image_upload('pay5_img', 'pay5_preview');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#pay5_preview').attr('src', '<?php echo $no_image; ?>'); $('#pay5_img').attr('value', '');"><?php echo $text_clear; ?></a>
                                </td>
                                <td><?php echo $entry_pay_link; ?></td>
                                <td><input type="text" name="pay5_link" value="<?php echo $pay5_link; ?>" /></td>
                                <td><?php echo $entry_pay_name; ?></td>
                                <td><input type="text" name="pay5_name" value="<?php echo $pay5_name; ?>" /></td>
                            </tr>
                            <!--============================================== pay 6 -->
                        	<tr>   
                                <td>
                                    <?php echo $entry_custom_image; ?><br>
                                </td>
                                <td>
                                    <input type="hidden" name="pay6_img" value="<?php echo $pay6_img; ?>" id="pay6_img" />
                                    <img src="<?php echo $pay6_preview; ?>" alt="" id="pay6_preview" />
                                    <br /><a onclick="image_upload('pay6_img', 'pay6_preview');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#pay6_preview').attr('src', '<?php echo $no_image; ?>'); $('#pay6_img').attr('value', '');"><?php echo $text_clear; ?></a>
                                </td>
                                <td><?php echo $entry_pay_link; ?></td>
                                <td><input type="text" name="pay6_link" value="<?php echo $pay6_link; ?>" /></td>
                                <td><?php echo $entry_pay_name; ?></td>
                                <td><input type="text" name="pay6_name" value="<?php echo $pay6_name; ?>" /></td>
                            </tr>
                            <!--============================================== pay 7 -->
                        	<tr>   
                                <td>
                                    <?php echo $entry_custom_image; ?><br>
                                </td>
                                <td>
                                    <input type="hidden" name="pay7_img" value="<?php echo $pay7_img; ?>" id="pay7_img" />
                                    <img src="<?php echo $pay7_preview; ?>" alt="" id="pay7_preview" />
                                    <br /><a onclick="image_upload('pay7_img', 'pay7_preview');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#pay7_preview').attr('src', '<?php echo $no_image; ?>'); $('#pay7_img').attr('value', '');"><?php echo $text_clear; ?></a>
                                </td>
                                <td><?php echo $entry_pay_link; ?></td>
                                <td><input type="text" name="pay7_link" value="<?php echo $pay7_link; ?>" /></td>
                                <td><?php echo $entry_pay_name; ?></td>
                                <td><input type="text" name="pay7_name" value="<?php echo $pay7_name; ?>" /></td>
                            </tr>
                            <!--============================================== pay 8 -->
                        	<tr>   
                                <td>
                                    <?php echo $entry_custom_image; ?><br>
                                </td>
                                <td>
                                    <input type="hidden" name="pay8_img" value="<?php echo $pay8_img; ?>" id="pay8_img" />
                                    <img src="<?php echo $pay8_preview; ?>" alt="" id="pay8_preview" />
                                    <br /><a onclick="image_upload('pay8_img', 'pay8_preview');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#pay8_preview').attr('src', '<?php echo $no_image; ?>'); $('#pay8_img').attr('value', '');"><?php echo $text_clear; ?></a>
                                </td>
                                <td><?php echo $entry_pay_link; ?></td>
                                <td><input type="text" name="pay8_link" value="<?php echo $pay8_link; ?>" /></td>
                                <td><?php echo $entry_pay_name; ?></td>
                                <td><input type="text" name="pay8_name" value="<?php echo $pay8_name; ?>" /></td>
                            </tr>
                            <!--============================================== pay 9 -->
                        	<tr>   
                                <td>
                                    <?php echo $entry_custom_image; ?><br>
                                </td>
                                <td>
                                    <input type="hidden" name="pay9_img" value="<?php echo $pay9_img; ?>" id="pay9_img" />
                                    <img src="<?php echo $pay9_preview; ?>" alt="" id="pay9_preview" />
                                    <br /><a onclick="image_upload('pay9_img', 'pay9_preview');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#pay9_preview').attr('src', '<?php echo $no_image; ?>'); $('#pay9_img').attr('value', '');"><?php echo $text_clear; ?></a>
                                </td>
                                <td><?php echo $entry_pay_link; ?></td>
                                <td><input type="text" name="pay9_link" value="<?php echo $pay9_link; ?>" /></td>
                                <td><?php echo $entry_pay_name; ?></td>
                                <td><input type="text" name="pay9_name" value="<?php echo $pay9_name; ?>" /></td>
                            </tr>
                            <!--============================================== pay 10 -->
                        	<tr>   
                                <td>
                                    <?php echo $entry_custom_image; ?><br>
                                </td>
                                <td>
                                    <input type="hidden" name="pay10_img" value="<?php echo $pay10_img; ?>" id="pay10_img" />
                                    <img src="<?php echo $pay10_preview; ?>" alt="" id="pay10_preview" />
                                    <br /><a onclick="image_upload('pay10_img', 'pay10_preview');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#pay10_preview').attr('src', '<?php echo $no_image; ?>'); $('#pay10_img').attr('value', '');"><?php echo $text_clear; ?></a>
                                </td>
                                <td><?php echo $entry_pay_link; ?></td>
                                <td><input type="text" name="pay10_link" value="<?php echo $pay10_link; ?>" /></td>
                                <td><?php echo $entry_pay_name; ?></td>
                                <td><input type="text" name="pay10_name" value="<?php echo $pay10_name; ?>" /></td>
                            </tr>
                        </table> 
                        
                        
                    </div>
                    
                    <!--///////////////////////////////////////////////////////////////////////////////// Conatct page-->
                    <div id="contactPage" class="tab_content">
                        <table class="form">
                        	<tr>
                                <td><?php echo $entry_cont_map; ?></td>
                                <td><input type="text" name="cont_map" value="<?php echo $cont_map; ?>" /></td>
                            </tr>
                        </table>
                    </div>
                    <!--///////////////////////////////////////////////////////////////////////////////// -->
                    <div id="customcss" class="tab_content">
                        <table class="form">
                        	<tr>
                            <td>
                            <textarea name="custom_css" cols="100" rows="50" style="border-radius: 5px 5px 5px 5px; border-color: #fff; padding: 20px;font-family: 'Lucida Sans Unicode', 'Lucida Grande', sans-serif;"><?php echo $custom_css; ?></textarea>
                            </td>
                            </tr>
                        </table>
                    </div>
                    <!--////////////////////////////////////////////////////////////////////////////////// -->
                    <div id="otherOptions" class="tab_content">
                        <table class="form">
                        	
                        	<tr><td><h3>Skins</h3></td></tr>
                        	<tr>
                        		<td>Choose Skin</td>
                        		<td>
                        			<select name="skin_selected">
									<?php
									$skin1=$skin2=$skin3=$skin4=$skin5="";
									if($skin_selected =="skin1"){
									$skin1="selected";
									}else if($skin_selected =="skin2"){
									$skin2="selected";
									}else if($skin_selected =="skin3"){
									$skin3="selected";
									}else if($skin_selected =="skin4"){
									$skin4="selected";
									}else if($skin_selected =="skin5"){
									$skin5="selected";
									}
									?>
									<option value="skin1" <?php echo $skin1; ?> >Default</option>
									<option value="skin2" <?php echo $skin2; ?> >Electronics</option>
									<option value="skin3" <?php echo $skin3; ?> >Furniture</option>
									<option value="skin4" <?php echo $skin4; ?> >Kids Fashion</option>
									<option value="skin5" <?php echo $skin5; ?> >Motor</option>
									</select>
                        		</td>
                        	</tr>
                        
                        	<tr><td><h3>Choosing Modules Status (Grid / Slider) View</h3></td></tr>
                        	<tr>
                        		<td>Featured Module</td>
                        		<td>
                        			<select name="featured_select">
										<?php if ($featured_select) { ?>
										<option value="1" selected="selected">slider</option>
										<option value="0">Grid</option>
										<?php } else { ?>
										<option value="1">Slider</option>
										<option value="0" selected="selected">Grid</option>
										<?php } ?>
									</select>
                        		</td>
                        	</tr>
                        	<tr>
                        		<td>Latest Module</td>
                        		<td>
                        			<select name="latest_select">
										<?php if ($latest_select) { ?>
										<option value="1" selected="selected">slider</option>
										<option value="0">Grid</option>
										<?php } else { ?>
										<option value="1">Slider</option>
										<option value="0" selected="selected">Grid</option>
										<?php } ?>
									</select>
                        		</td>
                        	</tr>
                        	<tr>
                        		<td>Bestseller Module</td>
                        		<td>
                        			<select name="bestseller_select">
										<?php if ($bestseller_select) { ?>
										<option value="1" selected="selected">slider</option>
										<option value="0">Grid</option>
										<?php } else { ?>
										<option value="1">Slider</option>
										<option value="0" selected="selected">Grid</option>
										<?php } ?>
									</select>
                        		</td>
                        	</tr>
                        	<tr>
                        		<td>Special Module</td>
                        		<td>
                        			<select name="special_select">
										<?php if ($special_select) { ?>
										<option value="1" selected="selected">slider</option>
										<option value="0">Grid</option>
										<?php } else { ?>
										<option value="1">Slider</option>
										<option value="0" selected="selected">Grid</option>
										<?php } ?>
									</select>
                        		</td>
                        	</tr>
                        	<tr><td><h3>Choosing Header</h3></td></tr>
                        	<tr>
                        		<td>Choose Header</td>
                        		<td>
                        			<?php $select1=$select2=$select3=$select4=$select5="";
                                	if($header_select=="header1"){
                                		$select1="selected";
                                	}else if($header_select=="header2"){
                                		$select2="selected";
                                	}else if($header_select=="header3"){
                                		$select3="selected";
                                	}else if($header_select=="header4"){
                                		$select4="selected";
                                	}else if($header_select=="header5"){
                                		$select5="selected";
                                	} ?>
									<select name="header_select">
										<option value="header1" <?php echo $select1; ?> >Header 1</option>
										<option value="header2" <?php echo $select2; ?> >Header 2</option>
										<option value="header3" <?php echo $select3; ?> >Header 3</option>
										<option value="header4" <?php echo $select4; ?> >Header 4</option>
										<option value="header5" <?php echo $select5; ?> >Header 5</option>
									</select>
                        		</td>
                        	</tr>
                        	<tr><td><h3>Default Opencart Menu (Show / Hide)</h3></td></tr>
                        	<tr>
                        		<td>Default Menu</td>
                        		<td>
                        			<select name="default_menu">
										<?php if ($default_menu) { ?>
										<option value="1" selected="selected">Show</option>
										<option value="0">Hide</option>
										<?php } else { ?>
										<option value="1">Show</option>
										<option value="0" selected="selected">Hide</option>
										<?php } ?>
									</select>
                        		</td>
                        	</tr>
                        	<!--============================================== footer image -->
                        	<tr><td><h3>Logo footer image</h3></td></tr>
                        	<tr>   
                                <td>
                                    Upload Footer Image<br>
                                </td>
                                <td>
                                    <input type="hidden" name="footer_image" value="<?php echo $footer_image; ?>" id="footer_image" />
                                    <img src="<?php echo $footer_preview; ?>" alt="" id="footer_preview" />
                                    <br /><a onclick="image_upload('footer_image', 'footer_preview');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#footer_preview').attr('src', '<?php echo $no_image; ?>'); $('#footer_image').attr('value', '');"><?php echo $text_clear; ?></a>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div><!--/tab_container-->

			</div><!--/footer_settings-->
			
	   </div><!--/data_right-->
	</form>
		
	</div>
    </div>
</div><!--back_ptrn-->
</div>

<?php echo $footer; ?>

<script>
// Tabs
//---------------------------------------------
/* <![CDATA[ */
$(document).ready(function(){
	$(".tab_content").hide();
$("ul.tabs").each(function() {
    $(this).find('li:first').addClass("active");
    $(this).next('.tab_container').find('.tab_content:first').show();
});

$("ul.tabs li a").click(function() {
    var cTab = $(this).closest('li');
    cTab.siblings('li').removeClass("active");
    cTab.addClass("active");
    cTab.closest('ul.tabs').nextAll('.tab_container:first').find('.tab_content').hide(); 

    var activeTab = $(this).attr("href"); //Find the href attribute value to identify the active tab + content
    $(activeTab).fadeIn(); //Fade in the active ID content
    return false;
});
});
/* ]]> */
</script>

<script type="text/javascript">

	$('#settings_tabs a').tabs(); 
	$('#footer_settings_tabs a').tabs();

</script>

<script type="text/javascript" src="view/javascript/jscolor/jscolor.js"></script> 

<script type="text/javascript"><!--

$(document).ready(function() {

	$('	#background_color').ColorPicker({
		onSubmit: function(hsb, hex, rgb, el) {
			$(el).val(hex);
			$(el).ColorPickerHide();
		},
		onBeforeShow: function () {
			$(this).ColorPickerSetColor(this.value);
		}
	})
	.bind('keyup', function(){
		$(this).ColorPickerSetColor(this.value);
	});
	 });

//--></script>

<script type="text/javascript"><!--
function image_upload(field, preview) {
	$('#dialog').remove();
	
	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	
	$('#dialog').dialog({
		title: '<?php echo $text_image_manager; ?>',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>&image=' + encodeURIComponent($('#' + field).val()),
					dataType: 'text',
					success: function(data) {
						$('#' + preview).replaceWith('<img src="' + data + '" alt="" id="' + preview + '" />');
					}
				});
			}
		},	
		bgiframe: false,
		width: 700,
		height: 400,
		resizable: false,
		modal: false
	});
};
//--></script> 

<script>

</script>