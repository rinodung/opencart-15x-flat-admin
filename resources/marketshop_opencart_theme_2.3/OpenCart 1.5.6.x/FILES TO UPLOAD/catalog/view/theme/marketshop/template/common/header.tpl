<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
<link rel="stylesheet" media="screen" href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/marketshop/stylesheet/stylesheet.min.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/marketshop/stylesheet/owl.carousel.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/marketshop/stylesheet/responsive.min.css" />
<?php if ($direction == 'rtl') { ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/marketshop/stylesheet/stylesheet-rtl.min.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/bootstrap/css/bootstrap-rtl.min.css" />
<?php } ?>
<?php if ($direction == 'rtl') { ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/marketshop/stylesheet/responsive-rtl.css" />
<?php } ?>
<?php if($this->config->get('marketshop_skin')== 2) { ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/marketshop/stylesheet/stylesheet-skin2.min.css" />
<?php } else if($this->config->get('marketshop_skin')== 3) { ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/marketshop/stylesheet/stylesheet-skin3.min.css" />
<?php } else if($this->config->get('marketshop_skin')== 4) { ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/marketshop/stylesheet/stylesheet-skin4.min.css" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<script type="text/javascript" src="catalog/view/theme/marketshop/js/jquery.easing-1.3.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/marketshop/js/owl.carousel.min.js" ></script>
<script type="text/javascript" src="catalog/view/theme/marketshop/js/custom.min.js"></script>
<?php if($this->config->get('marketshop_search_auto_complete')== 1) { ?>
<?php if (isset($this->request->get['route']) && $this->request->get['route'] != 'affiliate/tracking') { ?>
<script src="catalog/view/theme/marketshop/js/jquery.autocomplete.min.js" type="text/javascript"></script>
<?php } ?>
<?php if (isset($this->request->get['route']) != 'affiliate/tracking') { ?>
<script src="catalog/view/theme/marketshop/js/jquery.autocomplete.min.js" type="text/javascript"></script>
<?php } ?>
<script type="text/javascript">
$(document).ready(function() {	
	$("#filter_name").autocomplete("getdata.php?lan=<?php echo $_SESSION['language']; ?>", {
		width: 260,
		resultsClass: "ac_results<?php if($this->config->get('marketshop_header_style')== 2) { ?> style2<?php } ?><?php if($this->config->get('marketshop_header_style')== 3) { ?> style3<?php } ?>",
		matchContains: true
	});
});
</script>
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>

<!--[if lt IE 9]>
<script src="catalog/view/javascript/html5.js"></script>
<script src="catalog/view/javascript/respond.min.js"></script>
<![endif]-->


<?php
if($this->config->get('marketshop_status')== 1) {
if($this->config->get('marketshop_title_font')!='' || $this->config->get('marketshop_body_font')!='' || $this->config->get('marketshop_top_bar_font')!='' || $this->config->get('marketshop_secondary_titles_font')!='' || $this->config->get('marketshop_footer_titles_font')!='' || $this->config->get('marketshop_main_menu_font') != '' ) {		
		$regfonts = array('', 'Arial', 'Verdana', 'Helvetica', 'Lucida Grande', 'Trebuchet MS', 'Times New Roman', 'Tahoma', 'Georgia' );
		if (in_array($this->config->get('marketshop_title_font'), $regfonts)==false) { ?>
        <link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('marketshop_title_font') ?>' rel='stylesheet' type='text/css'>
        <?php }
        if (in_array($this->config->get('marketshop_body_font'), $regfonts)==false) { ?>
        <link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('marketshop_body_font') ?>&subset=cyrillic' rel='stylesheet' type='text/css'>
        <?php }
        if (in_array($this->config->get('marketshop_main_menu_font'), $regfonts)==false) { ?>
        <link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('marketshop_main_menu_font') ?>' rel='stylesheet' type='text/css'>
        <?php }
        if (in_array($this->config->get('marketshop_top_bar_font'), $regfonts)==false) { ?>
        <link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('marketshop_top_bar_font') ?>' rel='stylesheet' type='text/css'>
        <?php  }
        if (in_array($this->config->get('marketshop_secondary_titles_font'), $regfonts)==false) { ?>
        <link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('marketshop_secondary_titles_font') ?>' rel='stylesheet' type='text/css'>
        <?php }
        if (in_array($this->config->get('marketshop_footer_titles_font'), $regfonts)==false) { ?>
        <link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('marketshop_footer_titles_font') ?>' rel='stylesheet' type='text/css'>
        <?php } 
	} 
?>
<style type="text/css">
body {
<?php if($this->config->get('marketshop_background_color')!='') {
?> background-color: <?php echo $this->config->get('marketshop_background_color');
?>;
 <?php
}
if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') {
	$path_image = $this->config->get('config_ssl') . 'image/';
} else {
	$path_image = $this->config->get('config_url') . 'image/';
}
if($this->config->get('marketshop_custom_image')!='') { ?>
background-image: url("<?php echo $path_image . $this->config->get('marketshop_custom_image') ?>"); ?>; background-position:<?php echo $this->config->get('marketshop_custom_image_position'); ?>; background-repeat:<?php echo $this->config->get('marketshop_custom_image_repeat'); ?>; background-attachment:<?php echo $this->config->get('marketshop_custom_image_attachment'); ?>;
<?php
}
else if($this->config->get('marketshop_pattern_overlay')!='none') { ?>
background-image: url("catalog/view/theme/marketshop/image/patterns/<?php echo $this->config->get('marketshop_pattern_overlay'); ?>.png");
<?php
}
else {
?> background-image: none;
 <?php
}
?>
}
<?php  if($this->config->get('marketshop_theme_color')!='') { ?>
.pagination .links b, .owl-carousel.slideshowhome .owl-controls .owl-buttons .owl-prev:hover, .owl-carousel.slideshowhome .owl-controls .owl-buttons .owl-next:hover, .nivo-directionNav .nivo-nextNav:hover, .nivo-directionNav .nivo-prevNav:hover, #back-top a:hover, .nivo-controlNav a.active {background-color: <?php echo $this->config->get('marketshop_theme_color');?>;}
.pagination .links a:hover, .product-grid .wishlist a:hover, .product-grid .compare a:hover, .product-list .wishlist a:hover, .product-list .compare a:hover, .box-product .product-item .wishlist a:hover, .box-product .product-item .compare a:hover{color: <?php echo $this->config->get('marketshop_theme_color'); ?>;}
.pagination .links b{border-color: <?php echo $this->config->get('marketshop_theme_color'); ?>;}
<?php
}
if($this->config->get('marketshop_body_text_color')!='') {?>
body {color: <?php echo $this->config->get('marketshop_body_text_color'); ?>;}
<?php
}
if($this->config->get('marketshop_general_links_color')!='') {?>
a, a b{color: <?php echo $this->config->get('marketshop_general_links_color'); ?>;}
<?php
}
if($this->config->get('marketshop_general_links_hover_color')!='') {?>
a:hover, a b:hover, .category .tabs li a:hover, .sitemap li a:hover, .breadcrumb a:hover, .login-content .right a:hover, .box-category a:hover, .list-item a:hover, #blogArticle .articleHeader h1 a:hover, #blogCatArticles .articleHeader h3 a:hover, .tags-update .tags a:hover, .articleHeader span a:hover {color: <?php echo $this->config->get('marketshop_general_links_hover_color'); ?>;}
<?php
}
if($this->config->get('marketshop_heading_color')!='') {?>
.welcome, #container h1{color: <?php echo $this->config->get('marketshop_heading_color'); ?>;}
<?php
}
if($this->config->get('marketshop_secondary_heading_color')!='') {?>
#container h2, .box .box-heading, .product-tab .htabs a, .product-tab .tabs li a{color: <?php echo $this->config->get('marketshop_secondary_heading_color'); ?>;}
<?php
}
if($this->config->get('marketshop_secondary_heading_border_color')!='') {?>
#container h2, .box .box-heading, .product-tab .htabs a, .product-tab .tabs li.active a, .product-tab .tabs, .category .tabs li.active a{border-color: <?php echo $this->config->get('marketshop_secondary_heading_border_color'); ?>;}
<?php
}
if($this->config->get('marketshop_header_margin')!='') {?>
#header .header-row{padding: <?php echo $this->config->get('marketshop_header_margin'); ?>px 0px;}
/*===== TOP BAR =====*/
<?php
}
if($this->config->get('marketshop_top_bar_bg_color')!='') {?>
#header .htop{background-color:<?php echo $this->config->get('marketshop_top_bar_bg_color'); ?>;}
<?php
}
if($this->config->get('marketshop_top_bar_link_color')!='') {?>
#header .links > ul > li > a, #language span a, #currency span a, #language, #currency, #header #welcome a, #header .links > ul > li.mobile, .drop-icon{color:<?php echo $this->config->get('marketshop_top_bar_link_color'); ?>;}
<?php
}
if($this->config->get('marketshop_top_bar_link_color')!='') {?>
#language span b, #currency span b, #header .links > ul > li.wrap_custom_block a b{border-top-color:<?php echo $this->config->get('marketshop_top_bar_link_color'); ?>;}
<?php
}
if(($this->config->get('marketshop_top_bar_link_separator_style')!='') && ($this->config->get('marketshop_top_bar_link_separator_color')!='')) {?>
#header .links > ul > li, #header #welcome a{border-left:1px <?php echo $this->config->get('marketshop_top_bar_link_separator_style')?> <?php echo $this->config->get('marketshop_top_bar_link_separator_color')?>}
<?php
}
if(($this->config->get('marketshop_top_bar_link_separator_style')!='') && ($this->config->get('marketshop_top_bar_link_separator_color')!='')) {?>
#header .links, #language, #currency, #header #welcome{border-right:1px <?php echo $this->config->get('marketshop_top_bar_link_separator_style')?> <?php echo $this->config->get('marketshop_top_bar_link_separator_color')?>}
<?php
}
if($this->config->get('marketshop_top_bar_sub_link_color')!='') {?>
#language ul li a, #currency ul li a, #currency ul li a b{color:<?php echo $this->config->get('marketshop_top_bar_sub_link_color'); ?>;}
<?php
}
if($this->config->get('marketshop_top_bar_sub_link_hover_color')!='') {?>
#language ul li a:hover, #currency ul li a:hover{color:<?php echo $this->config->get('marketshop_top_bar_sub_link_hover_color'); ?>;}
<?php
}
if($this->config->get('marketshop_header_bg_color')!='') {?>
#header .header-row{background-color:<?php echo $this->config->get('marketshop_header_bg_color'); ?>;}
<?php
}
if($this->config->get('marketshop_mini_cart_icon_color')!='') {?>
#header #cart .heading h4{background-color:<?php echo $this->config->get('marketshop_mini_cart_icon_color'); ?>;}
<?php
}
if($this->config->get('marketshop_mini_cart_icon_color')!='') {?>
#header #cart .heading h4:after, #header #cart .heading h4:before{border-color:<?php echo $this->config->get('marketshop_mini_cart_icon_color'); ?>;}
<?php
}
if($this->config->get('marketshop_mini_cart_icon_color')!='') {?>
#header #cart .content{border-color:<?php echo $this->config->get('marketshop_mini_cart_icon_color'); ?>;}
<?php
}
if($this->config->get('marketshop_mini_cart_icon_color')!='') {?>
#header #cart.active .heading a span:after{border-color:transparent  transparent <?php echo $this->config->get('marketshop_mini_cart_icon_color'); ?>;}
<?php
}
if($this->config->get('marketshop_mini_cart_link_color')!='') {?>
#header #cart .heading a{color:<?php echo $this->config->get('marketshop_mini_cart_link_color'); ?>;}
<?php
}
if($this->config->get('marketshop_mini_cart_active_link_color')!='') {?>
#header #cart.active .heading a{color:<?php echo $this->config->get('marketshop_mini_cart_active_link_color'); ?>;}


<?php
}
if($this->config->get('marketshop_search_bar_background_color')!='') {?>
#header #search input{background-color:<?php echo $this->config->get('marketshop_search_bar_background_color'); ?>;}
<?php
}
if($this->config->get('marketshop_search_bar_border_color')!='') {?>
#header #search input{border-color:<?php echo $this->config->get('marketshop_search_bar_border_color'); ?>;}
<?php
}
if($this->config->get('marketshop_search_bar_text_color')!='') {?>
#header #search input{color:<?php echo $this->config->get('marketshop_search_bar_text_color'); ?>;}
<?php
}
if($this->config->get('marketshop_search_bar_border_hover_color')!='') {?>
#header #search input:focus, #header #search input:hover{border-color:<?php echo $this->config->get('marketshop_search_bar_border_hover_color'); ?>;}

/*===== MAIN MENU =====*/
<?php
}
if(($this->config->get('marketshop_main_menu_align')!='') && ($this->config->get('marketshop_main_menu_align') ==2)) { ?>
#menu .navbar-nav{text-align: center;}
#menu .nav > li{display: inline-block; float: none;}
<?php
}
if(($this->config->get('marketshop_menu_bg_color')!='') && ($this->config->get('marketshop_menu_bg_color_status') ==1)) { ?>
#menu {background-color: <?php echo $this->config->get('marketshop_menu_bg_color'); ?>;}
<?php
}
if($this->config->get('marketshop_menu_link_color')!='') {?>
#menu .nav > li > a {color: <?php echo $this->config->get('marketshop_menu_link_color'); ?>;}
<?php
}
if($this->config->get('marketshop_menu_link_hover_color')!='') {?>
#menu .nav > li:hover > a {color: <?php echo $this->config->get('marketshop_menu_link_hover_color'); ?>;}
<?php
}
if($this->config->get('marketshop_menu_link_hover_bg_color')!='') {?>
#menu .nav > li:hover > a{background-color: <?php echo $this->config->get('marketshop_menu_link_hover_bg_color'); ?>;}
<?php
}
if(($this->config->get('marketshop_menu_link_separator_size')!='') && ($this->config->get('marketshop_menu_link_separator_style')!='') && ($this->config->get('marketshop_menu_link_separator_color')!='') && ($this->config->get('marketshop_menu_link_separator_status') ==1)) {?>
#menu .nav > li + li{border-left:<?php echo $this->config->get('marketshop_menu_link_separator_size')?>px <?php echo $this->config->get('marketshop_menu_link_separator_style')?> <?php echo $this->config->get('marketshop_menu_link_separator_color')?>}
<?php
}
if(($this->config->get('marketshop_menu_link_border_top_size')!='') && ($this->config->get('marketshop_menu_link_border_top_style')!='') && ($this->config->get('marketshop_menu_link_border_top_color')!='') && ($this->config->get('marketshop_menu_link_border_top_status') ==1)) {?>
#menu{border-top:<?php echo $this->config->get('marketshop_menu_link_border_top_size')?>px <?php echo $this->config->get('marketshop_menu_link_border_top_style')?> <?php echo $this->config->get('marketshop_menu_link_border_top_color')?>}
<?php
}
if(($this->config->get('marketshop_menu_link_border_top_status') == 2)) {?>
#menu{border-top:none;}
<?php
}
if(($this->config->get('marketshop_menu_link_border_bottom_size')!='') && ($this->config->get('marketshop_menu_link_border_bottom_style')!='') && ($this->config->get('marketshop_menu_link_border_bottom_color')!='') && ($this->config->get('marketshop_menu_link_border_bottom_status') == 1)) {?>
#menu{border-bottom:<?php echo $this->config->get('marketshop_menu_link_border_bottom_size')?>px <?php echo $this->config->get('marketshop_menu_link_border_bottom_style')?> <?php echo $this->config->get('marketshop_menu_link_border_bottom_color')?>}
<?php
}
if(($this->config->get('marketshop_menu_link_border_bottom_status') == 2)) {?>
#menu{border-bottom:none;}
<?php
}
if($this->config->get('marketshop_sub_menu_background_color')!='') {?>
#menu .nav > li.categories_hor > div, #menu .nav > li.categories > div, #menu .nav > li.categories_hor > div .submenu, #menu .nav > li.categories > div > .column > div, #menu .nav > li > .dropdown-menu, #menu .submenu{background-color:<?php echo $this->config->get('marketshop_sub_menu_background_color'); ?>;}
<?php
}
if($this->config->get('marketshop_sub_menu_top_border_color')!='') {?>
#menu .nav > li.categories_hor > div, #menu .nav > li.categories > div, #menu .nav > li.categories_hor > div .submenu, #menu .nav > li.categories > div > .column > div, #menu .nav > li > .dropdown-menu, #menu .submenu{border-color:<?php echo $this->config->get('marketshop_sub_menu_top_border_color'); ?>;}
<?php
}
if($this->config->get('marketshop_sub_menu_top_border_color')!='') {?>
#menu .nav > li.sub:hover > a:after{border-bottom-color:<?php echo $this->config->get('marketshop_sub_menu_top_border_color'); ?>;}
<?php
}
if($this->config->get('marketshop_sub_menu_heading_text_color')!='') {?>
#menu .nav > li.categories_hor > div > .column > a{color:<?php echo $this->config->get('marketshop_sub_menu_heading_text_color'); ?>;}
<?php
}
if(($this->config->get('marketshop_sub_menu_heading_text_separator_color')!='') && ($this->config->get('marketshop_sub_menu_heading_text_separator_style')!='')) {?>
#menu .nav > li.categories_hor > div > .column > a{border-bottom:1px <?php echo $this->config->get('marketshop_sub_menu_heading_text_separator_style')?> <?php echo $this->config->get('marketshop_sub_menu_heading_text_separator_color')?>
}
<?php
}
if($this->config->get('marketshop_sub_menu_link_color')!='') {?>
#menu .nav > li.categories > div > .column > a, #menu .nav > li div > ul > li > a, #menu .nav > li.menu_brands > div > div a, #menu .custom_block, #menu .custom_block a {color: <?php echo $this->config->get('marketshop_sub_menu_link_color'); ?>;}
<?php
}
if($this->config->get('marketshop_sub_menu_link_hover_color')!='') {?>
#menu .nav > li.categories > div > .column:hover > a, #menu .nav > li div > ul > li:hover > a, #menu .nav > li.categories_hor > div > .column:hover > a, #menu .nav > li.menu_brands > div > div a:hover, #menu .custom_block a:hover {
color: <?php echo $this->config->get('marketshop_sub_menu_link_hover_color'); ?>;}
<?php
}
if(($this->config->get('marketshop_sub_menu_link_separator_color')!='') && ($this->config->get('marketshop_sub_menu_link_separator_style')!='')) {?>
#menu .nav > li.categories > div > .column + .column, #menu .nav > li > div > ul li + li, #menu .nav > li.categories > div > .column:hover > div ul li + li, #menu .nav > li.categories_hor > div .submenu ul li + li a {border-top:1px <?php echo $this->config->get('marketshop_sub_menu_link_separator_style')?> <?php echo $this->config->get('marketshop_sub_menu_link_separator_color')?>}

<?php
}
if($this->config->get('marketshop_home_page_link_background_color')!='') {?>
#menu .nav > li > a.home_link {background-color: <?php echo $this->config->get('marketshop_home_page_link_background_color'); ?>;}
<?php
}
if($this->config->get('marketshop_home_page_link_background_color_hover')!='') {?>
#menu .nav > li > a.home_link:hover {background-color: <?php echo $this->config->get('marketshop_home_page_link_background_color_hover'); ?>;}
<?php
}
if($this->config->get('marketshop_home_page_link_link_color')!='') {?>
#menu .nav > li > a.home_link {color: <?php echo $this->config->get('marketshop_home_page_link_link_color'); ?>;}
<?php
}
if($this->config->get('marketshop_home_page_link_link_color_hover')!='') {?>
#menu .nav > li > a.home_link:hover {color: <?php echo $this->config->get('marketshop_home_page_link_link_color_hover'); ?>;}
<?php
}
if($this->config->get('marketshop_home_page_link_icon_color')!='') {?>
#menu .nav > li > a.home_link span {background-color: <?php echo $this->config->get('marketshop_home_page_link_icon_color'); ?>;}
<?php
}
if($this->config->get('marketshop_home_page_link_icon_color')!='') {?>
#menu .nav > li > a.home_link span:before {border-bottom-color: <?php echo $this->config->get('marketshop_home_page_link_icon_color'); ?>;}
<?php
}
if($this->config->get('marketshop_home_page_link_icon_color')!='') {?>
#menu .nav > li > a.home_link span:after {border-color: <?php echo $this->config->get('marketshop_home_page_link_icon_color'); ?>;}
<?php
}
if($this->config->get('marketshop_home_page_link_icon_color_hover')!='') {?>
#menu .nav > li > a.home_link:hover span {background-color: <?php echo $this->config->get('marketshop_home_page_link_icon_color_hover'); ?>;}
<?php
}
if($this->config->get('marketshop_home_page_link_icon_color_hover')!='') {?>
#menu .nav > li > a.home_link:hover span:before {border-bottom-color: <?php echo $this->config->get('marketshop_home_page_link_icon_color_hover'); ?>;}
<?php
}
if($this->config->get('marketshop_home_page_link_icon_color_hover')!='') {?>
#menu .nav > li > a.home_link:hover span:after {border-color: <?php echo $this->config->get('marketshop_home_page_link_icon_color_hover'); ?>;}


<?php
}
if($this->config->get('marketshop_categories_section_background_color')!='') {?>
#menu .nav > li.categories > a {background-color: <?php echo $this->config->get('marketshop_categories_section_background_color'); ?>;}
<?php
}
if($this->config->get('marketshop_categories_section_background_color_hover')!='') {?>
#menu .nav > li.categories:hover > a {background-color: <?php echo $this->config->get('marketshop_categories_section_background_color_hover'); ?>;}
<?php
}
if($this->config->get('marketshop_categories_section_link_color')!='') {?>
#menu .nav > li.categories > a {color: <?php echo $this->config->get('marketshop_categories_section_link_color'); ?>;}
<?php
}
if($this->config->get('marketshop_categories_section_link_color_hover')!='') {?>
#menu .nav > li.categories:hover > a {color: <?php echo $this->config->get('marketshop_categories_section_link_color_hover'); ?>;}

<?php
}
if($this->config->get('marketshop_brands_section_background_color')!='') {?>
#menu .nav > li.menu_brands > a {background-color: <?php echo $this->config->get('marketshop_brands_section_background_color'); ?>;}
<?php
}
if($this->config->get('marketshop_brands_section_background_color_hover')!='') {?>
#menu .nav > li.menu_brands:hover > a {background-color: <?php echo $this->config->get('marketshop_brands_section_background_color_hover'); ?>;}
<?php
}
if($this->config->get('marketshop_brands_section_link_color')!='') {?>
#menu .nav > li.menu_brands > a {color: <?php echo $this->config->get('marketshop_brands_section_link_color'); ?>;}
<?php
}
if($this->config->get('marketshop_brands_section_link_color_hover')!='') {?>
#menu .nav > li.menu_brands:hover > a {color: <?php echo $this->config->get('marketshop_brands_section_link_color_hover'); ?>;}


<?php
}
if($this->config->get('marketshop_custom_link_section_background_color')!='') {?>
#menu .nav > li.custom-link > a {background-color: <?php echo $this->config->get('marketshop_custom_link_section_background_color'); ?>;}
<?php
}
if($this->config->get('marketshop_custom_link_section_background_color_hover')!='') {?>
#menu .nav > li.custom-link:hover > a {background-color: <?php echo $this->config->get('marketshop_custom_link_section_background_color_hover'); ?>;}
<?php
}
if($this->config->get('marketshop_custom_link_section_link_color')!='') {?>
#menu .nav > li.custom-link > a {color: <?php echo $this->config->get('marketshop_custom_link_section_link_color'); ?>;}
<?php
}
if($this->config->get('marketshop_custom_link_section_link_color_hover')!='') {?>
#menu .nav > li.custom-link:hover > a {color: <?php echo $this->config->get('marketshop_custom_link_section_link_color_hover'); ?>;}

<?php
}
if($this->config->get('marketshop_custom_block_section_background_color')!='') {?>
#menu .nav > li.wrap_custom_block > a {background-color: <?php echo $this->config->get('marketshop_custom_block_section_background_color'); ?>;}
<?php
}
if($this->config->get('marketshop_custom_block_section_background_color_hover')!='') {?>
#menu .nav > li.wrap_custom_block:hover > a {background-color: <?php echo $this->config->get('marketshop_custom_block_section_background_color_hover'); ?>;}
<?php
}
if($this->config->get('marketshop_custom_block_section_link_color')!='') {?>
#menu .nav > li.wrap_custom_block > a {color: <?php echo $this->config->get('marketshop_custom_block_section_link_color'); ?>;}
<?php
}
if($this->config->get('marketshop_custom_block_section_link_color_hover')!='') {?>
#menu .nav > li.wrap_custom_block:hover > a {color: <?php echo $this->config->get('marketshop_custom_block_section_link_color_hover'); ?>;}

<?php
}
if($this->config->get('marketshop_myaccount_section_background_color')!='') {?>
#menu .nav > li.my-account-link > a {background-color: <?php echo $this->config->get('marketshop_myaccount_section_background_color'); ?>;}
<?php
}
if($this->config->get('marketshop_myaccount_section_background_color_hover')!='') {?>
#menu .nav > li.my-account-link:hover > a {background-color: <?php echo $this->config->get('marketshop_myaccount_section_background_color_hover'); ?>;}
<?php
}
if($this->config->get('marketshop_myaccount_section_link_color')!='') {?>
#menu .nav > li.my-account-link > a {color: <?php echo $this->config->get('marketshop_myaccount_section_link_color'); ?>;}
<?php
}
if($this->config->get('marketshop_myaccount_section_link_color_hover')!='') {?>
#menu .nav > li.my-account-link:hover > a {color: <?php echo $this->config->get('marketshop_myaccount_section_link_color_hover'); ?>;}

<?php
}
if($this->config->get('marketshop_information_section_background_color')!='') {?>
#menu .nav > li.information-link > a {background-color: <?php echo $this->config->get('marketshop_information_section_background_color'); ?>;}
<?php
}
if($this->config->get('marketshop_information_section_background_color_hover')!='') {?>
#menu .nav > li.information-link:hover > a {background-color: <?php echo $this->config->get('marketshop_information_section_background_color_hover'); ?>;}
<?php
}
if($this->config->get('marketshop_information_section_link_color')!='') {?>
#menu .nav > li.information-link > a {color: <?php echo $this->config->get('marketshop_information_section_link_color'); ?>;}
<?php
}
if($this->config->get('marketshop_information_section_link_color_hover')!='') {?>
#menu .nav > li.information-link:hover > a {color: <?php echo $this->config->get('marketshop_information_section_link_color_hover'); ?>;}

<?php
}
if($this->config->get('marketshop_contact_section_background_color')!='') {?>
#menu .nav > li.contact-link > a {background-color: <?php echo $this->config->get('marketshop_contact_section_background_color'); ?>;}
<?php
}
if($this->config->get('marketshop_contact_section_background_color_hover')!='') {?>
#menu .nav > li.contact-link:hover > a {background-color: <?php echo $this->config->get('marketshop_contact_section_background_color_hover'); ?>;}
<?php
}
if($this->config->get('marketshop_contact_section_link_color')!='') {?>
#menu .nav > li.contact-link > a {color: <?php echo $this->config->get('marketshop_contact_section_link_color'); ?>;}
<?php
}
if($this->config->get('marketshop_contact_section_link_color_hover')!='') {?>
#menu .nav > li.contact-link:hover > a {color: <?php echo $this->config->get('marketshop_contact_section_link_color_hover'); ?>;}

<?php
}
if($this->config->get('marketshop_custom_link_right_background_color')!='') {?>
#menu .nav > li.custom-link-right > a {background-color: <?php echo $this->config->get('marketshop_custom_link_right_background_color'); ?>;}
<?php
}
if($this->config->get('marketshop_custom_link_right_background_color_hover')!='') {?>
#menu .nav > li.custom-link-right:hover > a {background-color: <?php echo $this->config->get('marketshop_custom_link_right_background_color_hover'); ?>;}
<?php
}
if($this->config->get('marketshop_custom_link_right_link_color')!='') {?>
#menu .nav > li.custom-link-right > a {color: <?php echo $this->config->get('marketshop_custom_link_right_link_color'); ?>;}
<?php
}
if($this->config->get('marketshop_custom_link_right_link_color_hover')!='') {?>
#menu .nav > li.custom-link-right:hover > a {color: <?php echo $this->config->get('marketshop_custom_link_right_link_color_hover'); ?>;}


<?php
}
if($this->config->get('marketshop_custom_block_bg_color')!='') {?>
.custom_side_block_icon{background-color: <?php echo $this->config->get('marketshop_custom_block_bg_color'); ?>;}
<?php
}
if($this->config->get('marketshop_custom_block_bg_color')!='') {?>
#custom_side_block{border-color: <?php echo $this->config->get('marketshop_custom_block_bg_color'); ?>;}



/*===== FOOTER =====*/
<?php
}
if($this->config->get('marketshop_footer_bg_color')!='') {?>
#footer .fpart-first {background-color: <?php echo $this->config->get('marketshop_footer_bg_color'); ?>;}
<?php
}
if($this->config->get('marketshop_footer_titles_color')!='') {?>
#footer h3 {color: <?php echo $this->config->get('marketshop_footer_titles_color'); ?>;}
<?php
}
if($this->config->get('marketshop_footer_text_color')!='') {?>
#footer .fpart-first {color: <?php echo $this->config->get('marketshop_footer_text_color'); ?>;}
<?php
}
if($this->config->get('marketshop_footer_link_color')!='') {?>
#footer .fpart-first a {color: <?php echo $this->config->get('marketshop_footer_link_color'); ?>;}
<?php
}
if($this->config->get('marketshop_footer_link_hover_color')!='') {?>
#footer .fpart-first a:hover {color: <?php echo $this->config->get('marketshop_footer_link_hover_color'); ?>;}
<?php
}
if($this->config->get('marketshop_footer_second_bg_color')!='') {?>
#footer .fpart-second {background-color: <?php echo $this->config->get('marketshop_footer_second_bg_color'); ?>;}
<?php
}
if($this->config->get('marketshop_footer_second_text_color')!='') {?>
#footer .fpart-second {color: <?php echo $this->config->get('marketshop_footer_second_text_color'); ?>;}
 <?php
}
if($this->config->get('marketshop_footer_second_link_color')!='') {?>
#footer .fpart-second a {color: <?php echo $this->config->get('marketshop_footer_second_link_color'); ?>;}
<?php
}
if($this->config->get('marketshop_footer_second_link_hover_color')!='') {?>
#footer .fpart-second a:hover {color: <?php echo $this->config->get('marketshop_footer_second_link_hover_color'); ?>;}
<?php
}
if(($this->config->get('marketshop_footer_second_separator_color')!='') && ($this->config->get('marketshop_footer_second_separator_style')!='')) {
?>#footer #powered {border-bottom:<?php echo $this->config->get('marketshop_footer_second_separator_size')?>px <?php echo $this->config->get('marketshop_footer_second_separator_style')?> <?php echo $this->config->get('marketshop_footer_second_separator_color')?>}

/*===== PRICE =====*/
<?php
}
if($this->config->get('marketshop_price_color')!='') {?>
.box-product .price, .product-info .price, .product-grid .price, .product-grid-lr .price, .slider_pprice, .product-list .price {color: <?php echo $this->config->get('marketshop_price_color'); ?>;}
<?php
}
if($this->config->get('marketshop_old_price_color')!='') {?>
.box-product .price-old, .product-info .price-old, .product-grid .price-old, .product-grid-lr .price-old, .product-list .price-old {color: <?php echo $this->config->get('marketshop_old_price_color'); ?>;}
<?php
}
if($this->config->get('marketshop_new_price_color')!='') {?>
.box-product .price-new, .product-grid .price-new, .product-grid-lr .price-new, .product-list .price-new {color: <?php echo $this->config->get('marketshop_new_price_color'); ?>;}
<?php
}
if($this->config->get('marketshop_tax_price_color')!='') {?>
.product-info .price-tax, .product-grid .price .price-tax, .product-list .price-tax {color: <?php echo $this->config->get('marketshop_tax_price_color'); ?>;}
<?php
}
if($this->config->get('marketshop_saving_percentage_bg_color')!='') {?>
.saving{background-color: <?php echo $this->config->get('marketshop_saving_percentage_bg_color'); ?>;}
<?php
}
if($this->config->get('marketshop_saving_percentage_text_color')!='') {?>
.saving {color: <?php echo $this->config->get('marketshop_saving_percentage_text_color'); ?>;}

/*===== BUTTON =====*/
<?php
}
if($this->config->get('marketshop_button_bg_color')!='') {?>
a.button, input.button {background-color: <?php echo $this->config->get('marketshop_button_bg_color'); ?>;}
<?php
}
if($this->config->get('marketshop_button_bg_hover_color')!='') {?>
a.button:hover, input.button:hover {background-color: <?php echo $this->config->get('marketshop_button_bg_hover_color'); ?>;}
<?php
}
if($this->config->get('marketshop_button_text_color')!='') {?>
a.button, input.button {color: <?php echo $this->config->get('marketshop_button_text_color'); ?>;}
<?php
}
if($this->config->get('marketshop_button_text_hover_color')!='') {?>
a.button:hover, input.button:hover {color: <?php echo $this->config->get('marketshop_button_text_hover_color'); ?>;}

/*===== Exclusive BUTTONS =====*/
<?php
}
if($this->config->get('marketshop_excl_button_bg_color')!='') {?>
.product-info .cart #button-cart {background-color: <?php echo $this->config->get('marketshop_excl_button_bg_color'); ?>;}
<?php
}
if($this->config->get('marketshop_excl_button_bg_hover_color')!='') {?>
.product-info .cart #button-cart:hover {background-color: <?php echo $this->config->get('marketshop_excl_button_bg_hover_color'); ?>;}
 <?php
}
if($this->config->get('marketshop_excl_button_text_color')!='') {?>
.product-info .cart #button-cart {color: <?php echo $this->config->get('marketshop_excl_button_text_color'); ?>;}
<?php
}
if($this->config->get('marketshop_excl_button_text_hover_color')!='') {?>
.product-info .cart #button-cart:hover {color: <?php echo $this->config->get('marketshop_excl_button_text_hover_color'); ?>;}

/*===== AddToCart BUTTONS =====*/
<?php
}
if($this->config->get('marketshop_cart_button_bg_color')!='') {?>
.box-product .cart input, .box-product .cart a, .product-grid .cart input, .product-list .cart input {background-color: <?php echo $this->config->get('marketshop_cart_button_bg_color'); ?>;}
<?php
}
if($this->config->get('marketshop_cart_button_bg_hover_color')!='') {?>
.box-product > .flexslider ul li .cart input:hover, .box-product > .flexslider ul li .cart a:hover, .product-grid .cart input:hover, .product-list .cart input:hover {background-color: <?php echo $this->config->get('marketshop_cart_button_bg_hover_color'); ?>;
}
<?php
}
if($this->config->get('marketshop_cart_button_text_color')!='') {?>
.box-product > .flexslider ul li .cart input, .box-product > .flexslider ul li .cart a, .product-grid .cart input, .product-list .cart input {color: <?php echo $this->config->get('marketshop_cart_button_text_color');?>;}
<?php
}
if($this->config->get('marketshop_cart_button_text_hover_color')!='') {?>
.box-product > .flexslider ul li .cart input:hover, .box-product > .flexslider ul li .cart a:hover, .product-grid .cart input:hover, .product-list .cart input:hover {color: <?php echo $this->config->get('marketshop_cart_button_text_hover_color');?>;}


<?php
}
if($this->config->get('marketshop_feature_box1_bg_color')!='') {?>
.custom-feature-box .feature-box.fbox_1 {background: <?php echo $this->config->get('marketshop_feature_box1_bg_color');?>;}
<?php
}
if($this->config->get('marketshop_feature_box1_title_color')!='') {?>
.custom-feature-box .feature-box.fbox_1 h3 {color: <?php echo $this->config->get('marketshop_feature_box1_title_color');?>;}
<?php
}
if($this->config->get('marketshop_feature_box1_subtitle_color')!='') {?>
.custom-feature-box .feature-box.fbox_1 p {color: <?php echo $this->config->get('marketshop_feature_box1_subtitle_color');?>;}



<?php
}
if($this->config->get('marketshop_feature_box2_bg_color')!='') {?>
.custom-feature-box .feature-box.fbox_2 {background: <?php echo $this->config->get('marketshop_feature_box2_bg_color');?>;}
<?php
}
if($this->config->get('marketshop_feature_box2_title_color')!='') {?>
.custom-feature-box .feature-box.fbox_2 h3 {color: <?php echo $this->config->get('marketshop_feature_box2_title_color');?>;}
<?php
}
if($this->config->get('marketshop_feature_box2_subtitle_color')!='') {?>
.custom-feature-box .feature-box.fbox_2 p {color: <?php echo $this->config->get('marketshop_feature_box2_subtitle_color');?>;}



<?php
}
if($this->config->get('marketshop_feature_box3_bg_color')!='') {?>
.custom-feature-box .feature-box.fbox_3 {background: <?php echo $this->config->get('marketshop_feature_box3_bg_color');?>;}
<?php
}
if($this->config->get('marketshop_feature_box3_title_color')!='') {?>
.custom-feature-box .feature-box.fbox_3 h3 {color: <?php echo $this->config->get('marketshop_feature_box3_title_color');?>;}
<?php
}
if($this->config->get('marketshop_feature_box3_subtitle_color')!='') {?>
.custom-feature-box .feature-box.fbox_3 p {color: <?php echo $this->config->get('marketshop_feature_box3_subtitle_color');?>;}



<?php
}
if($this->config->get('marketshop_feature_box4_bg_color')!='') {?>
.custom-feature-box .feature-box.fbox_4 {background: <?php echo $this->config->get('marketshop_feature_box4_bg_color');?>;}
<?php
}
if($this->config->get('marketshop_feature_box4_title_color')!='') {?>
.custom-feature-box .feature-box.fbox_4 h3 {color: <?php echo $this->config->get('marketshop_feature_box4_title_color');?>;}
<?php
}
if($this->config->get('marketshop_feature_box4_subtitle_color')!='') {?>
.custom-feature-box .feature-box.fbox_4 p {color: <?php echo $this->config->get('marketshop_feature_box4_subtitle_color');?>;}
<?php
}
if($this->config->get('marketshop_feature_box_title_font_size')!='') {?>
.custom-feature-box .feature-box h3 {font-size:<?php echo $this->config->get('marketshop_feature_box_title_font_size');?>;}
<?php
}
if($this->config->get('marketshop_feature_box_title_font_weight')!='') {?>
.custom-feature-box .feature-box h3 {font-weight:<?php echo $this->config->get('marketshop_feature_box_title_font_weight');?>;}
<?php
}
if($this->config->get('marketshop_feature_box_title_font_transform')!='') {?>
.custom-feature-box .feature-box h3 {text-transform:<?php echo $this->config->get('marketshop_feature_box_title_font_transform');?>;}

<?php
}
if($this->config->get('marketshop_feature_box_subtitle_font_size')!='') {?>
.custom-feature-box .feature-box p {font-size:<?php echo $this->config->get('marketshop_feature_box_subtitle_font_size');?>;}
<?php
}
if($this->config->get('marketshop_feature_box_subtitle_font_weight')!='') {?>
.custom-feature-box .feature-box p {font-weight:<?php echo $this->config->get('marketshop_feature_box_subtitle_font_weight');?>;}
<?php
}
if($this->config->get('marketshop_feature_box_subtitle_font_transform')!='') {?>
.custom-feature-box .feature-box p {text-transform:<?php echo $this->config->get('marketshop_feature_box_subtitle_font_transform');?>;}


/*===== FONTS =====*/
<?php
}
if ($this->config->get('marketshop_body_font') != '' ) {
 $fontpre = $this->config->get('marketshop_body_font');
 $font = str_replace("+", " ", $fontpre); ?>
 body{font-family:'<?php echo $font ?>';}
<?php
}
 if($this->config->get('marketshop_title_font')!='') {
 $fontpre = $this->config->get('marketshop_title_font');
 $font = str_replace("+", " ", $fontpre); ?>
 #container h1{font-family:<?php echo $font ?>;}
<?php
}
if($this->config->get('marketshop_title_font_size')!='') {?>
#container h1 {font-size:<?php echo $this->config->get('marketshop_title_font_size');?>;}
<?php
}
if($this->config->get('marketshop_title_font_weight')!='') {?>
#container h1{font-weight:<?php echo $this->config->get('marketshop_title_font_weight');?>;}
<?php
}
if($this->config->get('marketshop_title_font_uppercase')!='') {?>
#container h1 {text-transform:<?php echo $this->config->get('marketshop_title_font_uppercase');?>;}
<?php
}
 if($this->config->get('marketshop_main_menu_font')!='') {
 $fontpre = $this->config->get('marketshop_main_menu_font');
 $font = str_replace("+", " ", $fontpre); ?>
 #menu {font-family:<?php echo $font ?>;}
<?php
}
if($this->config->get('marketshop_main_menu_font_size')!='') {?>
#menu .nav > li > a {font-size:<?php echo $this->config->get('marketshop_main_menu_font_size');?>;}
<?php
}
if($this->config->get('marketshop_main_menu_font_weight')!='') {?>
#menu .nav > li > a {font-weight:<?php echo $this->config->get('marketshop_main_menu_font_weight');?>;}
<?php
}
if($this->config->get('marketshop_main_menu_font_uppercase')!='') {?>
#menu .nav > li > a {text-transform:<?php echo $this->config->get('marketshop_main_menu_font_uppercase');?>;}
<?php
}
 if($this->config->get('marketshop_top_bar_font')!='') {
 $fontpre = $this->config->get('marketshop_top_bar_font');
 $font = str_replace("+", " ", $fontpre); ?>
 #header .htop {font-family:<?php echo $font ?>;}
<?php
}
if($this->config->get('marketshop_top_bar_font_size')!='') {?>
#header #welcome a, #header .links a, #language span a, #currency span a, #header .links .wrap_custom_block > a {font-size:<?php echo $this->config->get('marketshop_top_bar_font_size');?>;}
<?php
}
if($this->config->get('marketshop_top_bar_font_weight')!='') {?>
#header #welcome a, #header .links a, #language span a, #currency span a, #header .links .wrap_custom_block > a {font-weight:<?php echo $this->config->get('marketshop_top_bar_font_weight');?>;}
<?php
}
if($this->config->get('marketshop_top_bar_font_uppercase')!='') {?>
#header #welcome a, #header .links a, #language span a, #currency span a, #header .links .wrap_custom_block > a {text-transform:<?php echo $this->config->get('marketshop_top_bar_font_uppercase');?>;}
<?php
}
 if($this->config->get('marketshop_secondary_titles_font')!='') {
 $fontpre = $this->config->get('marketshop_secondary_titles_font');
 $font = str_replace("+", " ", $fontpre);
 ?>#container h2, .box .box-heading, .product-tab .htabs a, .product-tab .tabs li a, .welcome{font-family:<?php echo $font ?>;}
<?php
}
if($this->config->get('marketshop_secondary_titles_font_size')!='') {?>
#container h2, .box .box-heading, .product-tab .htabs a, .product-tab .tabs li a, .welcome {font-size:<?php echo $this->config->get('marketshop_secondary_titles_font_size');?>;}
<?php
}
if($this->config->get('marketshop_secondary_titles_font_weight')!='') {?>
#container h2, .box .box-heading, .product-tab .htabs a, .product-tab .tabs li a, .welcome{font-weight:<?php echo $this->config->get('marketshop_secondary_titles_font_weight');?>;}
<?php
}
if($this->config->get('marketshop_secondary_titles_font_uppercase')!='') {?>
#container h2, .box .box-heading, .product-tab .htabs a, .product-tab .tabs li a, .welcome {text-transform:<?php echo $this->config->get('marketshop_secondary_titles_font_uppercase');?>;}
<?php
}
 if($this->config->get('marketshop_footer_titles_font')!='') {
 $fontpre = $this->config->get('marketshop_footer_titles_font');
 $font = str_replace("+", " ", $fontpre); ?>
 #footer h3{font-family:<?php echo $font ?>;}
 <?php
}
if($this->config->get('marketshop_footer_titles_font_size')!='') {?>
#footer h3{font-size:<?php echo $this->config->get('marketshop_footer_titles_font_size');?>;}
<?php
}
if($this->config->get('marketshop_footer_titles_font_weight')!='') {?>
#footer h3{font-weight:<?php echo $this->config->get('marketshop_footer_titles_font_weight');?>;}
<?php
}
if($this->config->get('marketshop_footer_titles_font_uppercase')!='') {?>
#footer h3{text-transform:<?php echo $this->config->get('marketshop_footer_titles_font_uppercase');?>;}
<?php
}
 if ($this->config->get('marketshop_custom_css') != '') {
 echo htmlspecialchars_decode($this->config->get('marketshop_custom_css'));
}
?>
@media screen and (max-width:800px) {
<?php }
if($this->config->get('marketshop_top_bar_bg_color')!='') {?>
.left-top{background-color:<?php echo $this->config->get('marketshop_top_bar_bg_color'); ?>;}
<?php }
if(($this->config->get('marketshop_main_menu_align')!='') && ($direction == 'ltr') && ($this->config->get('marketshop_main_menu_align') ==2)) { ?>
#menu .navbar-nav{text-align: left;}
#menu .nav > li{display:block;}
<?php }
if(($this->config->get('marketshop_main_menu_align')!='') && ($direction == 'rtl') && ($this->config->get('marketshop_main_menu_align') ==2)) { ?>
#menu .navbar-nav{text-align: right;}
#menu .nav > li{display:block;}
<?php }
if($this->config->get('marketshop_menu_link_color')!='') {?>
#menu > span {color: <?php echo $this->config->get('marketshop_menu_link_color'); ?>;}
<?php }
if($this->config->get('marketshop_menu_link_color')!='') {?>
#menu > span:before{border-bottom-color: <?php echo $this->config->get('marketshop_menu_link_color'); ?>;}
<?php }
if($this->config->get('marketshop_menu_link_color')!='') {?>
#menu > span:after{border-top-color: <?php echo $this->config->get('marketshop_menu_link_color'); ?>;}
<?php }
if(($this->config->get('marketshop_menu_link_border_bottom_size')!='') && ($this->config->get('marketshop_menu_link_border_bottom_style')!='') && ($this->config->get('marketshop_menu_link_border_bottom_color')!='') && ($this->config->get('marketshop_menu_link_border_bottom_status') ==1)) {?>
#menu .nav{border-top:<?php echo $this->config->get('marketshop_menu_link_border_bottom_size')?>px <?php echo $this->config->get('marketshop_menu_link_border_bottom_style')?> <?php echo $this->config->get('marketshop_menu_link_border_bottom_color')?>}
}
<?php } ?>
</style>
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
<meta property="og:site_name" content="<?php echo $this->config->get('config_name'); ?>" />
</head>
<body>
<?php if($this->config->get('marketshop_layout_style')== 1) { ?><section class="wrapper-wide"><?php } ?>
<?php if($this->config->get('marketshop_layout_style')== 2) { ?><div class="wrapper-box"><?php } ?>
<?php if($this->config->get('marketshop_header_style')== 1) { ?><div id="header" ><?php } ?>
<?php if($this->config->get('marketshop_header_style')== 2) { ?><div id="header" class="style2"><?php } ?>
<?php if($this->config->get('marketshop_header_style')== 3) { ?><div id="header" class="style3"><?php } ?>

