<!DOCTYPE html>

<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
	
<head>
	<meta charset="UTF-8" />
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<title><?php echo $title; ?></title>
	
	<base href="<?php echo $base; ?>" />
	
	<?php if ($description) { ?>
	<meta name="description" content="<?php echo $description; ?>" />
	<?php } ?>
	
	<?php if ($keywords) { ?>
	<meta name="keywords" content="<?php echo $keywords; ?>" />
	<?php } ?>
	
	<?php if ($icon) { ?>
	<link href="<?php echo $icon; ?>" rel="icon" />
	<?php } ?>
	
	<?php foreach ($links as $link) { ?>
	<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
	<?php } ?>
	
	<?php foreach ($styles as $style) { ?>
	<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
	<?php } ?>
	
	<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
	<!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
	<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
	<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
	<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
	
    <?php if ($direction == 'ltr') { ?>	
    	<link rel="stylesheet" href="catalog/view/theme/valentino/stylesheet/assets/css/bootstrap.css">
	    <link rel="stylesheet" href="catalog/view/theme/valentino/stylesheet/assets/css/bootstrap-responsive.min.css">
	    <script src="catalog/view/theme/valentino/stylesheet/assets/js/bootstrap.min.js"></script>
	    <link rel="stylesheet" href="catalog/view/theme/valentino/stylesheet/stylesheet.css">
	    <link rel="stylesheet" href="catalog/view/theme/valentino/stylesheet/pavmegamenu.css">
	    <script src="catalog/view/javascript/jquery/jquery.bxslider.min.js"></script><!-- bx slider -->
	    <link rel="stylesheet" href="catalog/view/theme/valentino/stylesheet/jquery.bxslider.css"><!-- bx slider --> 
	    <script src="catalog/view/javascript/jquery/livesearch.js"></script>   
	    <link rel="stylesheet" href="catalog/view/theme/valentino/stylesheet/responsive.css">
	    <script src="catalog/view/javascript/jquery/cloud-zoom.js"></script>
		<link rel="stylesheet" href="catalog/view/theme/valentino/stylesheet/cloud-zoom.css" type="text/css">
    <?php } else { ?>
		<link rel="stylesheet" href="catalog/view/theme/valentino/stylesheet/rtl/assets/css/bootstrap.rtl.css">
	    <link rel="stylesheet" href="catalog/view/theme/valentino/stylesheet/rtl/assets/css/bootstrap-responsive.rtl.min.css">
	    <script src="catalog/view/theme/valentino/stylesheet/rtl/assets/js/bootstrap.min.js"></script>
	    <link rel="stylesheet" href="catalog/view/theme/valentino/stylesheet/rtl/stylesheet.css">
	    <link rel="stylesheet" href="catalog/view/theme/valentino/stylesheet/rtl/pavmegamenu.css">
	    <script src="catalog/view/javascript/jquery/jquery.bxslider.min.js"></script><!-- bx slider -->
	    <link rel="stylesheet" href="catalog/view/theme/valentino/stylesheet/rtl/jquery.bxslider.css"><!-- bx slider --> 
	    <script src="catalog/view/javascript/jquery/livesearch.js"></script>   
	    <link rel="stylesheet" href="catalog/view/theme/valentino/stylesheet/rtl/pavblog.css">
	    <link rel="stylesheet" href="catalog/view/theme/valentino/stylesheet/rtl/responsive.css">
	    <script src="catalog/view/javascript/jquery/cloud-zoom-rtl.js"></script>
		<link rel="stylesheet" href="catalog/view/theme/valentino/stylesheet/cloud-zoom.css" type="text/css">
    <?php } ?>
    <!-- Camera Slideshow -->
    <link rel='stylesheet' id='camera-css'  href='catalog/view/theme/valentino/stylesheet/camera.css' media='all'> 
    <script src='catalog/view/javascript/jquery/jquery.mobile.customized.min.js'></script>
    <script src='catalog/view/javascript/jquery/camera.min.js'></script> 
    <!-- accordion category -->
    <script src='catalog/view/javascript/jquery/jquery.cookie.js'></script>
	<script src='catalog/view/javascript/jquery/jquery.hoverIntent.minified.js'></script>
    <script src='catalog/view/javascript/jquery/jquery.dcjqaccordion.2.7.min.js'></script>
    <script>
	$(document).ready(function($){
	$('#accordion-1').dcAccordion({
		eventType   : 'click',
		autoClose   : true,
		saveState   : true,
		disableLink : false,
		speed       : 'slow',
		showCount   : false,
		autoExpand  : false,
		cookie	  : 'dcjq-accordion-1',
		classExpand : 'dcjq-current-parent'
	});
	});
	</script>
		
	<?php foreach ($scripts as $script) { ?>
	<script src="<?php echo $script; ?>"></script>
	<?php } ?>
	
	<?php if ($stores) { ?>
	<script type="text/javascript"><!--
	$(document).ready(function() {
	<?php foreach ($stores as $store) { ?>
	$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
	<?php } ?>
	});
	//--></script>
	<?php } ?>
	<?php echo $google_analytics; ?>
	
	<!-- Skin Selected -->
	<?php if($this->config->get('skin_selected') == 'skin1') { ?>
	<?php }else if($this->config->get('skin_selected') == 'skin2'){ ?>
		<link rel="stylesheet" href="catalog/view/theme/valentino/stylesheet/skins/electronic.css" type="text/css">
	<?php }else if($this->config->get('skin_selected') == 'skin3'){ ?>
		<link rel="stylesheet" href="catalog/view/theme/valentino/stylesheet/skins/furniture.css" type="text/css">
	<?php }else if($this->config->get('skin_selected') == 'skin4'){ ?>
		<link rel="stylesheet" href="catalog/view/theme/valentino/stylesheet/skins/kids-fashion.css" type="text/css">
	<?php }else if($this->config->get('skin_selected') == 'skin5'){ ?>
		<link rel="stylesheet" href="catalog/view/theme/valentino/stylesheet/skins/motor.css" type="text/css">
	<?php } ?>
	
	<!--options call-->
	<?php require_once('catalog/view/theme/valentino/template/common/theme_options.tpl') ;?>
	
