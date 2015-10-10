<?php 
/******************************************************
 * @package Pav Opencart Theme Framework for Opencart 1.5.x
 * @version 1.1
 * @author http://www.pavothemes.com
 * @copyright	Copyright (C) Augus 2013 PavoThemes.com <@emai:pavothemes@gmail.com>.All rights reserved.
 * @license		GNU General Public License version 2
*******************************************************/

require( DIR_TEMPLATE.$this->config->get('config_template')."/template/common/config.tpl" );

$ispagebuideactived = is_dir(DIR_SYSTEM.'/pavbuilder/');
?>
<?php echo $header; ?>

<?php  
	if ( $ispagebuideactived ){ 
		require_once( DIR_SYSTEM.'/pavbuilder/loader.php' );
?>
<?php 
		
		// require_once(DIR_SYSTEM . 'pavothemes/loader.php');
	$helper = ThemeControlHelper::getInstance( $this->registry, $this->config->get('config_template') );
	echo $helper->renderModule( 'module/pavbuilder', array('isfooter'=>0) );
?>

<?php 
	 

	} 
?>
 
<?php echo $footer; ?>