<nav class="htop">
<div class="container">
<div class="row">
<span class="drop-icon"></span>
<div class="pull-left flip left-top">

<?php $lang = (int)$this->config->get('config_language_id');?>
<div class="links">
<ul>
<?php if($this->config->get('marketshop_top_bar_contact_status')== 1) {
  	$marketshop_top_bar_contact = $this->config->get('marketshop_top_bar_contact');
      
 	if((isset($marketshop_top_bar_contact[$lang]) && $marketshop_top_bar_contact[$lang] != '')) { ?>
    <li class="mobile <?php echo $this->config->get('marketshop_top_contact_icon'); ?>"><?php echo $marketshop_top_bar_contact[$lang]; ?></li>
    <?php } ?><?php } ?>
    
    <?php if($this->config->get('marketshop_top_bar_email_status')== 1) {
  	$marketshop_top_bar_email = $this->config->get('marketshop_top_bar_email');
      
 	if((isset($marketshop_top_bar_email[$lang]) && $marketshop_top_bar_email[$lang] != '')) { ?>
    <li class="email <?php echo $this->config->get('marketshop_top_contact_icon'); ?>"><a href="mailto:<?php echo $marketshop_top_bar_email[$lang]; ?>"><?php echo $marketshop_top_bar_email[$lang]; ?></a></li>
    <?php } ?><?php } ?>