</head>

<body>
	<section class="topAdv">
		<a href="<?php echo $this->config->get('topAdv_link')?>"><div style="height: <?php echo $this->config->get('topAdv_height')?>px"></div></a>
	</section>
	<section>
		<?php if ($error) { ?>    
		    <div class="warning"><?php echo $error ?><img src="catalog/view/theme/valentino/image/close.png" alt="" class="close" /></div>  
		<?php } ?>
		<div class="container">
			<div id="notification"></div>
		</div>
	</section>
	<div class="head4">
		
			<section class="topBar">
				<div class="container" style="background: transparent">
					<div class="row">
						<div class="span4">
							<div id="welcome">
							    <?php if (!$logged) { ?>
							    <?php echo $text_welcome; ?>
							    <?php } else { ?>
							    <?php echo $text_logged; ?>
							    <?php } ?>
						    </div>
						    <div class="links">
						    	<?php echo $text_links; ?>
						    	<ul>
									<li><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a></li>
									<li><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a></li>
									<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
									<li><a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a></li>
									<li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
								</ul>
							</div>
							<?php echo $currency; ?>
						    <?php echo $language; ?>
							
							<div class="clearfix"></div>
							<div id="search">
						    	<div class="button-search"></div>
						    	<input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
						    </div>
						</div>
						<?php if ($logo) { ?>
					    	<div id="logo">
					    		<a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="logo" /></a>
					        </div>
					    <?php } ?>
						<div class="span3 offset5">
							<?php echo $cart; ?>
						</div>
					</div>
				</div>
			</section><!--/topBar-->
		
			<header>
				<div class="container">
					<div class="row">
					    <div class="span12">
					    <!--Menu-->
					    <?php if($this->config->get('default_menu')== 1) { ?>
						    <?php if ($categories) { ?>
								<div id="menu">
								    <ul>     
						                <?php foreach ($categories as $category) : echo '
						                <li><a href="'.$category['href'].'">'.$category['name'].'</a>'; 
						                    if (!empty($category['children'])) : 
						                     echo '<div>';						                        
						                         echo '<ul>'; 
						                             foreach ($category['children'] as $category_level2) : echo 
						                             '<li><a href="'.$category_level2['href'].'">'.$category_level2['name'].'</a>';      
						                                       
						                             if (!empty($category_level2['children'])) :    
						                             echo '<span class="arro">&rsaquo;</span>';                 
						                                 echo '<ul>';                     
						                                 foreach ($category_level2['children'] as $category_level3) :                         
						                                 echo '<li><a href="'.$category_level3['href'].'">'.$category_level3['name'].'</a></li>';                    
						                                 endforeach;                     
						                                 echo '</ul>';endif;                 
						                             echo '</li>'; endforeach;             
						                         echo '</ul>';
						                     echo '</div>'; endif;         
						                 echo '</li>'; endforeach;     
						            echo '</ul>';  ?> 
						            </ul>
								</div>
							<?php } ?>
							<!--***** MENU FOR MOBILE DEVICES RETURNS INTO SELECT ****-->
						    <?php if ($categories) { ?>
						    <div class="menuDevices">
						      <div class="select_outer">
						          <div class="bg_select"></div>
						          <select onchange="location=this.value">
						                <option><?php echo $text_menu; ?></option>
						                <?php foreach ($categories as $category) { ?>
						                <option value="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></option>
						                <?php } ?>    
						          </select>
						      </div><!--/select_outer-->
						    </div>
						    <?php } ?>
					    <?php } ?>
					    <!-- Mega Menu -->
						<?php echo $mainmenu; ?>
						</div><!--/span9 offset-->
					</div><!--/row-->	
				</div><!--/container-->
			</header>		
		</div><!--head4-->	
			<!--
			 NEW POSITION FOR SLIDESHOW	
			-->
			<?php echo $content_top_full_width; ?>