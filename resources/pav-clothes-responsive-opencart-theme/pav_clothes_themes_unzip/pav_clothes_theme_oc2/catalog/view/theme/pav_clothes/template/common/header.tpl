<?php 
/******************************************************
 * @package Pav Opencart Theme Framework for Opencart 1.5.x
 * @version 1.1
 * @author http://www.pavothemes.com
 * @copyright Copyright (C) Augus 2013 PavoThemes.com <@emai:pavothemes@gmail.com>.All rights reserved.
 * @license   GNU General Public License version 2
*******************************************************/
$config = $this->registry->get('config'); 
$themeName =  $config->get('config_template');
$themeConfig = (array)$config->get('themecontrol');
 

require_once(DIR_SYSTEM . 'pavothemes/loader.php');
$helper = ThemeControlHelper::getInstance( $this->registry, $themeName );
$helper->setDirection( $direction );
$helper->triggerUserParams( array('headerlayout','productlayout') );
/* Add scripts files */
$helper->addScript( 'catalog/view/javascript/jquery/jquery-2.1.1.min.js' );
$helper->addScript('catalog/view/javascript/jquery/magnific/jquery.magnific-popup.min.js');
$helper->addScript( 'catalog/view/javascript/bootstrap/js/bootstrap.min.js' );
$helper->addScript( 'catalog/view/javascript/common.js' );
$helper->addScript( 'catalog/view/theme/'.$themeName.'/javascript/common.js' );
if( isset($themeConfig['catalog_mode']) && $themeConfig['catalog_mode'] ){
  $cart = null;   
} 
$logoType = $helper->getConfig('logo_type','logo-theme');
$headerlayout = $helper->getConfig('header_layout');
$template_layout = $helper->getConfig('template_layout');
$skin = $helper->getConfig('skin');

if( $helper->getConfig('enable_paneltool') ){
  if( $helper->getParam('headerlayout') ){
    $headerlayout = $helper->getParam('headerlayout');
  }

  if($helper->getParam('layout')){
    $template_layout = $helper->getParam('layout');
  }

 
  $helper->addCss( 'catalog/view/theme/'.$themeName.'/stylesheet/paneltool.css' );
  $helper->addScript( 'catalog/view/javascript/jquery/colorpicker/js/colorpicker.js' );
  $helper->addCss( 'catalog/view/javascript/jquery/colorpicker/css/colorpicker.css' );
}

$helper->addScriptList( $scripts );

$ctheme=$helper->getConfig('customize_theme');
if( file_exists(DIR_TEMPLATE.$themeName.'/stylesheet/customize/'.$ctheme.'.css') ) {  
  $helper->addCss( 'catalog/view/theme/'.$themeName.'/stylesheet/customize/'.$ctheme.'.css'  );
}

if($direction == "rtl"){
   $helper->addCss( 'catalog/view/theme/'.$themeName.'/stylesheet/rtl/stylesheet-rtl.css'  );
   $helper->addCss( 'catalog/view/theme/'.$themeName.'/stylesheet/rtl/theme-responsive-rtl.css'  );
}

$helper->addCss( 'catalog/view/javascript/font-awesome/css/font-awesome.min.css' ); 
$helper->addCss('catalog/view/javascript/jquery/magnific/magnific-popup.css');
// -$helper->addCss( '//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700' ); 
 
$helper->addCssList( $styles ); 
$logoType = $helper->getConfig('logo_type','logo-theme');

?>
<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" class="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($helper->getCssLinks() as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach( $helper->getScriptFiles() as $script )  { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>

<?php if( isset($themeConfig['theme_width']) && $themeConfig['theme_width'] &&  $themeConfig['theme_width'] != 'auto' ) { ?>
   <style> #page .container{max-width:<?php echo $themeConfig['theme_width'];?>; width:auto;}</style>
 <?php } ?>

<?php if (isset($_SERVER['HTTPS']) && (($_SERVER['HTTPS'] == 'on') || ($_SERVER['HTTPS'] == '1'))) { ?>
  <link href='https://fonts.googleapis.com/css?family=Roboto:400,300,500,700,900,300italic,400italic,500italic,700italic,900italic,100italic,100' rel='stylesheet' type='text/css'>
<?php } else { ?>
  <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,500,700,900,300italic,400italic,500italic,700italic,900italic,100italic,100' rel='stylesheet' type='text/css'>
<?php } ?>
 
<?php echo $google_analytics; ?>
</head>
<body class="<?php echo $class; ?> <?php echo $helper->getPageClass();?> layout-<?php echo $template_layout; ?>">


  <div  class="row-offcanvas row-offcanvas-left">

  <div id="page">
<!-- header -->
<?php 
  if( file_exists($helper->getLayoutPath('common/header/'.$headerlayout.'.tpl')) ) {
    require( $helper->getLayoutPath('common/header/'.$headerlayout.'.tpl') );
  }else {
    require( ThemeControlHelper::getLayoutPath( 'common/header/default.tpl' ) );  
  } 
?> 
<!-- /header -->

<?php
/**
 * Slideshow modules
 */
$modules = $helper->getModulesByPosition( 'slideshow' ); 
if( $modules ){
?>
<div id="pav-slideshow" class="pav-slideshow hidden-xs">
    <?php foreach ($modules as $module) { ?>
      <?php echo $module; ?>
    <?php } ?>
</div>
<?php } ?>


<!-- sys-notification -->
<div id="sys-notification">
  <div class="container">
    <div id="notification"></div>
  </div>
</div>
<!-- /sys-notification -->

<?php
/**
 * Showcase modules
 * $ospans allow overrides width of columns base on thiers indexs. format array( column-index=>span number ), example array( 1=> 3 )[value from 1->12]
 */
$blockid = 'showcase';
$blockcls = '';
$ospans = array();
require( ThemeControlHelper::getLayoutPath( 'common/block-cols.tpl' ) );
?>

<?php
/**
 * promotion modules
 * $ospans allow overrides width of columns base on thiers indexs. format array( column-index=>span number ), example array( 1=> 3 )[value from 1->12]
 */
$blockid = 'promotion';
$blockcls = '';
$ospans = array();
require( ThemeControlHelper::getLayoutPath( 'common/block-cols.tpl' ) );
?> 