<?php if($this->config->get('marketshop_custom_link1_top')== 1) {
  	$marketshop_custom_link1_top_title = $this->config->get('marketshop_custom_link1_top_title');  

 	if((isset($marketshop_custom_link1_top_title[$lang]) && $marketshop_custom_link1_top_title[$lang] != '')) { ?>
     <li><a href="<?php echo $this->config->get('marketshop_custom_link1_top_url'); ?>" target="<?php echo $this->config->get('marketshop_target_link1_top'); ?>">
     <?php echo $marketshop_custom_link1_top_title[$lang]; ?></a></li>
    <?php } ?><?php } ?>
    
    <?php if($this->config->get('marketshop_custom_link2_top')== 1) {
  	$marketshop_custom_link2_top_title = $this->config->get('marketshop_custom_link2_top_title');  

 	if((isset($marketshop_custom_link2_top_title[$lang]) && $marketshop_custom_link2_top_title[$lang] != '')) { ?>
     <li><a href="<?php echo $this->config->get('marketshop_custom_link2_top_url'); ?>" target="<?php echo $this->config->get('marketshop_target_link2_top'); ?>">
     <?php echo $marketshop_custom_link2_top_title[$lang]; ?></a></li>
    <?php } ?><?php } ?>
    <?php if($this->config->get('marketshop_custom_link3_top')== 1) {
  	$marketshop_custom_link3_top_title = $this->config->get('marketshop_custom_link3_top_title');  

 	if((isset($marketshop_custom_link3_top_title[$lang]) && $marketshop_custom_link3_top_title[$lang] != '')) { ?>
     <li><a href="<?php echo $this->config->get('marketshop_custom_link3_top_url'); ?>" target="<?php echo $this->config->get('marketshop_target_link3_top'); ?>">
     <?php echo $marketshop_custom_link3_top_title[$lang]; ?></a></li>
    <?php } ?><?php } ?>
    <?php if($this->config->get('marketshop_custom_block_top_status')== 1) {
    $marketshop_custom_block_top_title = $this->config->get('marketshop_custom_block_top_title');
    $marketshop_custom_block_top_content = $this->config->get('marketshop_custom_block_top_content');    
    
    if(isset($marketshop_custom_block_top_title[$lang]) && $marketshop_custom_block_top_title[$lang]!= '') { ?>
    <li class="wrap_custom_block hidden-sm hidden-xs"><a><?php echo $marketshop_custom_block_top_title[$lang]; ?><b></b></a>
      <div class="custom_block">
        <ul>
          <li><?php echo html_entity_decode($marketshop_custom_block_top_content[$lang], ENT_QUOTES, 'UTF-8'); ?></li>
        </ul>
      </div>
    </li>
    <?php } ?><?php } ?>
    <?php if($this->config->get('marketshop_custom_block2_top_status')== 1) {
    $marketshop_custom_block2_top_title = $this->config->get('marketshop_custom_block2_top_title');
    $marketshop_custom_block2_top_content = $this->config->get('marketshop_custom_block2_top_content');    
    
    if(isset($marketshop_custom_block2_top_title[$lang]) && $marketshop_custom_block2_top_title[$lang]!= '') { ?>
    <li class="wrap_custom_block hidden-sm hidden-xs"><a><?php echo $marketshop_custom_block2_top_title[$lang]; ?><b></b></a>
      <div class="custom_block">
        <ul>
          <li><?php echo html_entity_decode($marketshop_custom_block2_top_content[$lang], ENT_QUOTES, 'UTF-8'); ?></li>
        </ul>
      </div>
    </li>
    <?php } ?><?php } ?>
    <?php if($this->config->get('marketshop_wishlist_top_link')== 1) { ?><li><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a></li><?php } ?>
    <?php if($this->config->get('marketshop_account_top_link')== 1) { ?><li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li><?php } ?>
    <?php if($this->config->get('marketshop_checkout_top_link')== 1) { ?><li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li><?php } ?>
    </ul>
    </div>
    <?php echo $language; ?>
<?php echo $currency; ?>
</div>
    <div id="welcome" class="pull-right flip">
    <?php if (!$logged) { ?>
    <?php echo $text_welcome; ?>
    <?php } else { ?>
    <?php echo $text_logged; ?>
    <?php } ?>
  </div>
</div>
</div>
</nav>

<div class="header-row">
<div class="container">
  
  <?php if($this->config->get('marketshop_header_style')== 1) { ?>
  <div class="table-container">
   <div class="col-table-cell col-lg-6 col-md-6 col-sm-12 col-xs-12 inner">
  <?php if ($logo) { ?>
  <div id="logo"><a href="<?php echo $home; ?>"><img class="img-responsive" src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
  <?php } ?>
</div>

<div class="col-table-cell col-lg-3 col-md-3 col-sm-6 col-xs-12">
  <?php echo $cart; ?>
  </div><div class="col-table-cell col-lg-3 col-md-3 col-sm-6 col-xs-12 inner">
<div id="search">
    <div class="button-search"></div>
    <input type="text" name="search" id="filter_name" class="form-control" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
  </div>
  </div></div>
  <?php } ?>
  
<?php if($this->config->get('marketshop_header_style')== 2) { ?>
<div class="table-container">
<div class="col-table-cell col-lg-3 col-md-3 col-sm-12 col-xs-12 inner">
  <?php echo $cart; ?>
  </div>
  <div class="col-table-cell col-lg-6 col-md-6 col-sm-12 col-xs-12">
  <?php if ($logo) { ?>
  <div id="logo"><a href="<?php echo $home; ?>"><img class="img-responsive" src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
  <?php } ?>
</div>
  <div class="col-table-cell col-lg-3 col-md-3 col-sm-12 col-xs-12 inner">
<div id="search">
    <div class="button-search"></div>
    <input type="text" name="search" id="filter_name" class="form-control" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
  </div>
  </div>

  </div>
  <?php } ?>
  
<?php if($this->config->get('marketshop_header_style')== 3) { ?>
<div class="table-container">
<div class="col-table-cell col-lg-4 col-md-4 col-sm-12 col-xs-12 inner">
  <?php if ($logo) { ?>
  <div id="logo"><a href="<?php echo $home; ?>"><img class="img-responsive" src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
  <?php } ?>
</div>
  <div class="col-table-cell col-lg-5 col-md-5 col-md-push-0 col-sm-6 col-sm-push-6 col-xs-12">
<div id="search">
    <div class="button-search"></div>
    <input type="text" name="search" id="filter_name" class="form-control" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
  </div>
  </div>
<div class="col-table-cell col-lg-3 col-md-3 col-md-pull-0 col-sm-6 col-sm-pull-6 col-xs-12 inner">
  <?php echo $cart; ?>
  </div></div>
  <?php } ?>
  
  </div>
  </div>

  <?php if($this->config->get('marketshop_main_menu_style')== 2) { ?><div class="container"><?php } ?>
  
  <nav id="menu" class="navbar">
  
 <div class="navbar-header">
 <span class="visible-xs visible-sm"><?php if($this->config->get('marketshop_status')== 1) {
    $marketshop_mobile_menu_title = $this->config->get('marketshop_mobile_menu_title'); { ?>
    <?php echo $marketshop_mobile_menu_title[$lang]; ?>
    <?php } ?><?php } ?> <b></b></span>
      <!--<button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">Go</button>-->
    </div>

<?php if($this->config->get('marketshop_main_menu_style')== 1) { ?><div class="container"><?php } ?>
  <div class="collapse navbar-collapse navbar-ex1-collapse">  
  <ul class="nav navbar-nav">
    <?php if($this->config->get('marketshop_home_page_link')== 1) { ?>
      <li><a class="home_link" title="<?php echo $text_home; ?>" href="<?php echo $home; ?>">
      <?php if($this->config->get('marketshop_home_page_link_icon')== 1) { ?><?php echo $text_home; ?><?php } else { ?><span><?php echo $text_home; ?></span><?php } ?>
      </a></li>
      
      <?php } ?>
<?php if ($categories) {?>
<?php if($this->config->get('marketshop_top_menu')== 1) {?>
    <?php foreach ($categories as $category) { ?>
    <li class="dropdown"><a class="dropdown-toggle" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
      <?php if ($category['children']) { ?>
      <div class="dropdown-menu">
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>					
				<li>
				<?php
				if(count($category['children'][$i]['children_level2'])>0){
				?>
					<a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?>
				<?php
						echo "<span>&rsaquo;</span></a>";
				}
				else
				{
				?>
				<a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a>
				<?php
				}
				?>
				<?php if ($category['children'][$i]['children_level2']) { ?>
					  <div class="submenu">
					   <ul>
						<?php for ($wi = 0; $wi < count($category['children'][$i]['children_level2']); $wi++) { ?>
						  <li>
								<a href="<?php echo $category['children'][$i]['children_level2'][$wi]['href']; ?>"  ><?php echo $category['children'][$i]['children_level2'][$wi]['name']; ?>
								</a>
						  </li>
				  <?php } ?>
				</ul>
			  </div>
			  <?php } ?>	  
			</li>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
      </div>
      <?php } ?>
    </li>
    <?php } ?>
      <?php } ?>
<?php if($this->config->get('marketshop_top_menu')== 2) {?>
<li class="categories dropdown">
      <?php if($this->config->get('marketshop_status')== 1) {
  	$marketshop_menu_categories_title = $this->config->get('marketshop_menu_categories_title');  

 	if((isset($marketshop_menu_categories_title[$lang]) && $marketshop_menu_categories_title[$lang] != '')) { ?>
    
     <a><?php echo $marketshop_menu_categories_title[$lang]; ?></a> 

    <?php } ?><?php } ?>
        <div class="dropdown-menu">
          <?php foreach ($categories as $category) { ?>
          <div class="column"> 
          
          <?php
				if(count($category['children'])>0){
				?>
					<a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?>
				<?php
						echo "<span>&rsaquo;</span></a>";
				}
				else
				{
				?>
				<a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
				<?php
				}
				?>          
            <?php if ($category['children']) { ?>
            <div>
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>					
				<li>
				<?php
				if(count($category['children'][$i]['children_level2'])>0){
				?>
					<a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?>
				<?php
						echo "<span>&rsaquo;</span></a>";
				}
				else
				{
				?>
				<a href="<?php echo $category['children'][$i]['href']; ?>" ><?php echo $category['children'][$i]['name']; ?></a>
				<?php
				}
				?>
				<?php if ($category['children'][$i]['children_level2']) { ?>
					  <div class="submenu">
					   <ul>
						<?php for ($wi = 0; $wi < count($category['children'][$i]['children_level2']); $wi++) { ?>
						  <li>
								<a href="<?php echo $category['children'][$i]['children_level2'][$wi]['href']; ?>"  ><?php echo $category['children'][$i]['children_level2'][$wi]['name']; ?>
								</a>
						  </li>
				  <?php } ?>
				</ul>
			  </div>
			  <?php } ?>		  
			</li>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
      </div>
            <?php } ?>
          </div>
          <?php } ?>
        </div>
      </li>
<?php } ?>
<?php if($this->config->get('marketshop_top_menu')== 3) {?>
<li class="categories_hor dropdown">
      <?php if($this->config->get('marketshop_status')== 1) {
  	$marketshop_menu_categories_title = $this->config->get('marketshop_menu_categories_title');  
 	if((isset($marketshop_menu_categories_title[$lang]) && $marketshop_menu_categories_title[$lang] != '')) { ?>
     <a><?php echo $marketshop_menu_categories_title[$lang]; ?></a> 
    <?php } ?><?php } ?>
<div class="dropdown-menu">

    <?php foreach ($categories as $category) { ?>
        <div class="column col-lg-2 col-md-3"> 
          <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
            <?php if ($category['children']) { ?>
            <div>
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>					
				<li>
				<?php
				if(count($category['children'][$i]['children_level2'])>0){
				?>
					<a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?>
				<?php
						echo "<span>&rsaquo;</span></a>";
				}
				else
				{
				?>
				<a href="<?php echo $category['children'][$i]['href']; ?>" ><?php echo $category['children'][$i]['name']; ?></a>
				<?php
				}
				?>
				<?php if ($category['children'][$i]['children_level2']) { ?>
					  <div class="submenu">
					   <ul>
						<?php for ($wi = 0; $wi < count($category['children'][$i]['children_level2']); $wi++) { ?>
						  <li>
								<a href="<?php echo $category['children'][$i]['children_level2'][$wi]['href']; ?>"  ><?php echo $category['children'][$i]['children_level2'][$wi]['name']; ?>
								</a>
						  </li>
				  <?php } ?>
				</ul>
			  </div>
			  <?php } ?>		  
			</li>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
      </div>
            <?php } ?>
          </div>
        <?php } ?>
        
        </div>
      </li>
<?php } ?>

<?php if($this->config->get('marketshop_top_menu')== 4) {?>
<?php foreach ($categories as $category) { ?>
<li class="categories_hor dropdown">
<a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
      <?php if ($category['children']) { ?>
      <div class="dropdown-menu">
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>					
				<div class="column col-lg-2 col-md-3"> 
				<a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a>
            <?php if ($category['children'][$i]['children_level2']) { ?>
					  <div>
					   <ul>
						<?php for ($wi = 0; $wi < count($category['children'][$i]['children_level2']); $wi++) { ?>
						  <li>
								<a href="<?php echo $category['children'][$i]['children_level2'][$wi]['href']; ?>"  ><?php echo $category['children'][$i]['children_level2'][$wi]['name']; ?>
								</a>
						  </li>
				  <?php } ?>
				</ul>
			  </div>
			  <?php } ?>
              </div>
              	
          <?php } ?>
          <?php } ?>
        
        <?php } ?>
      </div>
      <?php } ?>
    </li>
    <?php } ?>
<?php } ?>

<?php } ?>
<?php if($this->config->get('marketshop_menu_brands')== 1) { ?>
<li class="menu_brands <?php if($this->config->get('marketshop_brands_display_style')== 1) { ?>name<?php } ?> dropdown">
<?php if($this->config->get('marketshop_status')== 1) {
  	$marketshop_menu_brands_title = $this->config->get('marketshop_menu_brands_title');  
 	if((isset($marketshop_menu_brands_title[$lang]) && $marketshop_menu_brands_title[$lang] != '')) { ?>
     <a href="<?php echo $manufacturer; ?>"><?php echo $marketshop_menu_brands_title[$lang]; ?></a> 
    <?php } ?><?php } ?>      
      <?php if($this->config->get('marketshop_brands_display_style')== 1) { ?>
      <div class="dropdown-menu">
      <?php if ($manufacturers) { ?>    
          <ul>
          <?php $counter = 0; foreach ($manufacturers as $manufacturer) { ?>
          <li><a href="<?php echo $manufacturer['href']; ?>"><?php echo $manufacturer['name']; ?></a></li>         
          <?php $counter++; } ?>
          </ul>
          <?php } ?>
          </div>
          <?php } ?>
          
          <?php if($this->config->get('marketshop_brands_display_style')== 2) { ?> 
          <div class="dropdown-menu">
          <?php if ($manufacturers) { ?>    
          <?php $counter = 0; foreach ($manufacturers as $manufacturer) { ?>
          <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6">
          <a href="<?php echo $manufacturer['href']; ?>"><img src="<?php echo $manufacturer['image']; ?>" title="<?php echo $manufacturer['name']; ?>" alt="<?php echo $manufacturer['name']; ?>" /></a>
            </div>        
          <?php $counter++; } ?>
          <?php } ?>
          </div>
          <?php } ?>
          <?php if($this->config->get('marketshop_brands_display_style')== 3) { ?>
          <div class="dropdown-menu">
          <?php if ($manufacturers) { ?>    
          <?php $counter = 0; foreach ($manufacturers as $manufacturer) { ?>
          <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6">
          <a href="<?php echo $manufacturer['href']; ?>"><img src="<?php echo $manufacturer['image']; ?>" title="<?php echo $manufacturer['name']; ?>" alt="<?php echo $manufacturer['name']; ?>" /></a>
          <a href="<?php echo $manufacturer['href']; ?>"><?php echo $manufacturer['name']; ?></a>
            </div>         
          <?php $counter++; } ?>
          <?php } ?>    
      </div>
    </li>
<?php } ?>
<?php } ?>
<?php if($this->config->get('marketshop_custom_link1')== 1) {
  	$marketshop_custom_link1_title = $this->config->get('marketshop_custom_link1_title');  

 	if((isset($marketshop_custom_link1_title[$lang]) && $marketshop_custom_link1_title[$lang] != '')) { ?>
     <li class="custom-link"><a href="<?php echo $this->config->get('marketshop_custom_link1_url'); ?>" target="<?php echo $this->config->get('marketshop_target_link1'); ?>">
     <?php echo $marketshop_custom_link1_title[$lang]; ?></a>
    </li>
    <?php } ?><?php } ?>
    
<?php if($this->config->get('marketshop_custom_link2')== 1) {
  	$marketshop_custom_link2_title = $this->config->get('marketshop_custom_link2_title');  

 	if((isset($marketshop_custom_link2_title[$lang]) && $marketshop_custom_link2_title[$lang] != '')) { ?>
     <li class="custom-link"><a href="<?php echo $this->config->get('marketshop_custom_link2_url'); ?>" target="<?php echo $this->config->get('marketshop_target_link2'); ?>">
     <?php echo $marketshop_custom_link2_title[$lang]; ?></a>
    </li>
    <?php } ?><?php } ?>
    
    <?php if($this->config->get('marketshop_custom_link3')== 1) {
  	$marketshop_custom_link3_title = $this->config->get('marketshop_custom_link3_title');  

 	if((isset($marketshop_custom_link3_title[$lang]) && $marketshop_custom_link3_title[$lang] != '')) { ?>
     <li class="custom-link"><a href="<?php echo $this->config->get('marketshop_custom_link3_url'); ?>" target="<?php echo $this->config->get('marketshop_target_link3'); ?>">
     <?php echo $marketshop_custom_link3_title[$lang]; ?></a>
    </li>
    <?php } ?><?php } ?>
    <?php if($this->config->get('marketshop_custom_link4')== 1) {
  	$marketshop_custom_link4_title = $this->config->get('marketshop_custom_link4_title');  

 	if((isset($marketshop_custom_link4_title[$lang]) && $marketshop_custom_link4_title[$lang] != '')) { ?>
     <li class="custom-link"><a href="<?php echo $this->config->get('marketshop_custom_link4_url'); ?>" target="<?php echo $this->config->get('marketshop_target_link4'); ?>">
     <?php echo $marketshop_custom_link4_title[$lang]; ?></a>
    </li>
    <?php } ?><?php } ?>
    <?php if($this->config->get('marketshop_custom_link5')== 1) {
  	$marketshop_custom_link5_title = $this->config->get('marketshop_custom_link5_title');  
 	if((isset($marketshop_custom_link5_title[$lang]) && $marketshop_custom_link5_title[$lang] != '')) { ?>
     <li class="custom-link"><a href="<?php echo $this->config->get('marketshop_custom_link5_url'); ?>" target="<?php echo $this->config->get('marketshop_target_link5'); ?>">
     <?php echo $marketshop_custom_link5_title[$lang]; ?></a>
    </li>
    <?php } ?><?php } ?>
    <?php if($this->config->get('marketshop_custom_block_status')== 1) {
    $marketshop_custom_block_title = $this->config->get('marketshop_custom_block_title');
    $marketshop_custom_block_content = $this->config->get('marketshop_custom_block_content');    
    
    if(isset($marketshop_custom_block_title[$lang]) && $marketshop_custom_block_title[$lang]!= '') { ?>
    <li class="dropdown wrap_custom_block hidden-sm hidden-xs"><a><?php echo $marketshop_custom_block_title[$lang]; ?></a>
      <div class="dropdown-menu custom_block">
        <ul>
          <li><?php echo html_entity_decode($marketshop_custom_block_content[$lang], ENT_QUOTES, 'UTF-8'); ?></li>
        </ul>
      </div>
    </li>
    <?php } ?><?php } ?>
    <?php if($this->config->get('marketshop_custom_block2_status')== 1) {
    $marketshop_custom_block2_title = $this->config->get('marketshop_custom_block2_title');
    $marketshop_custom_block2_content = $this->config->get('marketshop_custom_block2_content');    
    
    if(isset($marketshop_custom_block2_title[$lang]) && $marketshop_custom_block2_title[$lang]!= '') { ?>
    <li class="dropdown wrap_custom_block hidden-sm hidden-xs"><a><?php echo $marketshop_custom_block2_title[$lang]; ?></a>
      <div class="dropdown-menu custom_block">
        <ul>
          <li><?php echo html_entity_decode($marketshop_custom_block2_content[$lang], ENT_QUOTES, 'UTF-8'); ?></li>
        </ul>
      </div>
    </li>
    <?php } ?><?php } ?>
    <?php if($this->config->get('marketshop_custom_block3_status')== 1) {
    $marketshop_custom_block3_title = $this->config->get('marketshop_custom_block3_title');
    $marketshop_custom_block3_content = $this->config->get('marketshop_custom_block3_content');    
    
    if(isset($marketshop_custom_block3_title[$lang]) && $marketshop_custom_block3_title[$lang]!= '') { ?>
    <li class="dropdown wrap_custom_block hidden-sm hidden-xs"><a><?php echo $marketshop_custom_block3_title[$lang]; ?></a>
      <div class="dropdown-menu custom_block">
        <ul>
          <li><?php echo html_entity_decode($marketshop_custom_block3_content[$lang], ENT_QUOTES, 'UTF-8'); ?></li>
        </ul>
      </div>
    </li>
    <?php } ?><?php } ?>
      <?php if($this->config->get('marketshop_my_account')== 1) { ?>
      <li class="dropdown my-account-link"><a><?php echo $text_account; ?></a>
        <div class="dropdown-menu">
          <ul>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a></li>
            <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
          </ul>
        </div>
      </li>
      <?php } ?>
      <?php if($this->config->get('marketshop_information_page')== 1) { 
   if ($informations) { ?>
      <li class="dropdown information-link"><a><?php echo $text_information; ?></a>
        <div class="dropdown-menu">
          <ul>
            <?php foreach ($informations as $information) { ?>
            <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
      </li>
      <?php } ?>
      <?php } ?>
      <?php if($this->config->get('marketshop_contact_us')== 1) { ?>
      <li class="contact-link"><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
      <?php } ?>

      <?php if($this->config->get('marketshop_custom_link_right')== 1) {
  	$marketshop_custom_link_right_title = $this->config->get('marketshop_custom_link_right_title');  
 	if((isset($marketshop_custom_link_right_title[$lang]) && $marketshop_custom_link_right_title[$lang] != '')) { ?>
     <li class="custom-link-right"><a href="<?php echo $this->config->get('marketshop_custom_link_right_url'); ?>" target="<?php echo $this->config->get('marketshop_custom_link_right_target'); ?>">
     <?php echo $marketshop_custom_link_right_title[$lang]; ?></a>
    </li>
    <?php } ?><?php } ?>
    
    </ul>
  </div>
  <?php if($this->config->get('marketshop_main_menu_style')== 1) { ?></div><?php } ?>
    
  </nav>
  <?php if($this->config->get('marketshop_main_menu_style')== 2) { ?></div><?php } ?>
 </div>

<?php echo $content_top_full; ?>
<div id="container">

<?php if($this->config->get('marketshop_feature_box_per_row')== 'pr1') { ?>
    <?php $class_fbox = 'col-xs-12'; ?>
    <?php } elseif($this->config->get('marketshop_feature_box_per_row')== 'pr2') { ?>
    <?php $class_fbox = 'col-sm-6 col-xs-12'; ?>
    <?php } elseif($this->config->get('marketshop_feature_box_per_row')== 'pr3') { ?>
    <?php $class_fbox = 'col-sm-4 col-xs-12'; ?>
    <?php } elseif($this->config->get('marketshop_feature_box_per_row')== 'pr4') { ?>
    <?php $class_fbox = 'col-md-3 col-sm-6 col-xs-12'; ?>
    <?php } ?>

<?php if($this->config->get('marketshop_feature_box_homepage_only')== 1) { ?>
<?php if (!isset($this->request->get['route']) || $this->request->get['route'] == 'common/home') {?>    
  
<?php if($this->config->get('marketshop_feature_box_show_header_footer')== 1) {
$marketshop_feature_box_per_row = $this->config->get('marketshop_feature_box_per_row');
$marketshop_feature_box1_title = $this->config->get('marketshop_feature_box1_title');
$marketshop_feature_box1_subtitle = $this->config->get('marketshop_feature_box1_subtitle');
$marketshop_feature_box2_title = $this->config->get('marketshop_feature_box2_title');
$marketshop_feature_box2_subtitle = $this->config->get('marketshop_feature_box2_subtitle');
$marketshop_feature_box3_title = $this->config->get('marketshop_feature_box3_title');
$marketshop_feature_box3_subtitle = $this->config->get('marketshop_feature_box3_subtitle');
$marketshop_feature_box4_title = $this->config->get('marketshop_feature_box4_title');
$marketshop_feature_box4_subtitle = $this->config->get('marketshop_feature_box4_subtitle');

if((isset($marketshop_feature_box1_title[$lang]) && $marketshop_feature_box1_title[$lang] != '') || (isset($marketshop_feature_box1_subtitle[$lang]) && $marketshop_feature_box1_subtitle[$lang] != '') || (isset($marketshop_feature_box2_title[$lang]) && $marketshop_feature_box2_title[$lang] != '') || (isset($marketshop_feature_box2_subtitle[$lang]) && $marketshop_feature_box2_subtitle[$lang] != '') || (isset($marketshop_feature_box3_title[$lang]) && $marketshop_feature_box3_title[$lang] != '') || (isset($marketshop_feature_box3_subtitle[$lang]) && $marketshop_feature_box3_subtitle[$lang] != '') || (isset($marketshop_feature_box4_title[$lang]) && $marketshop_feature_box4_title[$lang] != '') || (isset($marketshop_feature_box4_subtitle[$lang]) && $marketshop_feature_box4_subtitle[$lang] != '')) { ?>
<div class="container">
<div class="custom-feature-box row">
<?php if($this->config->get('marketshop_feature_box1_status')== 1) { if((isset($marketshop_feature_box1_title[$lang]) && $marketshop_feature_box1_title[$lang] != '') || (isset($marketshop_feature_box1_subtitle[$lang]) && $marketshop_feature_box1_subtitle[$lang] != '')) { ?>
  <div class="<?php echo $class_fbox; ?>">
  <div class="feature-box fbox_1">
  <h3><?php echo $marketshop_feature_box1_title[$lang]; ?></h3>
  <p><?php echo $marketshop_feature_box1_subtitle[$lang]; ?></p>
  </div></div><?php } ?><?php } ?>
  
  <?php if($this->config->get('marketshop_feature_box2_status')== 1) { if((isset($marketshop_feature_box2_title[$lang]) && $marketshop_feature_box2_title[$lang] != '') || (isset($marketshop_feature_box2_subtitle[$lang]) && $marketshop_feature_box2_subtitle[$lang] != '')) { ?>
<div class="<?php echo $class_fbox; ?>">
  <div class="feature-box fbox_2">
  <h3><?php echo $marketshop_feature_box2_title[$lang]; ?></h3>
  <p><?php echo $marketshop_feature_box2_subtitle[$lang]; ?></p>
  </div></div><?php } ?><?php } ?>
  <?php if($this->config->get('marketshop_feature_box3_status')== 1) { if((isset($marketshop_feature_box3_title[$lang]) && $marketshop_feature_box3_title[$lang] != '') || (isset($marketshop_feature_box3_subtitle[$lang]) && $marketshop_feature_box3_subtitle[$lang] != '')) { ?>
  <div class="<?php echo $class_fbox; ?>">
  <div class="feature-box fbox_3">
  <h3><?php echo $marketshop_feature_box3_title[$lang]; ?></h3>
  <p><?php echo $marketshop_feature_box3_subtitle[$lang]; ?></p>
  </div></div><?php } ?><?php } ?>
  <?php if($this->config->get('marketshop_feature_box4_status')== 1) { if((isset($marketshop_feature_box4_title[$lang]) && $marketshop_feature_box4_title[$lang] != '') || (isset($marketshop_feature_box4_subtitle[$lang]) && $marketshop_feature_box4_subtitle[$lang] != '')) { ?>
  <div class="<?php echo $class_fbox; ?>">
  <div class="feature-box fbox_4">
  <h3><?php echo $marketshop_feature_box4_title[$lang]; ?></h3>
  <p><?php echo $marketshop_feature_box4_subtitle[$lang]; ?></p>
  </div></div><?php } ?><?php } ?>
  </div>
  </div>
  <?php } ?><?php } ?>
  
  <?php } ?><?php } else { ?>
  
<?php if($this->config->get('marketshop_feature_box_show_header_footer')== 1) {
$marketshop_feature_box_per_row = $this->config->get('marketshop_feature_box_per_row');
$marketshop_feature_box1_title = $this->config->get('marketshop_feature_box1_title');
$marketshop_feature_box1_subtitle = $this->config->get('marketshop_feature_box1_subtitle');
$marketshop_feature_box2_title = $this->config->get('marketshop_feature_box2_title');
$marketshop_feature_box2_subtitle = $this->config->get('marketshop_feature_box2_subtitle');
$marketshop_feature_box3_title = $this->config->get('marketshop_feature_box3_title');
$marketshop_feature_box3_subtitle = $this->config->get('marketshop_feature_box3_subtitle');
$marketshop_feature_box4_title = $this->config->get('marketshop_feature_box4_title');
$marketshop_feature_box4_subtitle = $this->config->get('marketshop_feature_box4_subtitle');

if((isset($marketshop_feature_box1_title[$lang]) && $marketshop_feature_box1_title[$lang] != '') || (isset($marketshop_feature_box1_subtitle[$lang]) && $marketshop_feature_box1_subtitle[$lang] != '') || (isset($marketshop_feature_box2_title[$lang]) && $marketshop_feature_box2_title[$lang] != '') || (isset($marketshop_feature_box2_subtitle[$lang]) && $marketshop_feature_box2_subtitle[$lang] != '') || (isset($marketshop_feature_box3_title[$lang]) && $marketshop_feature_box3_title[$lang] != '') || (isset($marketshop_feature_box3_subtitle[$lang]) && $marketshop_feature_box3_subtitle[$lang] != '') || (isset($marketshop_feature_box4_title[$lang]) && $marketshop_feature_box4_title[$lang] != '') || (isset($marketshop_feature_box4_subtitle[$lang]) && $marketshop_feature_box4_subtitle[$lang] != '')) { ?>
<div class="container">
<div class="custom-feature-box row">
<?php if($this->config->get('marketshop_feature_box1_status')== 1) { if((isset($marketshop_feature_box1_title[$lang]) && $marketshop_feature_box1_title[$lang] != '') || (isset($marketshop_feature_box1_subtitle[$lang]) && $marketshop_feature_box1_subtitle[$lang] != '')) { ?>
  <div class="<?php echo $class_fbox; ?>">
  <div class="feature-box fbox_1">
  <h3><?php echo $marketshop_feature_box1_title[$lang]; ?></h3>
  <p><?php echo $marketshop_feature_box1_subtitle[$lang]; ?></p>
  </div></div><?php } ?><?php } ?>
  
  <?php if($this->config->get('marketshop_feature_box2_status')== 1) { if((isset($marketshop_feature_box2_title[$lang]) && $marketshop_feature_box2_title[$lang] != '') || (isset($marketshop_feature_box2_subtitle[$lang]) && $marketshop_feature_box2_subtitle[$lang] != '')) { ?>
<div class="<?php echo $class_fbox; ?>">
  <div class="feature-box fbox_2">
  <h3><?php echo $marketshop_feature_box2_title[$lang]; ?></h3>
  <p><?php echo $marketshop_feature_box2_subtitle[$lang]; ?></p>
  </div></div><?php } ?><?php } ?>
  <?php if($this->config->get('marketshop_feature_box3_status')== 1) { if((isset($marketshop_feature_box3_title[$lang]) && $marketshop_feature_box3_title[$lang] != '') || (isset($marketshop_feature_box3_subtitle[$lang]) && $marketshop_feature_box3_subtitle[$lang] != '')) { ?>
  <div class="<?php echo $class_fbox; ?>">
  <div class="feature-box fbox_3">
  <h3><?php echo $marketshop_feature_box3_title[$lang]; ?></h3>
  <p><?php echo $marketshop_feature_box3_subtitle[$lang]; ?></p>
  </div></div><?php } ?><?php } ?>
  <?php if($this->config->get('marketshop_feature_box4_status')== 1) { if((isset($marketshop_feature_box4_title[$lang]) && $marketshop_feature_box4_title[$lang] != '') || (isset($marketshop_feature_box4_subtitle[$lang]) && $marketshop_feature_box4_subtitle[$lang] != '')) { ?>
  <div class="<?php echo $class_fbox; ?>">
  <div class="feature-box fbox_4">
  <h3><?php echo $marketshop_feature_box4_title[$lang]; ?></h3>
  <p><?php echo $marketshop_feature_box4_subtitle[$lang]; ?></p>
  </div></div><?php } ?><?php } ?>
  </div>
  </div>
  <?php } ?><?php } ?>
  <?php } ?>
<div class="container">
<?php if ($error) { ?>
<div class="warning"><?php echo $error ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>
<div id="notification"></div>
</div>